package com.sandy.sconsole.api.master.helper;

import com.sandy.sconsole.core.util.StringUtil;
import com.sandy.sconsole.dao.master.Book;
import com.sandy.sconsole.dao.master.Chapter;
import com.sandy.sconsole.dao.master.ProblemType;
import com.sandy.sconsole.dao.master.repo.BookRepo;
import com.sandy.sconsole.dao.master.repo.ProblemTypeRepo;
import com.sandy.sconsole.dao.master.repo.SubjectRepo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

import static com.sandy.sconsole.api.master.helper.BookMeta.*;

@Slf4j
@Component
public class BookMetaValidator {
    
    @Autowired SubjectRepo     subjectRepo     = null ;
    @Autowired BookRepo        bookRepo        = null ;
    @Autowired ProblemTypeRepo problemTypeRepo = null ;

    public void validateBookMeta( BookMeta meta ) {
        
        // 1 - Perform a structural validation (mandatory fields)
        validateMandatoryFields( meta ) ;
        
        // 2 - Check if subject exits. If not, there is no need to
        //     validate further. The entire file is defunct.
        boolean subjectExists = validateSubjectExists( meta.getSubject(),
                                                       meta.getValidationMessages() ) ;
        
        if( subjectExists ) {
            // 3 - If subject exists, validate the chapter metadata values.
            //     This recursively validates the problem cluster metadata too.
            for( BookMeta.ChapterMeta chapterMeta : meta.getChapters() ) {
                validateChapterMetaValues( chapterMeta ) ;
            }

            // 4 - Check if the book exists. If it does, check if the chapter
            //     metadata has changed. If it has, then the differences need
            //     to be approved by the user.
            Book book = validateBookExists( meta ) ;
            if( book != null ) {
                validateChapterDiscrepancy( meta.getChapters(),
                                            book.getChapters(),
                                            meta.getValidationMessages() ) ;
            }
        }
    }
    
    private void validateMandatoryFields( BookMeta meta ) {
        
        ValidationMessages msgs = meta.getValidationMessages() ;
        
        if( meta.getSubject() == null ) {
            msgs.addError( "subject", "Attribute is missing" ) ;
        }
        
        if( meta.getSeries() == null ) {
            msgs.addWarning( "series", "Attribute is missing" ) ;
        }
        
        if( meta.getName() == null ) {
            msgs.addError( "name", "Attribute is missing" ) ;
        }
        
        if( meta.getAuthor() == null ) {
            msgs.addError( "author", "Attribute is missing" ) ;
        }
        
        if( meta.getShortName() == null ) {
            msgs.addError( "shortName", "Attribute is missing" ) ;
        }
        
        for( BookMeta.ChapterMeta chapter : meta.getChapters() ) {
            
            if( chapter.getTitle() == null ) {
                chapter.getValidationMessages().addError( "title", "Attribute is missing" ) ;
            }
            for( BookMeta.ExerciseMeta exercise : chapter.getExercises() ) {
                
                if( exercise.getName() == null ) {
                    exercise.getValidationMessages().addError( "name", "Attribute is missing" ) ;
                }
            }
        }
    }
    
    private boolean validateSubjectExists( String subject, ValidationMessages msgs ) {
        
        boolean present = subjectRepo.findById( subject ).isPresent();
        if( !present ) {
            msgs.addError( "subject", "Subject not registered" ) ;
        }
        return present ;
    }
    
    private Book validateBookExists( BookMeta meta ) {
        
        ValidationMessages msgs = meta.getValidationMessages() ;
        String bookId = meta.getSubject() + " > " + meta.getName() + " by " + meta.getAuthor() ;
        Book book = bookRepo.findBook( meta.getSubject(), meta.getName(), meta.getAuthor() ) ;
        
        if( book == null ) {
            msgs.addInfo( "name", "New book will be registered" ) ;
        }
        else {
            msgs.addWarning( "name", "Book exists and will be overwritten" ) ;
        }
        return book ;
    }
    
    private void validateChapterDiscrepancy( List<ChapterMeta> chapters,
                                             Set<Chapter> existingChapters,
                                             ValidationMessages msgs ) {
        
        log.error( "TODO: **** This function needs implementation after a new book save." );
    }
    
    private void validateChapterMetaValues( ChapterMeta meta ) {
        
        ValidationMessages msgs = meta.getValidationMessages() ;
        String[] titleParts = meta.getTitle().split( "-" ) ;
        
        if( titleParts.length < 2 ) {
            msgs.addError( "title", "Title format is incorrect. Format: <number> - <chapter title>" ) ;
        }
        else {
            try {
                Integer.parseInt( titleParts[0].trim() ) ;
            }
            catch( Exception e ) {
                msgs.addError( "title", "Chapter number is not a number" ) ;
            }
            
            if( StringUtil.isEmptyOrNull( titleParts[1] ) ) {
                msgs.addError( "title", "Chapter title is missing" ) ;
            }
        }
        
        for( ExerciseMeta exercise : meta.getExercises() ) {
            validateExerciseMetaValues( exercise ) ;
        }
    }
    
    private void validateExerciseMetaValues( ExerciseMeta exercise ) {
        
        ValidationMessages msgs = exercise.getValidationMessages() ;
        
        if( StringUtil.isEmptyOrNull( exercise.getName() ) ) {
            msgs.addError( "name", "Attribute is missing or empty" ) ;
        }
        
        if( exercise.getProblems().isEmpty() ) {
            msgs.addError( "title", "No problems defined" ) ;
        }
        
        for( String problemClusterMeta : exercise.getProblems() ) {
            ProblemCluster problemCluster ;
            problemCluster = parseAndValidateProblemCluster( problemClusterMeta,
                                                             exercise.getValidationMessages() ) ;
            
            exercise.getProblemClusters().add( problemCluster ) ;
        }
    }
    
    // Problem cluster meta is of the format
    // <SUB|SCA|MCA|MMT|LCT|NVT> <LCT_SEQ>? <START_COUNT>-<END_COUNT>
    private ProblemCluster parseAndValidateProblemCluster( String data, ValidationMessages msgs ) {
        
        ProblemCluster cluster = new ProblemCluster( data ) ;
        
        // 1 - Check if metadata has the right number of fields
        String[] parts = data.split( " " ) ;
        if( parts.length < 2 || parts.length > 3) {
            msgs.addError( data, "Invalid problem cluster format" ) ;
            return cluster ;
        }
        
        // 2 - Check if the problem type specified is valid
        ProblemType type = problemTypeRepo.findById( parts[0].trim() ).orElse( null ) ;
        if( type == null ) {
            msgs.addError( data, "Invalid problem type - " + parts[0] ) ;
            return cluster ;
        }
        else {
            cluster.setType( type.getProblemType() ) ;
        }
        
        // 3 - If we are dealing with LCT, check if the sequence is present
        if( type.getProblemType().equals( "LCT" )  ) {
            if( parts.length != 3 ) {
                msgs.addError( data, "LCT problem type should have 3 parts" ) ;
                return cluster ;
            }
            else {
                cluster.setLctSequence( parts[1].trim() );
            }
        }
        
        // 4 - Parse the problem range. In case only one number is present,
        //     it means the cluster has only one problem. This is rare, so we
        //     issue a warning.
        String[] rangeParts = parts[parts.length-1].split( "-" ) ;
        int startIndex, endIndex ;
        
        try {
            startIndex = Integer.parseInt( rangeParts[0].trim() ) ;
        }
        catch( Exception e ) {
            msgs.addError( data, "Problem range boundary is not integer" ) ;
            return cluster ;
        }
        
        cluster.setStartIndex( startIndex ) ;
        if( rangeParts.length == 1 ) {
            msgs.addWarning( data, "Cluster has only one problem" ) ;
            cluster.setEndIndex( cluster.getStartIndex() ) ;
        }
        else {
            try {
                endIndex = Integer.parseInt( rangeParts[1].trim() ) ;
            }
            catch( Exception e ) {
                msgs.addError( data, "Problem range boundary is not integer" ) ;
                return cluster ;
            }
            cluster.setEndIndex( endIndex ) ;
        }
        return cluster ;
    }
}
