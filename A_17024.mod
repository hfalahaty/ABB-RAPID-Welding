MODULE A_17024

    LOCAL PERS num hashem:=0; !Just for Spacing, Also this is my signature in all my project!

    !**************************************************************************************************************    
    !****************************************   Project dimentions    *********************************************    
    !**************************************************************************************************************    
    
    !Total Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num Th:=1200;

    !Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num h:=1200;
    
    !Total lengh of railing (back to back)
    LOCAL PERS num l:=2318;

    !Final width of railing (Normally width of top rail)
    LOCAL PERS num w:=50;
    
    !Number of Posts
    LOCAL PERS num n1:=3;
    
    !Number of Balusters
    LOCAL PERS num n2:=3;
    
    !Distance Between <<!!***LEFT SIDE***!!>> of first Post scabilon and disk surface
    LOCAL PERS num ds:=833;   

    !Distance between balusters
    LOCAL PERS num d1:=338;
    
    !Top rail diameter
    LOCAL PERS num t0:=43;

    !Flatbars thicknes
    LOCAL PERS num t1:=10;

    !Angle profil thicknes
    LOCAL PERS num t2:=4;

    !Balusters diameter (Roundbar diameter, Pipe width)
    LOCAL PERS num t3:=22;

    !Ordinate Dimensions of railing's Posts (abreviated as odP)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdP{5}:=[10,1164,2318,0,0];

    !Corrected Post position of Railing posts (abreviated as CorrPT)
    LOCAL PERS pos CorrP{5}:=[[-1.97824,-1.33739,-12.6908],[0.228764,0.26635,-14.1658],[-1.9931,1.28046,-11.6815],[0,0,0],[0,0,0]];
    
    !Ordinate Dimensions of Balusters (abreviated as odB)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdB{50}:=[43,402,761,0,0,0,0,0,0,0
                            ,0,0,0,0,0,0,0,0,0,0
                            ,0,0,0,0,0,0,0,0,0,0
                            ,0,0,0,0,0,0,0,0,0,0
                            ,0,0,0,0,0,0,0,0,0,0];

    !Corrected East position of Balusters (abreviated as CorrBE)
    LOCAL PERS pos CorrB{4,5}:=[[[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]],
                                [[-1.76341,0.248875,-13.1402],[-0.385322,0.654236,-13.4316],[-2.20251,2.72611,-12.8863],[0,0,0],[0,0,0]],
                                [[-3.00546,-1.39544,-12.4236],[-0.248363,1.0806,-13.0898],[-2.47494,3.93562,-12.8454],[0,0,0],[0,0,0]],
                                [[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]]];
                            
    LOCAL PERS num Counter:=64;
    
    !**************************************************************************************************************    
    !********************************************   Robtargets    *************************************************    
    !**************************************************************************************************************    
   
    LOCAL PERS robtarget RT0 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[2918,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT0H := [[0,0,0],[0.7,0.7,0,0],[0,-1,1,0],[3618,9E+09,9E+09,9E+09,0.000926984,9E+09]];!wobjUse\ using for Weld_3G_E
    
    !********************************************   Arc    *************************************************    
    LOCAL PERS robtarget RT1 := [[0,0,0],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[2531,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT2 := [[0,0,0],[0.76,-0.45,-0.09,0.47],[0,0,-2,0],[2531,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget RT3 := [[0,0,0],[0.45,0.76,-0.47,-0.09],[0,0,-2,0],[2587,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[0,0,0],[0.45,-0.76,-0.47,0.09],[0,0,-2,0],[2587,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E

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
    
    PROC Main_17024()
        
        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        VAR robtarget p3;
        VAR robtarget p4;
        VAR num s;
        VAR wobjdata WeldWobj;
        
        !TPReadNum Counter,  "How mnay did you made?";
        StartStn2;
        !Calibration;
        wobjSt2:=[FALSE,FALSE,"STN2",[[0,0,0],[1,0,0,0]],[[75,-478.5,ds],[1,0,0,0]]];   
        
        WHILE s<>5 DO
                
            PosSearch;
            SetDO doExhaustStn2,1;

            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!top pipe!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            !Over weld position
            wobjUse:=WobjNew (OdP{1},OdB{1},1);
            PDispSet [CorrP{1},[1,0,0,0]];
            strEast;
            PDispOff;                

            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!last top pipe!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            !Over weld position
            FOR i FROM 2 TO n1 DO
                wobjUse:=WobjNew (OdP{i},OdB{1},2);
                PDispSet [CorrP{i},[1,0,0,0]];
                strWest;
                PDispOff;
            ENDFOR
            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!East baluster!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            FOR j FROM 1 TO n1-1 DO
                FOR i FROM 2 TO n2 DO
                    wobjUse:=WobjNew (OdP{j},OdB{i},1);
                    PDispSet [CorrB{i,j},[1,0,0,0]];
                    PDispadd [[0,-t3/2,0],[1,0,0,0]];
                    arcEast;
                    PDispOff;
                ENDFOR
            ENDFOR
        
            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!West baluster!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            FOR j FROM 2 TO n1 DO
                FOR i FROM 2 TO n2 DO
                        wobjUse:=WobjNew (OdP{j},OdB{i},2);
                        PDispSet [CorrB{i,j},[1,0,0,0]];
                        PDispadd [[0,-t3/2,0],[1,0,0,0]];
                        arcWest;
                        PDispOff;
                ENDFOR
            ENDFOR
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
                    "ok",
                    "",
                    "",
                    "",
                    "finished";
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
        PulseDO\High\PLength:=2,soAwManFeedRev;
        
        MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;
        !MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun;            
        
        !store the correctposition of top Posts
        FOR i FROM 1 TO n1-1 DO             
            CorrP{i}:=PosCorr(Odp{i},OdB{1},1);         
        ENDFOR
        
        CorrP{n1}:=PosCorr(odp{n1},OdB{1},2);

        !store the correctposition of top balusters
        FOR j FROM 1 TO n1-1 DO
            FOR i FROM 2 TO n2 DO
                CorrB{i,j}:=PosCorr(OdP{j},OdB{i},3);
            ENDFOR
        ENDFOR
        
        !store the correctposition of top balusters
        FOR i FROM 2 TO n2 DO
                CorrB{i,n1}:=PosCorr(OdP{n1},OdB{i},4);
        ENDFOR

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
            MoveJ Offs(RT0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,10,40,40), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,-60,40,40) , Offs(RT0,-60,14,40), v150, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,-60,40,40) , Offs(RT0,-60,40,14), v150, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,200,40,40), v1000, fine, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0H,200,-90,40), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSx ,Offs(RT0H,40,-70,40) , Offs(RT0H,-3.5+14,-70,40), v150, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSz;
            
        ELSEIF SP=2 THEN !For SP refer to page 24 of sotware analysis handbook
        
            !Set workObject to designated point calculated based on parameters entered by user
            wobjUse:=WobjNew (disZ,disY,2);            !RT0 := [[206.75,-40.25,152.95],[0.500043,-0.499989,-0.499952,0.500016],[1,-1,1,0],[2913.87,9E+09,9E+09,9E+09,-0.00051404,9E+09]];
            
            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,10,40,-40), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,-60,40,-40) , Offs(RT0,-60,14,-40), v150, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,-60,40,-40) , Offs(RT0,-60,40,-14), v150, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,200,40,-40), v1000, fine, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0H,200,-90,-40), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSx ,Offs(RT0H,40,-70,-40) , Offs(RT0H,-3.5+14,-70,-40), v150, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSz;

        ELSEIF SP=3 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !Set workObject to designated point calculated based on parameters entered by user
            wobjUse:=WobjNew (disZ,disY,1);            !RT0 := [[206.75,-40.25,152.95],[0.500043,-0.499989,-0.499952,0.500016],[1,-1,1,0],[2913.87,9E+09,9E+09,9E+09,-0.00051404,9E+09]];
            
            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,10,40,40), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,-80,40,40) , Offs(RT0,-80,14,40), v150, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,-60,40,40) , Offs(RT0,-60,40,14), v150, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,200,40,40), v1000, fine, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0H,200,-60,40), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSx ,Offs(RT0H,40,-60,40) , Offs(RT0H,-14+14,-60,40), v150, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSz;
            Movel Offs(RT0H,200,-60,40), v1000, fine, tWeldGun\WObj:=wobjUse;

        ELSEIF SP=4 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !Set workObject to designated point calculated based on parameters entered by user
            wobjUse:=WobjNew (disZ,disY,2);            !RT0 := [[206.75,-40.25,152.95],[0.500043,-0.499989,-0.499952,0.500016],[1,-1,1,0],[2913.87,9E+09,9E+09,9E+09,-0.00051404,9E+09]];
            
            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;
            
            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,10,40,-40), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,-80,40,-40) , Offs(RT0,-80,14,-40), v150, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,-60,40,-40) , Offs(RT0,-60,40,-14), v150, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,200,40,-40), v1000, fine, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0H,200,-60,-40), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSx ,Offs(RT0H,40,-60,-40) , Offs(RT0H,-14+14,-60,-40), v150, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSz;
            Movel Offs(RT0H,200,-60,-40), v1000, fine, tWeldGun\WObj:=wobjUse;

        ENDIF
        
        myPos:=RTSx.trans;
        
        RETURN myPos;
        
    ENDFUNC    
    
    LOCAL PROC strEast()
        
        VAR robtarget p0;
        
        RC0.extax.eax_a:=600+wobjUse.oframe.trans.z;
        RC1.extax.eax_a:=600+wobjUse.oframe.trans.z;

        p0:=Offs(RC0,-20,2,0); !correct position of wire end, aimed to (baluster's center-1)
        Movej Offs(p0,200,2,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart Offs(p0,0,0,-t1/2), v150, smUse, weld_2F2G_a2, fine, tWeldGun\WObj:=wobjUse;
        ArcL Offs(p0,0,0,-t1+2), v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,0,0,2), v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        p0:=Offs(RC1,-20,2,-5); !correct position of wire end, aimed to (baluster's center-1)
        MoveJ Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-14,0,0), v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        

    ENDPROC
    
    LOCAL PROC strWest()
        
        VAR robtarget p0;

        RC0.extax.eax_a:=-500+wobjUse.oframe.trans.z;
        RC4.extax.eax_a:=100+wobjUse.oframe.trans.z;
       
        p0:=Offs(RC4,-14,2,2); !correct position of wire end, aimed to (baluster's center-1)
        Movej Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,-14,0,0), v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        p0:=RC0;
        p0:=Offs(RC0,-23,0,0); !correct position of wire end, aimed to (baluster's center-1)
        Movej Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart Offs(p0,0,0,t1/2), v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        ArcL Offs(p0,0,0,2), v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(p0,0,0,t1+2), v150, smUse, weld_2F2G_a2, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
    
    ENDPROC
    
    LOCAL PROC arcWest()

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        
        RT2.extax.eax_a:=-600+wobjUse.oframe.trans.z;
        RT1.extax.eax_a:=-600+wobjUse.oframe.trans.z;

        !Over weld position
        p0:=Offs(RT2,-14,0,1); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs (p0,-1.4,-5.3,0);
        p2:=Offs (p0,-13,-11,0);
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1,p2, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        p0:=Offs(RT1,-14,0,1); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs (p0,-1.4,5.3,0);
        p2:=Offs (p0,-13,11,0);
        MoveJ Offs(p0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1,p2, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        
!        p0:=Offs(RC3,-14-11,12,10); !correct position of wire end, aimed to (baluster's center-1)
!        p1:=Offs (p0,-5.3,-1.4,0);
!        p2:=Offs (p0,-11,-11,0);
!        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
!        !Welding
!        ArcLStart p0, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
!        ArcCEnd p1,p2, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
!        !MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
!        !Over weld position
!        p0:=Offs(RC3,-14-11,-12,10); !correct position of wire end, aimed to (baluster's center-1)
!        p1:=Offs (p0,-5.3,1.4,0);
!        p2:=Offs (p0,-11,11,0);
!        !MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
!        !Welding
!        ArcLStart p0, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
!        ArcCEnd p1,p2, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
!        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        
    ENDPROC

    LOCAL PROC arcEast()

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        
        RT3.extax.eax_a:=600+wobjUse.oframe.trans.z;
        RT4.extax.eax_a:=600+wobjUse.oframe.trans.z;

        p0:=Offs(RT3,-14,0,0); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs (p0,-1.4,5.3,0);
        p2:=Offs (p0,-13,11,0);
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1,p2, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Over weld position
        p0:=Offs(RT4,-14,0,0); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs (p0,-1.4,-5.3,0);
        p2:=Offs (p0,-13,-11,0);
        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !Welding
        ArcLStart p0, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1,p2, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
        Movel Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
!        p0:=Offs(RC2,-14-11+2,12,-10); !correct position of wire end, aimed to (baluster's center-1)
!        p1:=Offs (p0,-5.3,-1.4,0);
!        p2:=Offs (p0,-11,-11,0);
!        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
!        !Welding
!        ArcLStart p0, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
!        ArcCEnd p1,p2, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
!        !MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
!        !Over weld position
!        p0:=Offs(RC2,-14-11+2,-12,-10); !correct position of wire end, aimed to (baluster's center-1)
!        p1:=Offs (p0,-5.3,1.4,0);
!        p2:=Offs (p0,-11,11,0);
!        !MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
!        !Welding
!        ArcLStart p0, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
!        ArcCEnd p1,p2, v150, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobjUse;
!        MoveJ Offs(p0,300,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        
    ENDPROC    
    
    LOCAL PROC Calibration()
        
        !MoveJ beginSt2,v1000,z50,tWeldGun\WObj:=wRot2;
        
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