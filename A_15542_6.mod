MODULE A_15542_6
    
    LOCAL PERS num hashem:=0; !Just for Spacing, Also this is my signature in all my project!

    !**************************************************************************************************************    
    !****************************************   Project dimentions    *********************************************    
    !**************************************************************************************************************    
    
    !Total Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num Th:=500;

    !Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num h:=500;
    
    !Total lengh of railing (back to back)
    LOCAL PERS num l:=2155;

    !Final width of railing (Normally width of top rail)
    LOCAL PERS num w:=50;
    
    !Number of Posts
    LOCAL PERS num n1:=2;
    
    !Number of Balusters
    LOCAL PERS num n2:=7;
    
    !Distance Between <<!!***LEFT SIDE***!!>> of first Post scabilon and disk surface
    LOCAL PERS num ds:=940;   

    !Distance between balusters
    LOCAL PERS num d1:=48;
    
    !Top rail diameter
    LOCAL PERS num t0:=30;

    !Flatbars thicknes
    LOCAL PERS num t1:=10;

    !Angle profil thicknes
    LOCAL PERS num t2:=4;

    !Balusters diameter (Roundbar diameter, Pipe width)
    LOCAL PERS num t3:=30;

    !Ordinate Dimensions of railing's Posts (abreviated as odP)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdP{5}:=[10,2155,0,0,0];

    !Corrected Post position of Railing posts (abreviated as CorrPT)
    LOCAL PERS pos CorrP{5}:=[[-2.11904,0.0192947,0.0136471],[4.59591,-0.00987053,-0.0136318],[0,0,0],[0,0,0],[0,0,0]];
    
    !Ordinate Dimensions of Balusters (abreviated as odB)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdB{50}:=[30,108,187,265,343,422,500,0,0,0
                            ,0,0,0,0,0,0,0,0,0,0
                            ,0,0,0,0,0,0,0,0,0,0
                            ,0,0,0,0,0,0,0,0,0,0
                            ,0,0,0,0,0,0,0,0,0,0];

    !Corrected East position of Balusters (abreviated as CorrBE)
    LOCAL PERS pos CorrB{7,5}:=[[[2.91886,3.57566,1.7951],[0.478708,33.2334,1.20985],[0,0,0],[0,0,0],[0,0,0]],
                                [[2.33918,1.94619,2.17762],[0.0206389,32.4333,1.11925],[0,0,0],[0,0,0],[0,0,0]],
                                [[1.84684,0.905094,2.25596],[0.0753316,31.7085,1.31078],[0,0,0],[0,0,0],[0,0,0]],
                                [[1.78208,1.62619,2.34002],[0.548774,31.6146,1.60231],[0,0,0],[0,0,0],[0,0,0]],
                                [[1.21687,2.36351,1.6919],[-0.732658,32.7273,1.67279],[0,0,0],[0,0,0],[0,0,0]],
                                [[1.28776,0.336699,1.87059],[-0.642333,30.5624,1.94246],[0,0,0],[0,0,0],[0,0,0]],
                                [[1.60832,4.26638,1.79057],[-0.573605,1.99643,1.94556],[0,0,0],[0,0,0],[0,0,0]]];
                            
    LOCAL PERS num Counter:=26;
    
    !**************************************************************************************************************    
    !********************************************   Robtargets    *************************************************    
    !**************************************************************************************************************    
   
    LOCAL PERS robtarget RT0 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[3062,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT0H := [[0,0,0],[0.684759,0.684787,-0.17625,-0.176375],[0,0,0,1],[3062,9E+09,9E+09,9E+09,0.00202412,9E+09]];!wobjUse\ using for Weld_3G_E
    
    !********************************************   Arc    *************************************************    
    LOCAL PERS robtarget RT1 := [[0,0,0],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[2531,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT2 := [[0,0,0],[0.76,-0.45,-0.09,0.47],[0,0,-2,0],[2531,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget RT3 := [[0,0,0],[0.45,0.76,-0.47,-0.09],[0,0,-2,0],[2587,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[0,0,0],[0.45,-0.76,-0.47,0.09],[0,0,-2,0],[2587,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E

    !**************************************************************************************************************    

    !******************************************   Straight    **********************************************    
    LOCAL PERS robtarget RT2F1 := [[0,0,0],[0.31,0.87,-0.14,-0.37],[1,-1,0,0],[1517,9E+09,9E+09,9E+09,0.00894448,9E+09]];!wobjUse\ using for Weld_4f_1
    LOCAL PERS robtarget RT2F2 := [[0,0,0],[0.79,0.05,-0.49,0.37],[0,0,0,1],[3062,9E+09,9E+09,9E+09,0.00130676,9E+09]];!wobjUse\ using for Weld_4f_1
    LOCAL PERS robtarget RT2F3 := [[0,0,0],[0.31,-0.87,-0.14,0.37],[1,-1,0,0],[1527,9E+09,9E+09,9E+09,0.00155994,9E+09]];!wobjUse\ using for Weld_4f_1
    LOCAL PERS robtarget RT2F4 := [[0,0,0],[0.05,0.79,0.37,-0.49],[0,0,0,1],[1727,9E+09,9E+09,9E+09,0.00130676,9E+09]];!wobjUse\ using for Weld_4f_1

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
  
    LOCAL PERS wobjdata wobjSt2:=[FALSE,FALSE,"STN2",[[0,0,0],[1,0,0,0]],[[55,-265,927],[1,0,0,0]]];

    LOCAL PERS wobjdata wMirr:=[FALSE,FALSE,"STN2",[[0,0,0],[0.707107,0.707107,0,0]],[[0,0,-13],[1,0,0,0]]];
    
    PROC Main_15542_6()
        
        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        VAR robtarget p3;
        VAR robtarget p4;
        VAR num s;
        VAR num i;
        VAR num j;
        VAR wobjdata WeldWobj;
        
        !TPReadNum Counter,  "How mnay did you made?";
        
        StartStn2;
        !Calibration;
        MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;
        
        !MoveJ Offs(overSt2,200,0,0),v1000,z50,tWeldGun\WObj:=wRot2;
        
        wobjSt2:=[FALSE,FALSE,"STN2",[[0,0,0],[1,0,0,0]],[[55,-265,ds+wRot2.oframe.trans.z],[1,0,0,0]]];   
        
        WHILE s<>5 DO
                
            PosSearch;
            SetDO doExhaustStn2,1;

            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!East baluster!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            i:=0;
            j:=0;
            FOR j FROM 1 TO n1-1 DO
                FOR i FROM 1 TO n2-1 DO
                    wobjUse:=WobjNew (OdP{j},OdB{i},1);
                    PDispSet [CorrB{i,j},[1,0,0,0]];
                    strEast;
                    PDispOff;
                ENDFOR
            ENDFOR
                    wobjUse:=WobjNew (OdP{1},OdB{n2},1);
                    PDispSet [CorrB{n2,n1-1},[1,0,0,0]];
                    strNorthEast;
                    PDispOff;
        
            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            
            MoveJ Offs(overSt2,200,0,0),v1000,z50,tWeldGun\WObj:=wRot2;
            
            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!West baluster!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            i:=0;
            j:=0;
            FOR j FROM n1 TO n1 DO
                FOR i FROM 1 TO n2-1 DO
                        wobjUse:=WobjNew (OdP{j},OdB{i},2);
                        PDispSet [CorrB{i,j},[1,0,0,0]];
                        strWest;
                        PDispOff;
                ENDFOR
            ENDFOR
                    wobjUse:=WobjNew (OdP{2},OdB{n2},2);
                    PDispSet [CorrB{n2,n1},[1,0,0,0]];
                    strNorthWest;
                    PDispOff;
        
            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!West baluster!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

        SetDO doExhaustStn2,0;
        
        MoveJ Offs(safeSt2_0,200,0,0),v1000,z50,tWeldGun\WObj:=wobj0;
        
        s:=0;
        TPErase;
        TPReadFK s, "What is the next?",
            "Back side",
            "",
            "New one",
            "",
            "";
           
            IF s=1 THEN
                TPErase;
                TPReadFK s, "Turn your part",
                    "ok",
                    "",
                    "",
                    "",
                    "";
            ELSEIF s=3 THEN
                Counter:=Counter+1;
                TPErase;
                TPWrite "Number of completed parts is: " \Num:=Counter;
                TPReadFK s, "Do you want to make new one?",
                    "Yes",
                    "",
                    "",
                    "",
                    "No";
            ENDIF
            
        ENDWHILE
        
        MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;
        !MoveJ HomeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
        TPErase;
        TPWrite "Project done!!";
        Stop;

    ENDPROC

    !This procedure search all Top connections and store correct positions on position array
    LOCAL PROC PosSearch()
        
        MoveJ safeSt2_0, v1000, z50, tWeldGun;            
        GunClean;
        StartStn2;
        !PulseDO\High\PLength:=2,soAwManFeedRev;
        
        MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;

        TPErase;
        TPReadFK s, "Check TCP !!! 15mm!!! ",
            "ok",
            "",
            "",
            "",
            "";
        FOR j FROM 1 TO n1-1 DO
            FOR i FROM 1 TO n2-1 DO
                CorrB{i,j}:=PosCorr(OdP{j},OdB{i},1);
            ENDFOR
                CorrB{n2,j}:=PosCorr(OdP{j},OdB{n2},3);
        ENDFOR
        
        !store the correctposition of top balusters
        FOR i FROM 1 TO n2-1 DO
                CorrB{i,n1}:=PosCorr(OdP{n1},OdB{i},2);
        ENDFOR
                CorrB{n2,n1}:=PosCorr(OdP{n1},OdB{n2},4);

        MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;            
        
    ENDPROC
    
    !This Function used to make new workObject by using coorected point coordinations comes from PosCorr function
    !It has two Entries
    !myPosition = coorected point coordinations comes from PosCorr function
    !SP = Search Position ( refer to page 24 of sotware analysis handbook )
    !Syntax to use:     NewWorkobject:=WobjNew(PosCorr , 1);
    LOCAL FUNC wobjdata WobjNew(num myZ , num myY ,num sp)
        
        VAR wobjdata Cwobj; 
        VAR pose myPose; 

        Cwobj:=wobjSt2;

        IF SP=1 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            Cwobj.oframe.trans.x:=wobjSt2.oframe.trans.x;
            Cwobj.oframe.trans.y:=wobjSt2.oframe.trans.y+myY-OdB{1};
            Cwobj.oframe.trans.z:=wobjSt2.oframe.trans.z+myZ-OdP{1};
            
        ELSEIF SP=2 THEN !For SP refer to page 24 of sotware analysis handbook
        
            !correct the workObject to corrected points and move safely out of search teritory
            Cwobj.oframe.trans.x:=wobjSt2.oframe.trans.x;
            Cwobj.oframe.trans.y:=wobjSt2.oframe.trans.y+myY-OdB{1};
            Cwobj.oframe.trans.z:=wobjSt2.oframe.trans.z+(myZ-2*OdP{1});
            
        ENDIF
            
        RETURN Cwobj;
        
    ENDFUNC    

    
    !This Function used to make new Pos by using search_1D function (aplication manual AAB SMARTAC, page 81)
    !It has three Entries
    !dis=Ordinate dimensions
    !SP=Search Position ( refer to page 24 of sotware analysis handbook )
    !PosAn=Angle of rotating table
    !Syntax to use:     Pos:=PosCorr(Odp{2} , 1,10);
    LOCAL FUNC pos PosCorr(num disZ ,num disY , num SP)
        
        VAR pose RTSx;
        VAR pose RTSy;
        VAR pose RTSz;
        VAR num myX;
        VAR num myY;
        VAR num myZ;
        
        VAR wobjdata Cwobj; 
        VAR pos myPos; 

        !RT0.extax.eax_a:=ds+disZ;
        RT0.extax.eax_a:=600+disZ;
        RT0H.extax.eax_a:=1300+disZ;

        IF SP=1 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !Set workObject to designated point calculated based on parameters entered by user
            wobjUse:=WobjNew (disZ,disY,1);
            
            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,100,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,10,50,20), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,-5,50,20) , Offs(RT0,-5,30,20), v150, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,-5,50,20) , Offs(RT0,-5,50,0), v150, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,10,50,20), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSx ,Offs(RT0,40,15,20) , Offs(RT0,0,15,20), v150, tWeldGun\WObj:=wobjUse;
            
        ELSEIF SP=2 THEN !For SP refer to page 24 of sotware analysis handbook
        
            !Set workObject to designated point calculated based on parameters entered by user
            wobjUse:=WobjNew (disZ,disY,2);            !RT0 := [[206.75,-40.25,152.95],[0.500043,-0.499989,-0.499952,0.500016],[1,-1,1,0],[2913.87,9E+09,9E+09,9E+09,-0.00051404,9E+09]];
            
            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,100,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,10,50,-20), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,-5,50,-20) , Offs(RT0,-5,0,-20), v150, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,-5,50,-20) , Offs(RT0,-5,50,0), v150, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,10,50,-20), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSx ,Offs(RT0,40,15,-20) , Offs(RT0,0,15,-20), v150, tWeldGun\WObj:=wobjUse;

        ELSEIF SP=3 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !Set workObject to designated point calculated based on parameters entered by user
            wobjUse:=WobjNew (disZ,disY,1);            !RT0 := [[206.75,-40.25,152.95],[0.500043,-0.499989,-0.499952,0.500016],[1,-1,1,0],[2913.87,9E+09,9E+09,9E+09,-0.00051404,9E+09]];
            
            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,100,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,10,-20,20), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,-5,-20,20) , Offs(RT0,-5,0,20), v150, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,-5,-20,20) , Offs(RT0,-5,-20,0), v150, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,10,-20,20), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSx ,Offs(RT0,40,15,20) , Offs(RT0,0,15,20), v150, tWeldGun\WObj:=wobjUse;
        ELSEIF SP=4 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !Set workObject to designated point calculated based on parameters entered by user
            wobjUse:=WobjNew (disZ,disY,2);            !RT0 := [[206.75,-40.25,152.95],[0.500043,-0.499989,-0.499952,0.500016],[1,-1,1,0],[2913.87,9E+09,9E+09,9E+09,-0.00051404,9E+09]];
            
            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,100,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;
            
            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,10,-20,-20), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,-5,-20,-20) , Offs(RT0,-5,0,-20), v150, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,-5,-20,-20) , Offs(RT0,-5,-20,0), v150, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,10,-20,-20), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSx ,Offs(RT0,40,15,-20) , Offs(RT0,0,15,-20), v150, tWeldGun\WObj:=wobjUse;

        ENDIF
        
        myPos:=[RTSx.trans.x,RTSy.trans.y,RTSz.trans.z];
        
        RETURN myPos;
        
    ENDFUNC    
    
    LOCAL PROC strEast()
        
        VAR robtarget p0;
        
        RT0.extax.eax_a:=800+wobjUse.oframe.trans.z;
        RT2F4.extax.eax_a:=800+wobjUse.oframe.trans.z;
       
!        p0:=Offs(RT2F3,0,-30,0); !correct position of wire end, aimed to (baluster's center-1)
!        Movej Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
!        !Welding
!        ArcLStart Offs(p0,-2,0,0), v150, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
!        ArcLEnd Offs(p0,-43,0,0), v150, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
!        Movel Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        p0:=offs(RT0,0,30,0); !correct position of wire end, aimed to (baluster's center-1)
        Movej Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart Offs(p0,-5,0,-4), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-5,-(t0-2),-4), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart Offs(p0,-2,-(t0-2),-2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-2,0,-2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;        

        
        RT2F4.robconf:=[0,0,0,1];
        p0:=Offs(RT2F4,0,30,0); !correct position of wire end, aimed to (baluster's center-1)
        Movej Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart Offs(p0,2,4,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-45,4,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,100,2,0),v1000,z50,tWeldGun\WObj:=wobjUse;        

        !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        
    ENDPROC
    
    LOCAL PROC strNorthEast()
        
        VAR robtarget p0;
        
        RT0.extax.eax_a:=800+wobjUse.oframe.trans.z;
        RT0H.extax.eax_a:=800+wobjUse.oframe.trans.z;
       
!        p0:=Offs(RT2F3,0,-30,0); !correct position of wire end, aimed to (baluster's center-1)
!        Movej Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
!        !Welding
!        ArcLStart Offs(p0,-2,0,0), v150, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
!        ArcLEnd Offs(p0,-43,0,0), v150, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
!        Movel Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        p0:=offs(RT0,0,30,0); !correct position of wire end, aimed to (baluster's center-1)
        Movej Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart Offs(p0,-5,0,-2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-5,-(t0),-2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart Offs(p0,-2,-(t0-2),-2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-2,0,-2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;        

        
        RT0H.robconf:=[0,0,0,1];
        p0:=Offs(RT0H,0,30,0);
        !p0:=RT0H; !correct position of wire end, aimed to (baluster's center-1)
        Movej Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart Offs(p0,-2,-5,-2), v150, smUse, weld_4F\Weave:=weavePG3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-45,-5,-2), v150, smUse, weld_4F\Weave:=weavePG3F, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,100,2,0),v1000,z50,tWeldGun\WObj:=wobjUse;        

        !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC
    
    LOCAL PROC strWest()
        
        VAR robtarget p0;

        RT0.extax.eax_a:=0+wobjUse.oframe.trans.z;
        RT2F2.extax.eax_a:=0+wobjUse.oframe.trans.z;
       
!        p0:=Offs(RT2F1,0,-30,0); !correct position of wire end, aimed to (baluster's center-1)
!        Movej Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
!        !Welding
!        ArcLStart Offs(p0,-2,0,0), v150, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
!        ArcLEnd Offs(p0,-43,0,0), v150, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
!        Movel Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        p0:=offs(RT0,-5,0,0); !correct position of wire end, aimed to (baluster's center-1)
        Movej Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart Offs(p0,-2,0,2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-2,-(t0-2),2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart Offs(p0,-2,-(t0-2),2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-2,0,2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;        

        
        RT2F2.robconf:=[0,0,0,1];
        p0:=Offs(RT2F2,0,0,0); !correct position of wire end, aimed to (baluster's center-1)
        Movej Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart Offs(p0,2,3,-1), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-45,3,-1), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
    
        !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    LOCAL PROC strNorthWest()
        
        VAR robtarget p0;

        RT0.extax.eax_a:=0+wobjUse.oframe.trans.z;
        RT0H.extax.eax_a:=0+wobjUse.oframe.trans.z;
       
!        p0:=Offs(RT2F1,0,-30,0); !correct position of wire end, aimed to (baluster's center-1)
!        Movej Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
!        !Welding
!        ArcLStart Offs(p0,-2,0,0), v150, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
!        ArcLEnd Offs(p0,-43,0,0), v150, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
!        Movel Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        p0:=offs(RT0,0,30,0); !correct position of wire end, aimed to (baluster's center-1)
        Movej Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart Offs(p0,-2,-2,2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-2,-(t0),2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart Offs(p0,-2,-(t0-2),2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-2,0,2), v150, smUse, weld_2F2G_a3\Weave:=weave2G2F_a4, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;        

        
        RT0H.robconf:=[0,0,0,1];
        p0:=offs(RT0H,0,30,0); !correct position of wire end, aimed to (baluster's center-1)
        Movej Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart Offs(p0,-2,-5,2), v150, smUse, weld_4F\Weave:=weavePG3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-45,-5,2), v150, smUse, weld_4F\Weave:=weavePG3F, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
    
        !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC    
    
    LOCAL PROC Calibration()
        
        CCPSt2 :=[[296.78,16.89,70.11],[0.500054,-0.500029,-0.499965,0.499951],[1,-1,0,0],[360.013,9E+09,9E+09,9E+09,0.000589406,9E+09]];
        SetWobjUse wRot2,CCPSt2.trans.x-2,CCPSt2.trans.y,CCPSt2.trans.z-13;
        
        RT0.extax.eax_a:=360;
        RT1.extax.eax_a:=360;
        RT2.extax.eax_a:=360;
        RT3.extax.eax_a:=360;
        RT4.extax.eax_a:=360;
        RC1.extax.eax_a:=360;
        RC2.extax.eax_a:=360;
        RC4.extax.eax_a:=360;
        RC5.extax.eax_a:=360;
        RC1.extax.eax_e:=0;
        RC2.extax.eax_e:=0;
        RC4.extax.eax_e:=0;
        RC5.extax.eax_e:=0;

        
        MoveJ Offs(RT0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RT0,0,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        stop;
        Movel Offs(RT0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RT1,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RT1,0,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        stop;
        Movel Offs(RT1,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RT2,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RT2,0,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        stop;
        Movel Offs(RT2,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RT3,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RT3,0,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        stop;
        Movel Offs(RT3,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RT4,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RT4,0,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        stop;
        Movel Offs(RT4,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RC1,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RC1,0,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        stop;
        Movel Offs(RC1,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RC2,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RC2,0,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        stop;
        Movel Offs(RC2,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RC4,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RC4,0,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        stop;
        Movel Offs(RC4,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RC5,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        MoveJ Offs(RC5,0,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        stop;

        RT0.extax.eax_a:=1900;
        RT1.extax.eax_a:=1900;
        RT2.extax.eax_a:=1900;
        RT3.extax.eax_a:=1900;
        RT4.extax.eax_a:=1900;
        RC1.extax.eax_a:=1900;
        RC2.extax.eax_a:=1900;
        RC4.extax.eax_a:=1900;
        RC5.extax.eax_a:=1900;
        RC1.extax.eax_e:=40;
        RC2.extax.eax_e:=40;
        RC4.extax.eax_e:=40;
        RC5.extax.eax_e:=40;

    ENDPROC        
    
ENDMODULE