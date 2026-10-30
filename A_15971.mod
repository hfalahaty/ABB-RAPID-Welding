MODULE A_15971
    LOCAL PERS num hashem:=0; !Just for Spacing, Also this is my signature in all my project!

    !**************************************************************************************************************    
    !****************************************   Project dimentions    *********************************************    
    !**************************************************************************************************************    
    
    LOCAL PERS num t1:=10;

    LOCAL PERS num OdY{4}:=[-95,130,320,350];
    LOCAL PERS num OdZ{4}:=[0,-880,-985,-1103];

    LOCAL PERS num Counter:=17;
    
    !**************************************************************************************************************    
    !********************************************   Robtargets    *************************************************    
    !**************************************************************************************************************    
   
    !******************************************  Search robtargets    *****************************************    

    LOCAL PERS robtarget RTS0 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[2313.93,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RTS1 := [[0,0,0],[0.7,0.7,0,0],[0,-1,1,0],[1800.93,9E+09,9E+09,9E+09,0.000926984,9E+09]];!wobjUse\ using for Weld_3G_E
    
    !******************************************  2G welding robtargets    *****************************************    
    
    LOCAL PERS robtarget RT2G1 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[1810,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    
    !******************************************  2F welding robtargets    *****************************************    
    
    LOCAL PERS robtarget RT2F1 := [[0,0,0],[0.68,-0.35,-0.26,0.59],[0,0,-1,0],[1810.93,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT2F2 := [[0,0,0],[0.61,-0.22,-0.4,0.65],[0,-3,1,0],[1810.93,9E+09,9E+09,9E+09,-0.000212344,9E+09]];!wobjUse\ using for Weld_3G_W
    
    LOCAL PERS robtarget RT2F3 := [[0,0,0],[-0.35,0.68,0.59,-0.26],[0,0,-1,0],[1810.93,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT2F4 := [[0,0,0],[-0.22,0.61,0.65,-0.4],[1,1,-2,0],[1810.93,9E+09,9E+09,9E+09,-0.000127949,9E+09]];!wobjUse\ using for Weld_3G_W

    !******************************************  3F welding robtargets    *****************************************    
    
    LOCAL PERS robtarget RT3F1 := [[0,0,0],[0.73,-0.45,-0.09,0.5],[0,-1,-1,0],[1410.93,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    !LOCAL PERS robtarget RT3F2 := [[0,0,0],[0.87,0.27,-0.39,0.15],[0,0,-2,0],[1810.93,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget RT3F2 := [[0,0,0],[0.85,0.21,-0.4,0.25],[0,0,-2,0],[1810.93,9E+09,9E+09,9E+09,-20,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    
    LOCAL PERS robtarget RT3F3 := [[0,0,0],[-0.45,0.73,0.5,-0.09],[0,-1,-1,0],[1810.93,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    !LOCAL PERS robtarget RT3F4 := [[0,0,0],[0.27,0.87,0.15,-0.39],[0,0,-2,0],[1810.93,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget RT3F4 := [[0,0,0],[0.21,0.85,0.25,-0.4],[0,0,-2,0],[1610.93,9E+09,9E+09,9E+09,-20,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    
    !**************************************************************************************************************    
    !********************************************   WorkObjects   *************************************************    
    !**************************************************************************************************************    
    
    LOCAL PERS pos WO1 :=[360,-87.69,2230.9];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget WO2 := [[360,-61.69,2223.34],[0.633023,-0.171879,-0.411113,0.633029],[1,-2,0,0],[2370.72,9E+09,9E+09,9E+09,-0.00147826,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget WO3 := [[360,16.94,2221.42],[0.633023,-0.17188,-0.411114,0.633028],[1,-2,0,0],[2370.72,9E+09,9E+09,9E+09,-0.00135167,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget WO4 := [[360,72.05,2226.08],[0.540526,-0.373601,-0.596502,0.460912],[1,-3,2,0],[2370.72,9E+09,9E+09,9E+09,-0.00143607,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget WO5 := [[360,-65.41,2112.69],[0.540525,-0.373604,-0.596502,0.460911],[1,-4,3,0],[2370.72,9E+09,9E+09,9E+09,-0.00143607,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget WO6 := [[360,63,1812.47],[0.540522,-0.373603,-0.596502,0.460914],[0,-4,2,0],[1454.84,9E+09,9E+09,9E+09,-0.00143607,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget WO7 := [[360,100.92,1665.78],[0.540524,-0.373603,-0.5965,0.460914],[0,-4,2,0],[1454.84,9E+09,9E+09,9E+09,-0.00147826,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget WO8 := [[360,-165.43,1669.43],[0.540525,-0.373601,-0.596499,0.460915],[0,-4,2,0],[1454.84,9E+09,9E+09,9E+09,-0.00143607,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget WOB1 := [[360,-121.2,2225.88],[0.540531,-0.373649,-0.596483,0.460892],[0,-4,2,0],[1454.84,9E+09,9E+09,9E+09,-0.000549922,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget WOB2 := [[360,40.74,2227.88],[0.540527,-0.373625,-0.59649,0.460905],[0,-4,2,0],[1454.84,9E+09,9E+09,9E+09,-0.00101409,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget WOB3 := [[360,13.94,2112.02],[0.540526,-0.37365,-0.596485,0.460894],[0,-4,2,0],[1454.84,9E+09,9E+09,9E+09,-0.000634317,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget WOB4 := [[360,-120.35,1815.58],[0.540526,-0.373651,-0.596485,0.460893],[0,-4,2,0],[1454.84,9E+09,9E+09,9E+09,-0.000549922,9E+09]];!wobjUse\ using for Weld_3G_W
  
    LOCAL PERS wobjdata wobjSt2:=[FALSE,FALSE,"STN2",[[0,0,0],[1,0,0,0]],[[75,-478.5,833],[1,0,0,0]]];

    LOCAL PERS wobjdata wMirr:=[FALSE,FALSE,"STN2",[[0,0,0],[0.707107,0.707107,0,0]],[[0,0,-13],[1,0,0,0]]];
    
    PROC Main_15971()    
        
        VAR num i;
        VAR num s;
        
        VAR pose RTSz;
        VAR pose myZ;
        VAR pose RTSy;
        VAR pose myY;
        VAR num Z_Dis;
        
        
            StartStn2;
            
            
        WHILE s<>5 DO

            myGunClean;

            SetDO doExhaustStn2,1;

            PDispSet [[0,0,odz{1}] , [1,0,0,0]];  
            Iner_NW 1,FALSE,TRUE;
            Iner_SW 1,TRUE;
            PDispOff;
            
            SetDO doExhaustStn2,0;
            
            myGunClean;
            
            i:=2;
            
            WHILE i<5 DO
                Z_Dis:=odz{i};
                
                PDispSet [[0,0,Z_Dis+10] , [1,0,0,0]];            
                RTS0.extax.eax_a:=-1200-Z_Dis+wobjUse.oframe.trans.z;
                MoveJ Offs(RTS0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;
                MoveJ Offs(RTS0,50,80,0), v1000, fine, tWeldGun\WObj:=wobjUse;
                Search_1D RTSy ,Offs(RTS0,-55,80,30) , Offs(RTS0,-55,110,30), v200, tWeldGun\WObj:=wobjUse;
                Search_1D RTSz ,Offs(RTS0,-55,80,30) , Offs(RTS0,-55,80,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;

                SetDO doExhaustStn2,1;
                
                IF i=6 THEN
                    PDispSet [[0,RTSz.trans.y+30-14,RTSz.trans.z+Z_dis+10-15] , [1,0,0,0]];            
                ELSE
                    PDispSet [[0,RTSz.trans.y+30-14,RTSz.trans.z+Z_dis+10-14] , [1,0,0,0]];            
                ENDIF
                Movel Offs(RTS0,-50,80,50), v1000, fine, tWeldGun\WObj:=wobjUse;
                Movej Offs(RTS0,200,0,50), v1000, fine, tWeldGun\WObj:=wobjUse;
                Iner_NE 2;
                Iner_SE 2;

                IF i=6 THEN
                    PDispSet [[0,RTSz.trans.y+30-14,RTSz.trans.z+Z_dis-15] , [1,0,0,0]];            
                ELSE
                    PDispSet [[0,RTSz.trans.y+30-14,RTSz.trans.z+Z_dis-14] , [1,0,0,0]];            
                ENDIF
                MoveJ Offs(RTS0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;
                Iner_NW 2,FALSE,FALSE;
                Iner_SW 2,FALSE;
                PDispOff;

                SetDO doExhaustStn2,0;
            
                myGunClean; 
                i:=i+1;

            ENDWHILE

            MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;
            
            s:=0;
            TPReadFK s, "Turn your part",
                "ok",
                "",
                "",
                "",
                "";
            
            myGunClean;

            SetDO doExhaustStn2,1;

            PDispSet [[0,0,odz{1}] , [1,0,0,0]];            
            Iner_NW 1,TRUE,TRUE;
            Iner_SW 1,FALSE;
            PDispOff;
            
            SetDO doExhaustStn2,0;
            
            myGunClean;
            
            i:=2;
            WHILE i<5 DO
                
                Z_Dis:=odz{i};
                
                PDispSet [[0,0,Z_Dis+10] , [1,0,0,0]];            
                RTS0.extax.eax_a:=-1200-Z_Dis+wobjUse.oframe.trans.z;
                MoveJ Offs(RTS0,200,0,50), v1000, fine, tWeldGun\WObj:=wobjUse;
                Search_1D RTSy ,Offs(RTS0,-55,80,30) , Offs(RTS0,-55,110,30), v200, tWeldGun\WObj:=wobjUse;
                Search_1D RTSz ,Offs(RTS0,-55,80,30) , Offs(RTS0,-55,80,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;

                SetDO doExhaustStn2,1;

                IF i=3 THEN
                    PDispSet [[0,RTSz.trans.y+30-14,RTSz.trans.z+Z_dis+10-15] , [1,0,0,0]];            
                ELSE
                    PDispSet [[0,RTSz.trans.y+30-14,RTSz.trans.z+Z_dis+10-14] , [1,0,0,0]];            
                ENDIF
                MoveJ Offs(RTS0,0,80,50), v1000, fine, tWeldGun\WObj:=wobjUse;
                MoveJ Offs(RTS0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;
                Iner_NE 2;
                Iner_SE 2;
                !PDispOff;

                IF i=3 THEN
                    PDispSet [[0,RTSz.trans.y+30-14,RTSz.trans.z+Z_dis-15] , [1,0,0,0]];            
                ELSE
                    PDispSet [[0,RTSz.trans.y+30-14,RTSz.trans.z+Z_dis-14] , [1,0,0,0]];            
                ENDIF                MoveJ Offs(RTS0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;
                Iner_NW 2,FALSE,FALSE;
                Iner_SW 2,FALSE;
                !PDispOff;

                SetDO doExhaustStn2,0;

                myGunClean;       
                i:=i+1;
                
            ENDWHILE

            MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;

            Counter:=Counter+1;
            
            TPErase;
            TPWrite "Number of completed parts is: " \Num:=Counter;
            TPReadFK s, "Do you want to make new one?",
                "Yes",
                "",
                "",
                "",
                "No, It's Finished";            
            
        ENDWHILE
            
    ENDPROC
    
    LOCAL PROC Iner_NW(num position, bool Splate, bool Tplate)

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        VAR robtarget p3;
        VAR robtarget p4;
        VAR robtarget p5;
        VAR robtarget p6;
        
        VAR num x;
        VAR num y;
        VAR num r;
        
        x:=55;
        y:=220/2;
        r:=15;
        
        RT2F1.extax.eax_a:=-600+wobjUse.oframe.trans.z;
        RT2F1.extax.eax_a:=-600+wobjUse.oframe.trans.z;
        RT3F1.extax.eax_a:=-1000+wobjUse.oframe.trans.z;
        RT3F2.extax.eax_a:=-1000+wobjUse.oframe.trans.z;
        
        p0:=Offs(RT3F1,-5,y-2,0-2);
        p1:=Offs (p0,-x-10+r,0,0);
        p2:=Offs (p1,-r/2,-r/2,0);
        
        p3:=Offs (RT2F1,-x-10,y-r,0);
        p4:=Offs (p3,-5,-(y-r),0);
        
        p5:=Offs (RT2F2,-x-10-5,-y+r,0);
        !p5:=RT2F2;
        
        p6:=Offs (RT3F2,-10,y+10,0);
        
        IF Tplate=TRUE THEN

            MoveJ Offs(p6,200,20,-50),v1000,z50,tWeldGun\WObj:=wobjUse;
            ArcLStart Offs(p6 ,5,0,0), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcL Offs(p6 ,0,0,0), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(p6 ,-120,0,0), v200, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
    
        ENDIF
        
            MoveJ Offs(p0,200,0,-20),v1000,z50,tWeldGun\WObj:=wobjUse;
            
        !Welding
        IF position=1 THEN
            ArcLStart Offs(p0,2,0,-4), v200, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
            ArcL Offs(p1,0,0,-4), v200, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
            ArcC p2, p3, v500, smUse, weld_2F2G_a8, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd p5, v200, smUse, weld_2F2G_a6\Weave:=weave2F_West, fine, tWeldGun\WObj:=wobjUse;
            MoveJ Offs(p5,200,50,-50),v1000,z50,tWeldGun\WObj:=wobjUse;
            
            IF Splate=TRUE THEN

                MoveJ Offs(p0,200,0,-845),v1000,z50,tWeldGun\WObj:=wobjUse;

                ArcLStart Offs(p0,0,12,-840), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
                ArcLEnd Offs(p0,0,12,-740), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
                ArcLStart Offs(p0,0,12,-482), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
                ArcLEnd Offs(p0,0,12,-382), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
                ArcLStart Offs(p0,0,12,-125), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
                ArcLEnd Offs(p0,0,12,-25), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
                
            ENDIF
            
        ELSE
            ArcLStart offs(p0,-2,0,0), v200, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
            ArcL offs(p0,-4,0,0), v200, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
            !ArcLEnd offs(p0,-x+15,0,0), v200, smUse, WDtrk3pulsfall, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd offs(p0,-x+15,0,0), v200, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;

            Movel Offs(p0,100,0,-20),v600,z50,tWeldGun\WObj:=wobjUse;

            ArcLStart offs(p4,10+2,y-20,-7), v200, smUse, weld_2F2G_a6\Weave:=weave2F_West, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd offs(p5,10+2,0,-7), v200, smUse, weld_2F2G_a6\Weave:=weave2F_West, fine, tWeldGun\WObj:=wobjUse;

        ENDIF
        
        Movel Offs(p4,200,100,-50),v1000,z50,tWeldGun\WObj:=wobjUse;

    ENDPROC
    
    LOCAL PROC Iner_SW(num position, bool Splate)

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        VAR robtarget p3;
        VAR robtarget p4;
        
        VAR num x;
        VAR num y;
        VAR num r;
        
        x:=55;
        y:=220/2;
        r:=15;
        
        RT2F2.extax.eax_a:=-600+wobjUse.oframe.trans.z;
        RT3F2.extax.eax_a:=-600+wobjUse.oframe.trans.z;
        RT3F2.extax.eax_e:=-20;
        
        p0:=Offs(RT3F2,-10,-y,0);
        p1:=Offs (p0,-x-6+r,0,0);
        p2:=Offs (p1,-r/2,r/2,0);
        
        !p3:=Offs (RT3F2,-x-17,-y+r,0);
        p3:=Offs (RT3F2,-x-17,-y+r,0);
        
        p4:=Offs (p3,-5,0,0);

        !p5:=RT2F2;
        !p3:=RT3F2;
        
        MoveJ Offs(p0,200,0,-20),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        IF position=1 THEN
            ArcLStart offs(p0,0,-10,0), v200, smUse,  weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
            ArcL p0, v200, smUse,  weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
            ArcL p1, v200, smUse,  weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
            ArcC p2,p3, v500, smUse, weld_2F2G_a8, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(p4,0,0,0), v200, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
            MoveJ Offs(p0,200,0,-20),v1000,z50,tWeldGun\WObj:=wobjUse;     
            
            IF Splate=TRUE THEN

                MoveJ Offs(p0,200,0,-845),v1000,z50,tWeldGun\WObj:=wobjUse;

                ArcLStart Offs(p0,0,-10,-840), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
                ArcLEnd Offs(p0,0,-10,-740), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
                ArcLStart Offs(p0,0,-10,-482), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
                ArcLEnd Offs(p0,0,-10,-382), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
                ArcLStart Offs(p0,0,-10,-125), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
                ArcLEnd Offs(p0,0,-10,-25), v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
                
            ENDIF
            
            
        ELSE
            ArcLStart offs(p0,5,0,0), v200, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
            ArcL offs(p0,3,0,0), v200, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd offs(p0,-x+22,0,0),v200, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
            !ArcLStart offs(p0,5,0,0), v500, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
            !ArcLEnd offs(p0,-x+22,0,0), v500, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

            Movel Offs(p0,200,100,-50),v1000,z50,tWeldGun\WObj:=wobjUse;
        ENDIF
        
    ENDPROC

    LOCAL PROC Iner_NE(num position)

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        VAR robtarget p3;
        VAR robtarget p4;
        
        VAR num x;
        VAR num y;
        VAR num r;
        
        x:=55;
        y:=220/2;
        r:=15;
        
        RT2F3.extax.eax_a:=-600+wobjUse.oframe.trans.z;
        RT2F4.extax.eax_a:=-600+wobjUse.oframe.trans.z;
        RT3F3.extax.eax_a:=-600+wobjUse.oframe.trans.z;
        
        p0:=Offs(RT3F3,-8,y,0);
        p1:=Offs (p0,-x+r,0,0);
        p2:=Offs (p1,-r/2,-r/2,0);
        
        p3:=Offs (RT2F3,-x-10,y-25,0);
        
        p4:=Offs (RT2F4,-x-10,-95,0);
!        p4:=RT2F4;
        
        MoveJ Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(p0,50,0,20),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        IF position=1 THEN
            ArcLStart p0, v200, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
            ArcL p1, v200, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
            ArcC p2, p3, v1000, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd p4, v200, smUse, weld_2F2G_a6\Weave:=weave2F_East, fine, tWeldGun\WObj:=wobjUse;
        ELSE
            ArcLStart offs(p0,-2,-2,0), v200, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
            ArcL offs(p0,0,0,0), v200, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd offs(p0,-x+15,-2,0), v200, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
            !ArcLStart offs(p0,-2,-2,2), v500, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
            !ArcLEnd offs(p0,-x+15,-2,2), v500, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

            !Movel Offs(p0,100,0,20),v1000,z50,tWeldGun\WObj:=wobjUse;

            ArcLStart offs(p3,3,0,3), v200, smUse, weld_2F2G_a6\Weave:=weave2F_East, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd offs(p4,3,0,3), v200, smUse, weld_2F2G_a6\Weave:=weave2F_East, fine, tWeldGun\WObj:=wobjUse;

        ENDIF
        
        Movel Offs(p4,200,100,50),v1000,z50,tWeldGun\WObj:=wobjUse;

    ENDPROC
    
    LOCAL PROC Iner_SE(num position)

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        VAR robtarget p3;
        VAR robtarget p4;
        
        VAR num x;
        VAR num y;
        VAR num r;
        
        x:=55;
        y:=220/2;
        r:=15;
        
        RT2F4.extax.eax_a:=-600+wobjUse.oframe.trans.z;
        RT3F4.extax.eax_a:=-800+wobjUse.oframe.trans.z;
        RT3F4.extax.eax_e:=-20;
        
        p0:=Offs(RT3F4,-8,-y-3,0-3);
        p1:=Offs (p0,-x-6+r,0,0);
        p2:=Offs (p1,-r/2,r/2,0);
        
        p3:=Offs (RT2F4,-x-3-12,-y+r,0);
        p4:=Offs (p3,0,(y-r),0);
        
        MoveJ Offs(p0,200,0,20),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        IF position=1 THEN
            ArcLStart p0, v200, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
            ArcL p1, v200, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
            ArcC p2,p3, v1000, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
            ArcL offs(p4,0,0,0), v200, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd p4, v200, smUse, weld_2F2G_a6\Weave:=weave2F_East, fine, tWeldGun\WObj:=wobjUse;            
        ELSE
            ArcLStart offs(p0,0,0,0), v200, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
            ArcL offs(p0,-2,0,0), v200, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd offs(p0,-x+15,0,0), v200, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
            !ArcLStart offs(p0,0,0,1), v500, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
            !ArcLEnd offs(p0,-x+15,0,1), v500, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

            Movel Offs(p0,100,0,50),v1000,z50,tWeldGun\WObj:=wobjUse;

        ENDIF
        
        
        Movel Offs(p4,200,100,50),v1000,z50,tWeldGun\WObj:=wobjUse;

    ENDPROC

    PROC myGunClean()
        
        !MoveJ overSt2, v1000, z50, tWeldGun\WObj:=wRot2;
        !MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;
        GunClean;
        StartStn2;
        MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;
        SetWobjUse wobjSt2,199.38,-195.26-2,2422.93-12;
        PulseDO\High\PLength:=1,soAwManFeedRev;
        
    ENDPROC  

ENDMODULE