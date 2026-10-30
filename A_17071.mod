MODULE A_17071
    
    LOCAL PERS num hashem:=0; !Just for Spacing, Also this is my signature in all my project!
    

    
    !**************************************************************************************************************    
    !********************************************Variables Dimention*************************************************    
    !**************************************************************************************************************    
    LOCAL PERS robtarget RT0 := [[-104.62,110.03,579.77],[0.500002,-0.500016,-0.49999,0.499993],[0,0,-1,0],[2199.99,9E+09,9E+09,9E+09,0.000167432,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT1 := [[0,0,0],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT2 := [[0,0,0],[0.76,-0.45,-0.09,0.47],[0,0,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget RT3 := [[0,0,0],[0.45,0.76,-0.47,-0.09],[0,0,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[0,0,0],[0.45,-0.76,-0.47,0.09],[0,0,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E

    LOCAL PERS robtarget RC1 := [[0,0,0],[0.808343,-0.278639,-0.0922739,0.510321],[1,-1,0,0],[1900,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RC2 := [[0,0,0],[0.44041,0.76422,-0.471014,-0.0123115],[0,0,-3,0],[2500,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget RC3 := [[0,0,0],[0.44041,-0.76422,-0.471014,0.0123115],[0,0,-1,0],[1900,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RC4 := [[0,0,0],[0.808343,0.278639,-0.0922739,-0.510321],[1,-1,-2,0],[1500,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E

    LOCAL PERS robtarget P5RT0 := [[0,0,0],[0.32772,-0.737553,0.56958,-0.155547],[1,-2,1,0],[2200,9E+09,9E+09,9E+09,9E+09,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget P5RT1 := [[0,0,0],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget P5RT2 := [[0,0,0],[0.76,-0.45,-0.09,0.47],[0,0,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget P5RT3 := [[0,0,0],[0.45,0.76,-0.47,-0.09],[0,0,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget P5RT4 := [[0,0,0],[0.45,-0.76,-0.47,0.09],[0,0,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E

    LOCAL PERS robtarget P6RT0 := [[0,0,0],[0.32772,-0.737553,0.56958,-0.155547],[1,-2,1,0],[2370.73,9E+09,9E+09,9E+09,9E+09,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget P6RT1 := [[0,0,0],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget P6RT2 := [[0,0,0],[0.76,-0.45,-0.09,0.47],[0,0,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget P6RT3 := [[0,0,0],[0.45,0.76,-0.47,-0.09],[0,0,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget P6RT4 := [[0,0,0],[0.45,-0.76,-0.47,0.09],[0,0,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E

    
    LOCAL PERS robtarget RB1 := [[0,0,0],[0.54,-0.75,-0.28,0.21],[1,-1,-1,0],[1514,9E+09,9E+09,9E+09,-30,9E+09]];!wobjUse\ using for  Weld_ARC_N
    LOCAL PERS robtarget RB2 := [[0,0,0],[0.54,0.75,-0.28,-0.21],[0,0,-3,0],[526,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for  Weld_ARC_S

    LOCAL PERS robtarget WO0 := [[360,-87.69,2230.9],[0.633022,-0.171883,-0.411112,0.63303],[1,-2,0,0],[2370.72,9E+09,9E+09,9E+09,-0.00143607,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget WO1 := [[360,-87.69,2230.9],[0.633022,-0.171883,-0.411112,0.63303],[1,-2,0,0],[2370.72,9E+09,9E+09,9E+09,-0.00143607,9E+09]];!wobjUse\ using for Weld_3G_E
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
  
    LOCAL PERS wobjdata wMirr:=[FALSE,FALSE,"STN2",[[0,0,0],[0.707107,0.707107,0,0]],[[0,0,-13],[1,0,0,0]]];
    
    LOCAL PERS num Counter:=0;

    
    PROC Main_17071()
        
        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        VAR robtarget p3;
        VAR robtarget p4;
        VAR num s;
        
        TPReadNum Counter,  "How mnay did you made?";
        StartStn2;
        WHILE s<>2 DO
            
            GunClean;
            StartStn2;
            
            SetDO doExhaustStn1,1;

            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!corner 2 weld!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            !Over weld position
            SetWobjUse wRot2,WO4.trans.x,WO4.trans.y,WO4.trans.z;
            strNorth;
    
            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!corner 1 weld!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            !Over weld position
            SetWobjUse wRot2,WO1.trans.x,WO1.trans.y,WO1.trans.z;
            strSouth;
        
            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!    Oil   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            RT0 := [[-104.62,110.03,579.77],[0.500002,-0.500016,-0.49999,0.499993],[0,0,-1,0],[2199.99,9E+09,9E+09,9E+09,0.000167432,9E+09]] ;
            SetWobjUse wRot2, WO1.trans.x,WO1.trans.y,WO1.trans.z;
            MoveJ offs(RT0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
            MoveJ RT0,v1000,z50,tWeldGun\WObj:=wobjUse;
            WaitTime 2;
            MoveJ offs(RT0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
            
            
            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!Pipe 2 and 3 weld!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
            !Over weld position
            SetWobjUse wRot2,WO2.trans.x,WO2.trans.y,WO2.trans.z;
            arcWest;
    
            SetWobjUse wRot2,WO3.trans.x,WO3.trans.y,WO3.trans.z;
            arcWest;
            
            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!Pipe 7 and 8 weld!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
            !Over weld position
            SetWobjUse wRot2,WO7.trans.x,WO7.trans.y,WO7.trans.z;
            arcEast;
    
            SetWobjUse wRot2,WO8.trans.x,WO8.trans.y,WO8.trans.z;
            arcEast;
    
            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
            SetDO doExhaustStn1,0;
            MoveJ Offs(overSt2,200,0,0),v1000,z50,tWeldGun\WObj:=wRot2;
            
            s:=0;
            TPReadFK s, "Turn this part?",
                "ok",
                "",
                "",
                "",
                "";       
            IF s=1 THEN
    
                SetDO doExhaustStn1,1;
                !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!Pipe 2 and 3 weld!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                !Over weld position
                SetWobjUse wRot2,WO2.trans.x,WO2.trans.y,WO2.trans.z;
                arcWest;
                SetWobjUse wRot2,WO3.trans.x,WO3.trans.y,WO3.trans.z;
                arcWest;
                !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!Pipe 7 and 8 weld!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                !Over weld position
                SetWobjUse wRot2,WO7.trans.x,WO7.trans.y,WO7.trans.z;
                arcEast;
                SetWobjUse wRot2,WO8.trans.x,WO8.trans.y,WO8.trans.z;
                arcEast;
                !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                
                MoveJ Offs(overSt2,200,0,0),v1000,z50,tWeldGun\WObj:=wRot2;
                SetDO doExhaustStn1,0;
    
            ENDIF
            Counter:=Counter+1;
            TPErase;
            TPWrite "Number of pieces you made is:"\Num:=Counter;
            TPReadFK s, "do you want to weld another?",
                "yes",
                "no",
                "",
                "",
                "";    
            
        ENDWHILE
        
        MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;
        !MoveJ HomeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
        TPErase;
        TPWrite "Project done!!";
        Stop;

    ENDPROC

    LOCAL PROC strNorth()
        
        VAR robtarget p0;
        
        p0:=Offs(RC3,-7,0,2); !correct position of wire end, aimed to (baluster's center-1)
        Movej Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-50,0,0), v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Over weld position
        p0:=Offs(RC4,-5,5,0); !correct position of wire end, aimed to (baluster's center-1)
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-50-2,0,0), v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
    ENDPROC
    
    LOCAL PROC strSouth()
        
        VAR robtarget p0;
        
        p0:=Offs(RC1,-5,-1,-1); !correct position of wire end, aimed to (baluster's center-1)
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-50-2,0,0), v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Over weld position
        p0:=Offs(RC2,-5,3,3); !correct position of wire end, aimed to (baluster's center-1)
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-50,0,0), v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
    ENDPROC
    
    LOCAL PROC arcWest()

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        
        p0:=Offs(RT1,-15,0,0); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs (p0,-4.9,11.9,0);
        p2:=Offs (p0,-18,17.1,0);
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1,p2, v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Over weld position
        p0:=Offs(RT2,-15,0,0); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs (p0,-4.9,-11.9,0);
        p2:=Offs (p0,-18,-17.1,0);
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1,p2, v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
    ENDPROC

    LOCAL PROC arcEast()

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        
        p0:=Offs(RT3,-15,0,5); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs (p0,-4.9,11.9,0);
        p2:=Offs (p0,-18,17.1,0);
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1,p2, v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Over weld position
        p0:=Offs(RT4,-15,1,7); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs (p0,-4.9,-11.9,0);
        p2:=Offs (p0,-18,-17.1,0);
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1,p2, v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
    ENDPROC
    
ENDMODULE