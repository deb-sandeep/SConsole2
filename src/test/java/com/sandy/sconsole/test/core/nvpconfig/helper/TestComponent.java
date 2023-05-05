package com.sandy.sconsole.test.core.nvpconfig.helper;

import com.sandy.sconsole.core.nvpconfig.annotation.NVPConfig;
import com.sandy.sconsole.core.nvpconfig.annotation.NVPConfigGroup;
import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

@Component
@NVPConfigGroup
public class TestComponent {

    @Getter
    @Setter
    @NVPConfig
    private String configKeyA = "initial_value" ;

    @Getter
    @NVPConfig
    private boolean booleanFlag = true ;
}