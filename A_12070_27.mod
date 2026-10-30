MODULE A_12070_27

    LOCAL PERS num hashem:=0; !Just for Spacing, Also this is my signature in all my project!

    !**************************************************************************************************************    
    !****************************************   Project dimentions    *********************************************    
    !**************************************************************************************************************    
    
    LOCAL PERS num t1:=10;

    LOCAL PERS num OdY{4}:=[-34,100,290,370];
    LOCAL PERS num OdZ{4}:=[35,45,109,229];
    LOCAL PERS num wobj{5}:=[801,1288,1794,2260,2744];

    LOCAL PERS num Counter:=170;
    
    !**************************************************************************************************************    
    !********************************************   Robtargets    *************************************************    
    !**************************************************************************************************************    
   
    LOCAL PERS robtarget RT0 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[3044,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT0s := [[0,0,0],[0.7,0.7,0,0],[0,-1,1,0],[2744,9E+09,9E+09,9E+09,0.000926984,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT0n := [[0,0,0],[0,0,0.7,0.7],[0,-1,1,0],[801,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    
    !********************************************   Arc    *************************************************    
    LOCAL PERS robtarget RT1 := [[0,0,0],[0.7,-0.3,-0.22,0.61],[1,-2,0,0],[2744,9E+09,9E+09,9E+09,0.000589406,9E+09]];!wobjUse\ using for Weld_3G_W
    !LOCAL PERS robtarget RT1 := [[0,0,0],[-0.86,0,0.38,-0.33],[0,-1,-2,0],[1234,9E+09,9E+09,9E+09,0.000589406,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT2 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[1234,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
!    LOCAL PERS robtarget RT3 := [[0,0,0],[0.32,0.73,-0.57,-0.21],[1,0,-1,0],[2394,9E+09,9E+09,9E+09,0.000251827,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT3 := [[0,0,0],[0.07,-0.8,-0.45,0.37],[1,0,-1,0],[2544,9E+09,9E+09,9E+09,0.000251827,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[0,0,0],[0.32,-0.73,-0.57,0.21],[0,0,-2,0],[1101,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E

    !******************************************   Straight    **********************************************    
!    LOCAL PERS robtarget RC1 := [[0,0,0],[0.808343,-0.278639,-0.0922739,0.510321],[1,-1,0,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
!    LOCAL PERS robtarget RC2 := [[0,0,0],[0.44041,0.76422,-0.471014,-0.0123115],[0,0,-3,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
!    LOCAL PERS robtarget RC3 := [[0,0,0],[0.167457,-0.522695,-0.720648,0.423573],[1,2,-2,0],[2052.8,9E+09,9E+09,9E+09,0.00193972,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
!    LOCAL PERS robtarget RC4 := [[0,0,0],[0.808343,0.278639,-0.0922739,-0.510321],[1,-1,-2,0],[2200,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RC0 := [[0,0,0],[0.43,-0.43,-0.56,0.56],[0,-1,0,1],[2631,9E+09,9E+09,9E+09,20,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RC1 := [[0,0,0],[0.94,-0.08,-0.21,0.24],[1,-1,0,0],[1433,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget RC2 := [[0,0,0],[0.94,-0.08,-0.21,0.24],[1,-1,0,0],[1899.99,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget RC3 := [[0,0,0],[-0.08,0.94,0.24,-0.21],[1,-1,-2,0],[1900,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget RC4 := [[0,0,0],[0.76,0.44,-0.01,-0.47],[1,-1,-2,0],[3231,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RC5 := [[0,0,0],[0.04,0.95,0.25,-0.17],[1,-1,-2,0],[1900,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3G_E
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

    LOCAL VAR pose RTSz;
    LOCAL VAR pose RTSx;
    
    PROC Main_12070_27()
        
        VAR num i;
        
        i:=1;
        
        WHILE s<>5 DO
            StartStn2;
            MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;
            GunClean;
            StartStn2;

            SetDO doExhaustStn2,1;
            
            FOR i FROM 1 TO 5 DO
                
                SetWobjUse wobjSt2,-5,-291,wobj{i};
                
                arc3 OdY{1},OdZ{3};
                arc3 OdY{1},OdZ{4};
                !i:=1;  

            ENDFOR
            
            SetDO doExhaustStn2,0;

            MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;

            s:=0;
            TPReadFK s, "Turn your part",
                "ok",
                "",
                "",
                "",
                "";
                
            i:=1;
                
            WHILE i<=5 DO

                GunClean;
                StartStn2;
                
                SetWobjUse wobjSt2,-5,-291,wobj{i};
                
                SetDO doExhaustStn2,1;
                
                arc1 OdY{4},OdZ{1};
                
                SetDO doExhaustStn2,0;

                GunClean;
                StartStn2;
                SetWobjUse wobjSt2,-5,-291,wobj{i};

                SetDO doExhaustStn2,1;
                arc2 OdY{4},OdZ{2};

                !Nuts Welding
!                arcEast 125,OdY{3},OdZ{2};
!                arcEast 125,OdY{2},OdZ{2};

                MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;                

                SetDO doExhaustStn2,0;
                
                i:=i+1;
                
            ENDWHILE
                
            Counter:=Counter+5;
            TPErase;
            TPWrite "Number of completed parts is: " \Num:=Counter;
            TPReadFK s, "Do you want to make new one?",
                "Yes",
                "",
                "",
                "",
                "No, It's Finished";
                
        ENDWHILE
        
        TPErase;
        TPWrite "Number of completed parts is: " \Num:=Counter;
        TPWrite "Project done!!";
        Stop;

    ENDPROC

    LOCAL PROC arc1(num y, num z)

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        
        RT1.extax.eax_a:=wobjUse.oframe.trans.z;
        RT0.extax.eax_a:=wobjUse.oframe.trans.z+300;

        p0:=Offs(RT1,0,Y-355,Z); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs (p0,0,355,0);

        Movel Offs(p0,200,20,-100), v1000, fine, tWeldGun\WObj:=wobjUse;
        Search_1D RTSx ,Offs(p0,20,20,-20) , Offs(p0,0,20,-20), v150, tWeldGun\WObj:=wobjUse;
        Search_1D RTSz ,Offs(p0,20,20,-20) , Offs(p0,20,20,0), v150, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSx;
        p0.trans:=p0.trans+RTSz.trans;
        
        Movel Offs(p1,200,-20,-100), v1000, fine, tWeldGun\WObj:=wobjUse;
        Search_1D RTSx ,Offs(p1,20,-20,-20) , Offs(p1,0,-20,-20), v150, tWeldGun\WObj:=wobjUse;
        Search_1D RTSz ,Offs(p1,20,-20,-20) , Offs(p1,20,-20,0), v150, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSx;
        p1.trans:=p1.trans+RTSz.trans;

        MoveJ Offs(p0,200,0,-100),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v200, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        ArcL p1, v200, smUse, weld_2F2G, z0, tWeldGun\WObj:=wobjUse;
        ArcLEnd offs(p1,0,-5,0), v200, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p1,300,0,-20),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(p0,300,0,-20),v1000,z50,tWeldGun\WObj:=wobjUse;

        PDispOff;
        
    ENDPROC
    
    LOCAL PROC arc2(num y, num z)

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        
        RT3.extax.eax_a:=wobjUse.oframe.trans.z-200;
        RT3.robconf:=[1,0,-1,0];
        RT0s.extax.eax_a:=wobjUse.oframe.trans.z;

        p0:=Offs(RT3,0,Y,Z); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs (p0,0,-355,0);
       
        Movel Offs(p0,200,-20,100), v1000, fine, tWeldGun\WObj:=wobjUse;
        Search_1D RTSx ,Offs(p0,20,-20,20) , Offs(p0,0,-20,20), v150, tWeldGun\WObj:=wobjUse;
        Search_1D RTSz ,Offs(p0,20,-20,20) , Offs(p0,20,-20,0), v150, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSx;
        p0.trans:=p0.trans+RTSz.trans;
        
        Movel Offs(p1,200,20,100), v1000, fine, tWeldGun\WObj:=wobjUse;
        Search_1D RTSx ,Offs(p1,20,20,20) , Offs(p1,0,20,20), v150, tWeldGun\WObj:=wobjUse;
        Search_1D RTSz ,Offs(p1,20,20,20) , Offs(p1,20,20,0), v150, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSx;
        p1.trans:=p1.trans+RTSz.trans;

        !Welding
        MoveJ Offs(p0,200,0,100),v1000,z50,tWeldGun\WObj:=wobjUse;
        ArcLStart p0, v200, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        ArcL p1, v200, smUse, weld_2F2G, z0, tWeldGun\WObj:=wobjUse;
        ArcLEnd offs(p1,0,5,0), v200, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p1,200,0,20),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        PDispOff;

    ENDPROC
    
    LOCAL PROC arc3(num y, num z)

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        
        VAR pose peOffset;
        VAR robtarget P1G;
        VAR robtarget p2G;
        
        VAR num nWidth;
        
        
        RT0.extax.eax_a:=wobjUse.oframe.trans.z;
        PulseDO\High\PLength:=1,soAwManFeedRev;

        p0:=Offs(RT0,0,y,z); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs (p0,0,0,54);
        
        P1G:= Offs (p1, 15,-6,-5);
        P2G:= Offs (P1G, 0,-6,-5+5+25);
        

        MoveJ Offs(p0,52,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcL p1, v150, smUse, weld_2F2G_a4, z0, tWeldGun\WObj:=wobjUse;
        ArcL Offs(p1,0,-12,0), v150, smUse, weld_2F2G_a4, z0, tWeldGun\WObj:=wobjUse;
        ArcL Offs(p0,0,-12,0), v150, smUse, weld_2F2G_a4, z0, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,0,-5,0), v150, smUse, weld_2F2G, fine, tWeldGun\WObj:=wobjUse;
        MoveJ Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

    ENDPROC
    
    LOCAL PROC arcEast(num x,num y, num z)

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        VAR robtarget ps;

        RT0.extax.eax_a:=wobjUse.oframe.trans.z-300;
        RT3.extax.eax_a:=wobjUse.oframe.trans.z-300;
        RT4.extax.eax_a:=wobjUse.oframe.trans.z+300;

        p0:=Offs(RT3,x,y,z); 
        p1:=Offs (p0,10,6,0);
        p2:=Offs (p0,0,12,0);
        ps:=Offs(RT0,x,y,z);
        
        Movel Offs(ps,100,20,100), v1000, fine, tWeldGun\WObj:=wobjUse;
        Search_1D RTSz ,Offs(ps,-20,35,20+14) , Offs(ps,-20,30,0+14), v150, tWeldGun\WObj:=wobjUse;
        p0.trans:=p0.trans+RTSz.trans;
        Movel Offs(ps,100,20,100), v1000, fine, tWeldGun\WObj:=wobjUse;

        MoveJ Offs(p1,100,0,50),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p1, v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd p2, v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,0,0,50),v1000,z50,tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,100,0,50),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        p0:=Offs(RT4,x,y,z); 
        p1:=Offs (p0,10,-6,0);
        p2:=Offs (p0,0,-12,0);

        p0.trans:=p0.trans+rtsz.trans;
        
        MoveJ Offs(p1,100,0,50),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p1, v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd p2, v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,0,0,50),v1000,z50,tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,100,0,50),v1000,z50,tWeldGun\WObj:=wobjUse;
        
    ENDPROC    

ENDMODULE