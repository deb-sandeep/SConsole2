package com.sandy.sconsole.core.ui.screen.util;

import com.sandy.sconsole.core.ui.screen.Tile;
import com.sandy.sconsole.core.ui.uiutil.UITheme;
import lombok.extern.slf4j.Slf4j;

import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.*;
import java.io.File;
import java.io.IOException;

@Slf4j
public class ImageTile extends Tile {

    private JLabel imgLabel = null ;

    public ImageTile( UITheme theme ) {
        super( theme, false ) ;
        setUpUI() ;
    }

    private void setUpUI() {
        imgLabel = super.getTemplateLabel() ;
        super.setLayout( new BorderLayout() ) ;
        super.add( imgLabel, BorderLayout.CENTER ) ;
    }

    public void setImage( File imgFile ) {
        if( imgFile == null ) {
            log.info( "- Image file is null." );
        }
        else if( imgFile.exists() ) {
            try {
                imgLabel.setIcon( new ImageIcon( ImageIO.read( imgFile ) ) ) ;
            }
            catch( IOException e ) {
                log.error( "Could not set image.", e ) ;
            }
        }
        else {
            log.error( "- Image file {} does not exist.", imgFile.getAbsolutePath() );
        }
    }
}