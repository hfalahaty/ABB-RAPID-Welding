MODULE A_Railing_Sync
    !You can find explanation about the variables along with drawings, on which the variables are marked, in <<sotware analysis handbook>> pages 1 and 10.
    !You can find this document on system's backup USB, inside of documents folder.


    
    LOCAL PERS num hashem:=0; !Just for Spacing, Also this is my signature in all my project!
    LOCAL PERS  num flag_st1:=0;
    LOCAL PERS  num flag_st2:=0;
    
    PROC Railing_Sync()

        TPErase;
        TPReadFK s, "Is it New Project on Station (1)?",
        "Yes",
        "No",
        "",
        "",
        ""; 
        IF s=1 THEN
            TPErase;
            TPReadFK s, "Activate guard on Station (1)",
            "Ok",
            "",
            "",
            "",
            ""; 
            ReadyToWork 1;
            DataEntry_St1_SS;
            MoveJ HomeSt1 ,v1000,fine,tWeldGun\WObj:=wobj0;    
        ENDIF

        TPErase;
        TPReadFK s, "Is it New Project on Station (2)?",
        "Yes",
        "No",
        "",
        "",
        ""; 
        IF s=1 THEN        
            TPErase;
            TPReadFK s, "Activate guard on Station (2)",
            "Ok",
            "",
            "",
            "",
            ""; 
            ReadyToWork 2;
            DataEntry_St2_SS; 
            MoveJ HomeSt2 ,v1000,fine,tWeldGun\WObj:=wobj0;      
        ENDIF
        
            flag_st1:=1;
            flag_st2:=1;

        WHILE flag_st1<>0 DO
            
            TPErase;
            TPReadFK s, "Activate guard on Station (1)",
            "Ok",
            "",
            "",
            "",
            ""; 
            DeactStn2;
            StartStn1;
            MoveJ HomeSt1 ,v1000,fine,tWeldGun\WObj:=wobj0;            
            WeldingFront_St1_SS;
            MoveJ HomeSt1 ,v1000,fine,tWeldGun\WObj:=wobj0;            
            
            IF flag_st2=1 THEN
                
                TPErase;
                TPReadFK s, "Activate guard on Station (2)",
                "Ok",
                "",
                "",
                "",
                ""; 
                DeactStn1;
                StartStn2;
                MoveJ HomeSt2 ,v1000,fine,tWeldGun\WObj:=wobj0;            
                WeldingFront_St2_SS;
                MoveJ HomeSt2 ,v1000,fine,tWeldGun\WObj:=wobj0;            
                
                TPErase;
                TPReadFK s, "Activate guard on Station (1)",
                "Ok",
                "",
                "",
                "",
                ""; 
                DeactStn2;
                StartStn1;
                MoveJ HomeSt1 ,v1000,fine,tWeldGun\WObj:=wobj0;            
                WeldingBack_St1_SS;
                MoveJ HomeSt1 ,v1000,fine,tWeldGun\WObj:=wobj0;            
                
                    TPErase;
                    TPReadFK s, "Do you want to continue on Station 1?",
                    "Yes",
                    "No",
                    "",
                    "",
                    ""; 
                    IF s=1 THEN
                        flag_st1:=1;
                    ELSE
                        flag_st1:=0;
                    ENDIF
                    
                TPErase;
                TPReadFK s, "Activate guard on Station (2)",
                "Ok",
                "",
                "",
                "",
                ""; 
                DeactStn1;
                StartStn2;
                MoveJ HomeSt2 ,v1000,fine,tWeldGun\WObj:=wobj0;            
                WeldingBack_St2_SS;
                MoveJ HomeSt2 ,v1000,fine,tWeldGun\WObj:=wobj0;            
                
                    TPReadFK s, "Do you want to continue on Station 2?",
                    "Yes",
                    "No",
                    "",
                    "",
                    ""; 
                    IF s=1 THEN
                        flag_st2:=1;
                    ELSE
                        flag_st2:=0;
                    ENDIF
                    
            ELSE
                
                TPErase;
                TPReadFK s, "Activate guard on Station (1)",
                "Ok",
                "",
                "",
                "",
                ""; 
                DeactStn2;
                StartStn1;
                MoveJ HomeSt1 ,v1000,fine,tWeldGun\WObj:=wobj0;            
                WeldingBack_St1_SS;
                MoveJ HomeSt1 ,v1000,fine,tWeldGun\WObj:=wobj0;            
                    TPReadFK s, "Do you want to continue on Station 1?",
                    "Yes",
                    "No",
                    "",
                    "",
                    ""; 
                    IF s=1 THEN
                        flag_st1:=1;
                    ELSE
                        flag_st1:=0;
                    ENDIF
            ENDIF
        ENDWHILE
        
        WHILE flag_st2<>0 DO
            
            TPErase;
            TPReadFK s, "Activate guard on Station (2)",
            "Ok",
            "",
            "",
            "",
            ""; 
            DeactStn1;
            StartStn2;
            MoveJ HomeSt2 ,v1000,fine,tWeldGun\WObj:=wobj0;            
            WeldingFront_St2_SS;
            WeldingBack_St2_SS;
            MoveJ HomeSt2 ,v1000,fine,tWeldGun\WObj:=wobj0;            
            WeldingBack_St2_SS;
            
                TPReadFK s, "Do you want to continue on Station 2?",
                "Yes",
                "No",
                "",
                "",
                ""; 
                IF s=1 THEN
                    flag_st2:=1;
                ELSE
                    flag_st2:=0;
                ENDIF
                
        ENDWHILE
        
    ENDPROC
ENDMODULE