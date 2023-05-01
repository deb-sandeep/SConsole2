package com.sandy.sconsole.screen.clock.tile;

import com.sandy.sconsole.core.ui.Screen;
import com.sandy.sconsole.core.ui.uiutil.StringTile;
import com.sandy.sconsole.core.ui.uiutil.UITheme;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class DateTile extends StringTile {

    private static final SimpleDateFormat SDF = new SimpleDateFormat( "dd MMMM, EEEE" ) ;

    public DateTile( Screen parent, UITheme theme, int fontSize ) {
        super( parent, theme, fontSize ) ;
    }

    public void updateDisplay( Calendar calendar ) {
        setLabelText( SDF.format( calendar.getTime() ) ) ;
    }
}
