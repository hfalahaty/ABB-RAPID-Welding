MODULE A_Railing_St1_ASA
    
    !You can find explanation about the variables along with drawings, on which the variables are marked, in <<sotware analysis handbook>> pages 1 and 10.
    !You can find this document on system's backup USB, inside of documents folder.


    
    LOCAL PERS num hashem:=0; !Just for Spacing, Also this is my signature in all my project!
    

    
    !**************************************************************************************************************    
    !********************************************Railing Dimention*************************************************    
    !**************************************************************************************************************      
    
    !Total Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num Th:=1200;

    !Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num h:=1200;
    
    !Total lengh of railing (back to back)
    LOCAL PERS num l:=3120;

    !Final width of railing (Normally width of top rail)
    LOCAL PERS num w:=50;
    
    !Number of Posts
    LOCAL PERS num n1:=3;
    
    !Number of Balusters
    LOCAL PERS num n2:=30;
    
    !Distance Between <<!!***LEFT SIDE***!!>> of first Baluster scabilon and disk surface
    LOCAL PERS num ds:=1277;   

    !Distance between balusters
    LOCAL PERS num d1:=85;
    
    !Flatbars thicknes (Top rail, Bottom rail, Posts)
    LOCAL PERS num t1:=10;

    !Angle profil thicknes
    LOCAL PERS num t2:=4;

    !Balusters thicknes (Roundbar diameter, Pipe width)
    LOCAL PERS num t3:=12;

    !Ordinate Dimensions of railing's Posts (abreviated as odP)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdP{5}:=[50,1565,3120,0,0];
    
    !Corrected top position of Railing posts (abreviated as CorrPT)
    LOCAL PERS pos CorrPT{5}:=[[0,0,0],[7.86543,2.8259,-13.3629],[5.14712,12.2345,-6.38921],[0,0,0],[0,0,0]];
    
    !Corrected Bottom position of Railing posts (abreviated as CorrPB)
    LOCAL PERS pos CorrPB{5}:=[[3.71134,0.657192,-1.97363],[2.85713,4.99008,-0.766597],[3.61741,15.0067,-0.772537],[0,0,0],[0,0,0]];
    
    !Ordinate Dimensions of Balusters (abreviated as odB)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdB{50}:=  [111,208,305,402,499,596,693,790,887,984
                        ,1081,1178,1275,1372,1469,1663,1760,1857,1954,2051
                        ,2148,2245,2342,2439,2536,2633,2730,2827,2924,3021
                        ,0,0,0,0,0,0,0,0,0,0
                        ,0,0,0,0,0,0,0,0,0,0];

    !Corrected top position of Balusters (abreviated as CorrBT)
    LOCAL PERS pos CorrBT{50}:=[[5.0544,-1.69826,-3.95199],[5.78417,-1.53499,-7.50557],[6.51831,-1.29531,-7.98237],[7.13482,-1.04939,-3.71911],[6.94,-1.04562,-4.97849]
                        ,[7.01205,-0.882735,-2.81125],[7.5095,-0.809705,-8.04678],[6.21894,-0.485212,-4.98488],[5.80101,0.0773793,-6.59661],[7.33462,0.486715,-6.28031]
                        ,[7.90029,0.967149,-8.598],[8.12843,1.53264,-7.15384],[2.86682,1.69465,-7.80111],[6.12473,1.9314,-6.19596],[5.56785,2.56407,-6.25611]
                        ,[5.16969,3.04282,-7.71022],[6.14259,3.51736,-7.22528],[4.76552,4.16178,-6.18162],[5.81409,4.64603,-9.2462],[5.33192,5.52777,-11.2643]
                        ,[5.73905,5.93586,-9.80302],[6.19123,6.74752,-6.17709],[6.1064,7.4,-4.97928],[5.15571,7.71863,-7.15318],[4.51935,8.20337,-7.46653]
                        ,[4.75985,8.85509,-9.16394],[3.86893,9.97428,-5.61941],[1.52397,10.383,-8.75174],[5.15352,11.1194,-11.839],[3.30022,12.1699,-9.2646]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];

    !Corrected bottom position of Balusters (abreviated as CorrBB)
    LOCAL PERS pos CorrBB{50}:=[[1.76083,0.42501,2.60593],[1.16458,0.743622,1.57311],[0.300489,0.907835,3.67186],[1.35023,0.906422,-0.443305],[3.85549,0.743169,-0.518958]
                        ,[1.25888,0.503544,-0.278344],[2.57389,0.825209,-2.43745],[0.865923,1.2284,-1.1583],[1.99177,1.54643,0.44342],[-0.522933,2.10435,-0.941743]
                        ,[1.57915,2.58178,0.107504],[0.771095,2.74436,-1.90136],[2.0634,3.7785,0.000156767],[-2.86148,4.17481,-4.60606],[1.80465,4.5813,-2.83877]
                        ,[0.999712,4.9026,-2.02598],[3.04949,5.39513,-5.08183],[2.87077,5.88059,-4.75722],[2.95492,6.44603,-2.27159],[1.35799,6.93283,-3.94891]
                        ,[2.31104,7.66299,-2.50133],[4.28226,8.3214,-2.7335],[3.45535,8.79606,-1.77324],[4.88571,9.1267,-3.22516],[3.75955,9.76632,-3.61824]
                        ,[3.78771,10.4186,-4.88292],[3.76434,11.3125,-4.20041],[6.01721,12.5187,-2.74419],[4.42057,14.1257,-3.19804],[6.93201,14.7708,-3.27852]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
                        
    LOCAL PERS num wobjA:=45; !Angle of table

    LOCAL PERS num partCounter:=20; !counter
    
    !**************************************************************************************************************    
    !**********************************************local variables*************************************************    
    !**************************************************************************************************************

    LOCAL VAR num PosAn; !Angle of Table
    LOCAL VAR num i;
    LOCAL VAR num j;
    LOCAL VAR num s; !for TPReadFK selector
    LOCAL VAR num testvar;
    
    LOCAL VAR pos testpos;
    LOCAL VAR pose PoseOffs;
    
    LOCAL VAR wobjdata WobjN;
    
    !**************************************************************************************************************    
    !**********************************************local Persistent*************************************************    
    !**************************************************************************************************************

    LOCAL PERS num dx:=60;    !X coordination of inside Down right edge of part
    LOCAL PERS num dy:=-590;  !Y coordination of Down right edge of part
    LOCAL PERS num dz:=1216;    !Z coordination of Down right edge of part

    !**************************************************************************************************************    
    !**************************Special robot targets to use in procedures and functions****************************    
    !**************************Search positioning targets aimed vertically to the part*****************************
    !*******************Weld positioning targets have special angels in different positions************************    
    !**************************************************************************************************************    

    !Reference Robtarget shows Down, inside part of frame (Abreviated as RefT page 25 of <<Sotware analysis handbook>> )
    LOCAL PERS robtarget RefT:= [[75,-590,1206],[0.5,-0.5,-0.5,0.5],[1,-2,1,0],[370,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT:= [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[950,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT0 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[2560,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for search positions and Weld_2G_H and Weld_2G_V
    LOCAL PERS robtarget RT1 := [[0,0,0],[0.95,0.04,-0.17,0.25],[1,-1,-1,0],[910,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT2 := [[0,0,0],[0.45,-0.76,-0.47,0.09],[0,-2,1,1],[3450,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget Rt3 := [[0,0,0],[0.76,-0.45,-0.09,0.47],[1,-1,-1,0],[3450,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[0,0,0],[0.22,-0.59,-0.76,0.19],[0,-2,1,1],[3370,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT5 := [[0,0,4],[0.45,0.76,-0.47,-0.09],[1,-1,1,0],[4110,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NW and Weld_3F_NW_L
    LOCAL PERS robtarget RT6 := [[0,0,0],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[4110,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NE and Weld_3F_NE_L

    LOCAL PERS robtarget RB1 := [[0,0,0],[0.54,-0.75,-0.28,0.21],[1,-1,-1,0],[3351,9E+09,9E+09,9E+09,-30,9E+09]];!wobjUse\ using for  Weld_ARC_N
    LOCAL PERS robtarget RB2 := [[0,0,0],[0.75,0.54,-0.21,-0.28],[0,-1,-2,0],[4011,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for  Weld_ARC_S
    
    !**************************************************************************************************************
    !************************************Main Robot targets used every where***************************************    
    !**************************************************************************************************************   
    
    LOCAL PERS wobjdata wobjSt1:=[FALSE,FALSE,"STN1",[[0,0,0],[1,0,0,0]],[[60,-590,1203],[1,0,0,0]]];

    !**************************************************************************************************************    
    !*************************************************OLD DATA*****************************************************    
    !**************************************************************************************************************    
    
    !I take this variables from old program, still doesn't have any idea about them
    !Maybe in the future try to change them!!!!
    !timeSFRJ2Sr for svejse tid.
    local var num time2SFRJ2S_1;
    local VAR clock TT3;
    local PERS num time2SFRJ2s_2:=0;
    local VAR clock TT4;
    !**************************************************************************************************************    
    
    PROC Railing_St1_ASA()
        
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!##################################################!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
        s:=0;
        TPErase;
        TPReadFK s, "Is it new Railing project?",
            "Yes",
            "No",
            "",
            "",
            "";       
        IF s=1 THEN
            ReadyToWork 1;
            DataEntry_St1_ASA;
            RailingJob;
        ELSE
            RailingJob;
        ENDIF
        
        EndOfWork;

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!##################################################!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
    ENDPROC
    
    !This procedure used for data entry ( refer to page 1 of sotware analysis handbook )    
    PROC DataEntry_St1_ASA()
        
        s:=0;
        WHILE s<>1 DO !Main Dimentions (Height, Lengh and Width)
            !Data entry
            TPErase;
            TPWrite "****************************************";
            TPWrite "************Main Data Entry************";
            TPWrite "****************************************";       
            TPReadNum Th,  "Enter Total Height";
            TPWrite "****************************************";
            TPReadNum h,  "Enter Height of railing (Back to Back)";
            TPWrite "****************************************";
            TPReadNum l, "Enter lengh of railing (Back to Back)";
            TPWrite "****************************************";
            TPWrite "Enter width of railing";
            TPReadNum w,  "(Normally width of top rail)";     
            
            !Data show
            TPErase;
            TPWrite "****************************************";
            TPWrite "************Main Data Entry************";
            TPWrite "****************************************";
            TPWrite "Total Height= "\Num:=Th;
            TPWrite "Height of railing (Back to Back)= "\Num:=h;
            TPWrite "Distance Between:";
            TPWrite "lengh of railing (Back to Back)= "\Num:=l;
            TPWrite "width of railing= "\Num:=w;
            
            !User acceptence
            TPReadFK s,
            "Are you sure about numbers?",
            "Yes",
            "No",
            "",
            "",
            "";
        ENDWHILE 
        
        s:=0;
        WHILE s<>1 DO !Ordinate dimensions of posts
            TPErase;
            TPWrite "****************************************";
            TPWrite "******Ordinate dimensions (Posts)*******";
            TPWrite "****************************************";
            TPReadNum n1,  "Enter Number of Posts";
            TPWrite "Enter ordinate dimensions of posts";
                FOR i FROM 1 TO n1 DO
                !TPWrite "text "\Num:=i;
                TPReadNum OdP{i}, "";            
                ENDFOR

            !User acceptence
            TPReadFK s,
            "Are you sure about numbers?",
            "Yes",
            "No",
            "",
            "",
            "";
        ENDWHILE

        s:=0;
        WHILE s<>1 DO !Ordinate dimensions of Balusters
            TPErase;
            TPWrite "****************************************";
            TPWrite "****Ordinate dimensions (Balusters)*****";
            TPWrite "****************************************";
            TPReadNum n2,  "Enter Number of Balusters";
            TPWrite "Enter ordinate dimensions of Balusters";
                FOR i FROM 1 TO n2 DO
                !TPWrite "text "\Num:=i;
                TPReadNum OdB{i}, "";            
                ENDFOR
                
            !User acceptence
            s:=0;
            TPReadFK s,
            "Are you sure about numbers?",
            "Yes",
            "No",
            "",
            "",
            "";
        ENDWHILE

        s:=0;
        WHILE s<>1 DO !Other dimentions    

            !Data entry
            TPErase;
            TPWrite "****************************************";
            TPWrite "************Other dimensions************";
            TPWrite "****************************************";
            TPWrite "Enter Flatbars thicknes";
            TPReadNum t1,  "(Top rail, Bottom rail, Posts)";
            TPWrite "****************************************";
            TPWrite "Enter Angle thicknes";
            TPReadNum t2,  "";
            TPWrite "****************************************";
            TPWrite "Enter Balusters thicknes";
            TPReadNum t3,  "(Roundbar diameter, Pipe width)";
            TPWrite "         Enter distance Between ";
            TPWrite "<<!!***LEFT SIDE***!!>> of first Baluster";
            TPWrite "           and disk surface";
            TPReadNum ds,  "";
            
    !Distance Between <<!!***LEFT SIDE***!!>> of first Baluster and disk surface
            

            !Data show
            TPErase;
            TPWrite "****************************************";
            TPWrite "************Other dimensions************";
            TPWrite "****************************************";
            TPWrite "Flatbars thicknes= "\Num:=t1;
            TPWrite "Angle thicknes= "\Num:=t2;
            TPWrite "Balusters thicknes= "\Num:=t3;
            TPWrite "Reference Distance= "\Num:=ds;
            
            !User acceptence
            s:=0;
            TPReadFK s,                
            "Are you sure about numbers?",
            "Yes",
            "No",
            "",
            "",
            "";
        ENDWHILE
        
        dx:=60;
        dy:=-(h-2*t1)/2;
        dz:=(ds-OdB{1}+OdP{1});
        RefT.trans.x:=dx+fdxSt1;
        RefT.trans.y:=dy+fdySt1;
        RefT.trans.z:=dz+fdzSt1;
        
        wobjSt1.oframe.trans.x:=wRot1.oframe.trans.x+dx;
        wobjSt1.oframe.trans.y:=wRot1.oframe.trans.y+dy;
        wobjSt1.oframe.trans.z:=wRot1.oframe.trans.z+dz;
        
    ENDPROC    
    
    LOCAL PROC RailingJob()
        
        StartStn1;

        MoveJ safeSt1_0,v1000,z50,tWeldGun\WObj:=wobj0;
        TPErase;
        TPWrite"!!!!You can load new parts for railing!!!!!";
        TPReadFK s, "!!!!!!!!press ok when ready to strat!!!!!!!",
            "ok",
            "",
            "",
            "",
            "";             
            s:=0;
            WHILE s<>2 DO
                
                WeldingFront_St1_ASA;
                
                UnloadTurn (FALSE);
                
                WeldingBack_St1_ASA;
                
                UnloadTurn (TRUE);
                partCounter:=partCounter+1;
                s:=0;
                TPErase;
                TPWrite "number of maded pieces= "\Num:=partCounter;
                TPReadFK s, "Do you want to continue made another?",
                    "Yes",
                    "No",
                    "",
                    "",
                    "";       
                IF s=1 THEN
                MoveJ safeSt1_0,v1000,z50,tWeldGun\WObj:=wobj0;
                TPErase;
                TPWrite     "!!!!You can load new parts for railing!!!!!";
                TPReadFK s, "!!!!!!!!press ok when ready to strat!!!!!!!",
                    "ok",
                    "",
                    "",
                    "",
                    "";      
                MoveJ safeSt1,v1000,z50,tWeldGun\WObj:=wobj0;
                ENDIF                
            ENDWHILE
    ENDPROC
    
    
    !This procedure welds on front side of railing
    PROC WeldingFront_St1_ASA()
        
        VAR wobjdata WobjN;
        VAR pose PoseOffs;
        
        PosSearchTop;
        
        SetDO doExhaustStn1,1;
   
        !Top first Post weld
        weldCorner 10,Odp{1},CorrPT{1},1;

        !Top middle Post weld
        FOR i FROM 2 TO n1-1 DO
            weldCorner 2, Odp{i},CorrPT{i},1;
        ENDFOR
        
        !Top last Post weld
        weldCorner 11, Odp{n1},CorrPT{n1},2;
        
        MoveJ Offs(overSt1,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot1;            
    
        !top side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},5);
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR

        !Move to other side
        MoveJ safeSt1_0, v1000, z50, tWeldGun;            
        
        SetDO doExhaustStn1,0;

        PosSearchBottom;
        
        SetDO doExhaustStn1,1;
        
        !Bottom first Post weld
        weldCorner 12,Odp{1},CorrPB{1},3;

        !Bottom middle Post weld
        FOR i FROM 2 TO n1-1 DO
            weldCorner 8, Odp{i},CorrPB{i},3;
        ENDFOR
        
        !Top last Post weld
        weldCorner 13, Odp{n1},CorrPB{n1},4;

        !Bottom side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},6);
            Weld_ARC_S WobjN,OdB{i},CorrBB{i},0;
        ENDFOR

        SetDO doExhaustStn1,0;
    
        Cleaning;
        StartStn1;
    
    ENDPROC
    
    !This procedure welds on back side of railing
    PROC WeldingBack_St1_ASA()
        
        VAR wobjdata WobjN;
        VAR pose PoseOffs;
        
        PosSearchTop;
        
        SetDO doExhaustStn1,1;
    
        !Top first Post weld
        WobjN:= WobjNew(Odp{1},1);
        Weld_2G_H WobjN,OdP{1},CorrPT{1},"R",w;

        !Top middle Post weld
        FOR i FROM 2 TO n1-1 DO
            WobjN:= WobjNew(Odp{i},1);
            Weld_2G_H WobjN,OdP{i},CorrPT{i},"R",t1;
        ENDFOR

        !Top last Post weld
        WobjN:= WobjNew(Odp{n1},2);
        Weld_2G_H WobjN,OdP{n1},CorrPT{n1},"L",w;

        MoveJ Offs(overSt1,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot1;            

        !top side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},5);
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR

        !Move to other side
        MoveJ safeSt1_0, v1000, z50, tWeldGun;            

        SetDO doExhaustStn1,0;
        
        PosSearchBottom;

        SetDO doExhaustStn1,1;
            
        !Bottom first Post weld
        WobjN:= WobjNew(Odp{1},3);
        Weld_2G_H WobjN,OdP{1},CorrPB{1},"R",w;

        !Bottom middle Post weld
        FOR i FROM 2 TO n1-1 DO
            WobjN:= WobjNew(Odp{i},3);
            Weld_2G_H WobjN , Odp{i}, CorrPB{i}, "R",t1;
        ENDFOR

        !Bottom last Post weld
        WobjN:= WobjNew(Odp{n1},4);
        Weld_2G_H WobjN,OdP{n1},CorrPB{n1},"L",w;

        !Bottom side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},6);
            Weld_ARC_S WobjN,OdB{i},CorrBB{i},0;
        ENDFOR
    
        
        SetDO doExhaustStn1,0;
    
        Cleaning;
        StartStn1;
    
    ENDPROC

    LOCAL PROC weldCorner(num cornerPositionNumber, num Odp, pos CorrP , num sp)
        IF cornerPositionNumber=1 THEN
            
            WobjN:= WobjNew(Odp,sp);
            Weld_2G_H WobjN,OdP,CorrP,"R",t1;
            Weld_3G_E WobjN,OdP,CorrP,PosAn;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn;
            
        ELSEIF cornerPositionNumber=2 THEN
            
            WobjN:= WobjNew(Odp,sp);
            Weld_2G_H WobjN,OdP,CorrP,"R",t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn;
            
        ELSEIF cornerPositionNumber=3 THEN
            
            WobjN:= WobjNew(Odp,sp);
            Weld_2G_H WobjN,OdP,CorrP,"L",t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn;
            Weld_3G_W WobjN,OdP,CorrP,PosAn;
            
        ELSEIF cornerPositionNumber=4 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_V WobjN,OdP,CorrP,"R";
            Weld_3F_NW WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn;
            
        ELSEIF cornerPositionNumber=5 THEN
            
            WobjN:= WobjNew(OdP,sp);
            !Weld_2G_H WobjN,OdP,CorrP,"R",t1;
            Weld_2G_V WobjN,OdP,CorrP,"L";
            Weld_3F_NW WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_2G_V WobjN,OdP,CorrP,"R";
            Weld_3F_NE WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z+t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn;
        
        ELSEIF cornerPositionNumber=6 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_V WobjN,OdP,CorrP,"L";
            Weld_3F_NE WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn;
            
        ELSEIF cornerPositionNumber=7 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_H WobjN,OdP,CorrP,"R",t1;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn;
            Weld_3G_E WobjN,OdP,CorrP,PosAn;
            
        ELSEIF cornerPositionNumber=8 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_H WobjN,OdP,CorrP,"R",t1;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn;
        
        ELSEIF cornerPositionNumber=9 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_H WobjN,OdP,CorrP,"L",t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn;
            Weld_3G_W WobjN,OdP,CorrP,PosAn;

        ELSEIF cornerPositionNumber=10 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_SE_L WobjN,OdP,CorrP,PosAn;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn;
            Weld_2G_H WobjN,OdP,CorrP,"R",t2;

        ELSEIF cornerPositionNumber=11 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_SE WobjN,OdP,CorrP,PosAn;
            Weld_3F_SW_L WobjN,OdP,CorrP,PosAn;
            Weld_2G_H WobjN,OdP,CorrP,"L",t2;

        ELSEIF cornerPositionNumber=12 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_NE_L WobjN,OdP,CorrP,PosAn;
            Weld_2G_H WobjN,OdP,CorrP,"R",t2;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn;

        ELSEIF cornerPositionNumber=13 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_NE WobjN,OdP,CorrP,PosAn;
            Weld_2G_H WobjN,OdP,CorrP,"L",t2;
            Weld_3F_NW_L WobjN,OdP,CorrP,PosAn;

        ENDIF
    ENDPROC
    
    !This procedure move robot to safeSt1 and let operator to clean
    LOCAL PROC Cleaning()
        
        MoveJ safeSt1_0, v1000, z50, tWeldGun\WObj:=wobj0;
        MoveJ HomeSt1_Load ,v1000,fine,tWeldGun\WObj:=wobj0;  
        s:=0;
        TPWrite     "*******Now you can clean weldings*******";
        TPReadFK s, "***press Finish when you complete ***",
            "Finish",
            "",
            "",
            "",
            "";       
        IF s = 1 THEN
        ENDIF
    ENDPROC
    
    !This procedure let operator to UnloadTurn, rotate and load again the railing on station
    LOCAL PROC UnloadTurn(bool UnloadTurn)

        IF UnloadTurn THEN
        MoveJ safeSt1,v1000,z50,tWeldGun\WObj:=wobj0;
        s:=0;
        TPReadFK s, "!!!Take care, Station is turning to UnloadTurn Railing?!!!",
            "Ok",
            "",
            "",
            "",
            "";       
        ELSE
        MoveJ safeSt1,v1000,z50,tWeldGun\WObj:=wobj0;
        s:=0;
        TPWrite     "!!!!!!!!Now you can turn Railig!!!!!!";
        TPReadFK s, "!!!!Take care, Station is turning!!!!",
            "Ok",
            "",
            "",
            "",
            ""; 
        MoveJ safeSt1_0,v1000,z50,tWeldGun\WObj:=wobj0;
        TPReadFK s, "!!!!!!!Are you ready to weld?!!!!!!!",
            "Ok",
            "",
            "",
            "",
            ""; 
        ENDIF
    ENDPROC

    !This procedure search all Top connections and store correct positions on position array
    LOCAL PROC PosSearchTop()
        
        MoveJ safeSt1, v1000, z50, tWeldGun;            
        GunClean;
        IF RobAtStation() = 1 THEN
            StartStn1;
        ELSE
            StartStn2;
        ENDIF
        
        SetWobjUse wobjUse,reft.trans.x,reft.trans.y,reft.trans.z;
        RT0.extax.eax_a:=1000+l/2;
        MoveJ Offs(RT0,500,h/2,l/2), v1000, z50, tWeldGun\WObj:=wobjUse;  
        
        s:=0;
        TPErase;
        TPReadFK s, "Check TCP (21.5mm)",
            "Ok",
            "",
            "",
            "",
            "";   

        wobjUse:=wobjSt1;
        
        !store the correctposition of top Posts
        FOR i FROM 1 TO n1-1 DO             
            CorrPT{i}:=PosCorr(Odp{i},1,0);         
        ENDFOR
        
        CorrPT{n1}:=PosCorr(odp{n1},2,0);

        !store the correctposition of top balusters
        FOR i FROM 1 TO n2 DO
            CorrBT{i}:=PosCorr(OdB{i},5,0);
        ENDFOR
        
        SetWobjUse wobjUse,reft.trans.x,reft.trans.y,reft.trans.z;
        RT0.extax.eax_a:=450+l/2;
        MoveJ Offs(RT0,500,h/2,l/2), v1000, z50, tWeldGun\WObj:=wobjUse;            
        
    ENDPROC
    
    !This procedure search all Bottom connections and store correct positions on position array
    LOCAL PROC PosSearchBottom()
        
        MoveJ safeSt1, v1000, z50, tWeldGun;            
        GunClean;
        IF RobAtStation() = 1 THEN
            StartStn1;
        ELSE
            StartStn2;
        ENDIF

        SetWobjUse wobjUse,reft.trans.x,reft.trans.y,reft.trans.z;
        RT0.extax.eax_a:=450+l/2;
        MoveJ Offs(RT0,500,h/2,l/2), v1000, z50, tWeldGun\WObj:=wobjUse;          
        
        s:=0;
        TPErase;
        TPReadFK s, "Check TCP (21.5 mm)",
            "Ok",
            "",
            "",
            "",
            "";   

        wobjUse:=wobjSt1;
        
        !store the correctposition of Bottom Posts
        FOR i FROM 1 TO n1-1 DO
            CorrPB{i}:=PosCorr(Odp{i},3,0);
        ENDFOR
        CorrPB{n1}:=PosCorr(odp{n1},4,0);

        !store the correctposition of bottom balusters
        FOR i FROM 1 TO n2 DO
            CorrBB{i}:=PosCorr(OdB{i},6,0);
        ENDFOR
        
        SetWobjUse wobjUse,reft.trans.x,reft.trans.y,reft.trans.z;
        RT0.extax.eax_a:=450+l/2;
        MoveJ Offs(RT0,500,h/2,l/2), v1000, z50, tWeldGun\WObj:=wobjUse;            
        
    ENDPROC
    
    
    !This Function used to make new Pos by using search_1D function (aplication manual AAB SMARTAC, page 81)
    !It has three Entries
    !dis=Ordinate dimensions
    !SP=Search Position ( refer to page 24 of sotware analysis handbook )
    !PosAn=Angle of rotating table
    !Syntax to use:     Pos:=PosCorr(Odp{2} , 1,10);
    LOCAL FUNC pos PosCorr(num dis , num SP, num PosAn)
        
        VAR pose RTSx;
        VAR pose RTSy;
        VAR pose RTSz;
        VAR num myX;
        VAR num myY;
        VAR num myZ;
        
        VAR wobjdata Cwobj; 
        VAR pos myPos; 

        !RT0.extax.eax_a:=450+dis+St1_Rail_Corr;
        RT0.extax.eax_a:=450+dis;

        !Set workObject to designated point calculated based on parameters entered by user
        wobjUse:=WobjNew (dis,sp);

        IF SP=1 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !RT0 := [[206.75,-30.25,152.95],[0.500043,-0.499989,-0.499952,0.500016],[1,-1,1,0],[2913.87,9E+09,9E+09,9E+09,-0.00051404,9E+09]];
            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start X correction
            !Movel Offs(RT0,20,-10,-t1/2),v200,z50,tWeldGun\WObj:=wobjUse;
            !Search_1D RTSx ,Offs(RT0,20,-10,-t1/2) , Offs(RT0,5,-10,-t1/2), v200, tWeldGun\WObj:=wobjUse;            
            !Movel Offs(RT0,200,0,0),v200,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movej Offs(RT0,50,-30,30), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,-5,-30,30) , Offs(RT0,-5,0,30), v200, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,-5,-30,30) , Offs(RT0,-5,-30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,-5,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
            MoveJ Offs(RT0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;

            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,26.5,t1/2,0) , Offs(RT0,6.5,t1/2,0), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;

            
        ELSEIF SP=2 THEN !For SP refer to page 24 of sotware analysis handbook
        
            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start X correction
            !Movel Offs(RT0,20,10,-t1/2),v200,z50,tWeldGun\WObj:=wobjUse;
            !Search_1D RTSx ,Offs(RT0,20,10,-t1/2) , Offs(RT0,5,10,-t1/2), v200, tWeldGun\WObj:=wobjUse;            
            !Movel Offs(RT0,20,0,0),v200,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movej Offs(RT0,100,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,-5,-30,-30) , Offs(RT0,-5,0,-30), v200, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,-5,-30,-30) , Offs(RT0,-5,-30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,-5,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movej Offs(RT0,200,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;

            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,20,-t3/2),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,26.5,t1/2,0) , Offs(RT0,6.5,t1/2,0), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,20,-t3/2),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;
            
        ELSEIF SP=3 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !RT:= [[74.30,18.32,-0.13],[0.500034,-0.500013,-0.499987,0.499966],[0,0,-1,0],[369.992,9E+09,9E+09,9E+09,0.000251827,9E+09]] ;
            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start X correction
            !Movel Offs(RT0,20,-5,t1/2),v200,z50,tWeldGun\WObj:=wobjUse;
            !Search_1D RTSx ,Offs(RT0,20,-5,t1/2) , Offs(RT0,-5,-5,t1/2), v200, tWeldGun\WObj:=wobjUse;            
            !Movel Offs(RT0,20,0,0),v200,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movej Offs(RT0,100,30,30),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,-5,30,30) , Offs(RT0,-5,0,30), v200, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,-5,30,30) , Offs(RT0,-5,30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,-5,30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movej Offs(RT0,200,30,30),v1000,z50,tWeldGun\WObj:=wobjUse; 
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;

            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,20,-t3/2),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,26.5,-t1/2,0) , Offs(RT0,6.5,-t1/2,0), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,20,-t3/2),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;

            
        ELSEIF SP=4 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !Set new robotTarget over new workObject and move torch 400 mm above it
            Movej Offs(RT0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start X correction
            !Movel Offs(RT0,20,10,t1/2),v200,z50,tWeldGun\WObj:=wobjUse;
            !Search_1D RTSx ,Offs(RT0,20,10,t1/2) , Offs(RT0,-5,10,t1/2), v200, tWeldGun\WObj:=wobjUse;            
            !Movel Offs(RT0,20,0,0),v200,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movej Offs(RT0,100,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,-5,30,-30) , Offs(RT0,-5,0,-30), v200, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,-5,30,-30) , Offs(RT0,-5,30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,-5,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movej Offs(RT0,200,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;

            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,20,-t3/2),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,26.5,-t1/2,0) , Offs(RT0,6.5,-t1/2,0), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,20,-t3/2),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;

        
        ELSEIF SP=5 THEN !For SP refer to page 24 of sotware analysis handbook

            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start X correction
            !Movel Offs(RT0,20,-(10+c1),-t3/2),v200,z50,tWeldGun\WObj:=wobjUse;
            !Search_1D RTSx ,Offs(RT0,20,-(10+c1),-t3/2) , Offs(RT0,-10,-(10+c1),-t3/2), v200, tWeldGun\WObj:=wobjUse;  
            
            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,0,-20,15),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2,-20,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,(w-t3)/2,-20,15) , Offs(RT0,(w-t3)/2,0,15), v200, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2-5,-20,20),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSz ,Offs(RT0,0,-20,20) , Offs(RT0,0,-20,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,100,-20,0),v1000,z50,tWeldGun\WObj:=wobjUse; 
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;

            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,-20,-t3/2),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,(w-t3)/2+6.5,-20,-t3/2) , Offs(RT0,6.5,-20,-t3/2), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,-20,-t3/2),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;
            
        ELSEIF SP=6 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !Set new robotTarget over new workObject and move torch 400 mm above it
            !MoveJ Offs(RT0,-5,300,-80),v200,z50,tWeldGun\WObj:=wobjUse;
            MoveJ Offs(RT0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
            
            !Move to a suitable point to start X correction
            !Movel Offs(RT0,20,10+c1,-t3/2),v200,z50,tWeldGun\WObj:=wobjUse;
            !Search_1D RTSx ,Offs(RT0,20,10+c1,-t3/2) , Offs(RT0,-5,10+c1,-t3/2), v200, tWeldGun\WObj:=wobjUse;            

            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,(w-t3)/2-5,20,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,(w-t3)/2,20,15) , Offs(RT0,(w-t3)/2,0,15), v200, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2-5,20,20),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSz ,Offs(RT0,0,20,20) , Offs(RT0,0,20,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,30,20,0),v1000,z50,tWeldGun\WObj:=wobjUse; 
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;
            
            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,20,-t3/2),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,(w-t3)/2+6.5,20,-t3/2) , Offs(RT0,6.5,20,-t3/2), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,20,-t3/2),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;

            
        ENDIF
        
        myPos:=[myX,myY,myZ];
        
        RETURN myPos;
        
    ENDFUNC
    
    
    !This Function used to make new workObject by using coorected point coordinations comes from PosCorr function
    !It has two Entries
    !myPosition = coorected point coordinations comes from PosCorr function
    !SP = Search Position ( refer to page 24 of sotware analysis handbook )
    !Syntax to use:     NewWorkobject:=WobjNew(PosCorr , 1);
    LOCAL FUNC wobjdata WobjNew(num myPosition , num sp)
        
        VAR wobjdata Cwobj; 
        VAR pose myPose; 

        Cwobj:=wobjSt1;

        IF SP=1 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+myPosition-OdP{1};
            
        ELSEIF SP=2 THEN !For SP refer to page 24 of sotware analysis handbook
        
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+(myPosition-2*OdP{1});
            
        ELSEIF SP=3 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+myPosition-OdP{1};
            
        ELSEIF SP=4 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+(myPosition-2*OdP{1});
        
        ELSEIF SP=5 THEN !For SP refer to page 24 of sotware analysis handbook

            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x-(w-t3)/2;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+myPosition-OdP{1};            
        ELSEIF SP=6 THEN !For SP refer to page 24 of sotware analysis handbook

            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x-(w-t3)/2;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+myPosition-OdP{1};
        ENDIF
        
        Cwobj.robhold:=wobjUse.robhold;
        Cwobj.ufprog:=wobjUse.ufprog;
        Cwobj.ufmec:=wobjUse.ufmec;
        Cwobj.uframe:=wobjUse.uframe;
        Cwobj.oframe:=wobjUse.oframe;

        RETURN Cwobj;
        
    ENDFUNC    

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_2G_H(wobjdata CorrectWobj , num position,pos correction, string LR, num lengh)
        
        PDispOff;
        PosAn:=0;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;
        
        RT0.trans:=[0,0,0];
        RT0.rot:=[0.5,-0.5,-0.5,0.5];
        RT0.robconf:=[1,-1,0,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT0.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT0.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !ConfJ\Off;
        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !ConfJ\On;
        
        !Welding top side
        IF LR="L" THEN
            !ArcLStart Offs(RT0,15,0,lengh/2),v100,smUse,weld_2F2G,fine,tWeldGun\WObj:=wobjUse;
            ArcLStart Offs(RT0,0,-2,2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,lengh-2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ELSE
            !ArcLStart Offs(RT0,15,0,-(lengh/2)),v100,smUse,weld_2F2G,fine,tWeldGun\WObj:=wobjUse;
            ArcLstart Offs(RT0,0,-2,-2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,-(lengh-2)),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ENDIF
        
        !Over weld position
        !ConfJ\Off;
        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !ConfJ\On;
        
        PDispOff;


        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC
    
    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_2G_V(wobjdata CorrectWobj , num position, pos correction, string LR)
        
        PDispOff;
        PosAn:=0;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;
        
        !Over weld position
        RT0.trans:=[0,0,0];
        RT0.rot:=[0.5,-0.5,-0.5,0.5];
        RT0.robconf:=[1,-1,0,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT0.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT0.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF

        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding top side
        IF LR="L" THEN
            ArcLStart Offs(RT0,0,0,0), v100,smUse,weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,-(t1),0), v100,smUse,weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;      
        ELSE
            ArcLStart Offs(RT0,0,0,0), v100,smUse,weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,-(t1),0),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ENDIF
        
        !Over weld position
        !ConfJ\Off;
        Movej Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !ConfJ\On;
        
        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!
        
    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3G_E(wobjdata CorrectWobj , num position, pos correction, num PosAn)

        PDispOff;
        PosAn:=0;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z-t1;
        

        !RT1:= [[0,0,0],[0.953158,0.0390022,-0.170968,0.246453],[1,-1,-1,0],[450,9E+09,9E+09,9E+09,0,9E+09]] ;
        RT1.trans:=[0,0,0];
        RT1.rot:=[0.95,0.04,-0.17,0.25];
        RT1.robconf:=[1,-1,-1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT1.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT1.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        Movej Offs(RT1,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT1,0,0,0), v100, smUse, weld_3G, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT1,-w,0,0), v100, smUse, weld_3G, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT1,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
        
        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC
    
    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3F_SW(wobjdata CorrectWobj  , num position, pos correction, num PosAn)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;
        
        
        !RT2:= [[0,0,0],[0.449513,-0.755714,-0.467429,0.0913496],[0,-2,1,1],[1864.98,9E+09,9E+09,9E+09,29.9993,9E+09]] ;
        RT2.trans:=[0,0,0];
        RT2.rot:=[0.45,-0.76,-0.47,0.09];
        RT2.robconf:=[0,-2,1,1];
        IF wobjUse.oframe.trans.y<0 THEN
            RT2.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT2.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        Movej Offs(RT2,200,-9,9),v1000,z50,tWeldGun\WObj:=wobjUse;
       
        !Welding side (PG3F)
        ArcLStart Offs(RT2,0,0,2), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT2,-W,0,2), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT2,200,-9,9),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 28 of sotware analysis handbook )
    LOCAL PROC Weld_3F_SW_L(wobjdata CorrectWobj  , num position, pos correction, num PosAn)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z+t2;

        RT2.trans:=[0,0,0];
        RT2.rot:=[0.45,-0.76,-0.47,0.09];
        RT2.robconf:=[0,-2,1,1];
        IF wobjUse.oframe.trans.y<0 THEN
            RT2.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT2.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        Movej Offs(RT2,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
       
        ArcLStart Offs(RT2,0,0,2), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT2,-W+t2,0,2), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart Offs(RT2,-W+t2+2,0,odp{1}), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT2,-W+t2+2,0,2), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT2,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3F_SE(wobjdata CorrectWobj , num position,pos correction, num PosAn)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;

        
        RT3.trans:=[0,0,0];
        RT3.rot:=[0.76,-0.45,-0.09,0.47];
        RT3.robconf:=[1,-1,-1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT3.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT3.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        Movej Offs(RT3,200,-8,-8),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT3,0,0,0), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT3,-w,0,0), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        
        !Over weld position
        Movel Offs(RT3,200,-8,-8),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3F_SE_L(wobjdata CorrectWobj , num position,pos correction, num PosAn)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z-t2;
        
        RT3.trans:=[0,0,0];
        RT3.rot:=[0.76,-0.45,-0.09,0.47];
        RT3.robconf:=[1,-1,-1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT3.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT3.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF        
        
        !Over weld position
        Movej Offs(RT3,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT3,0,0,0), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT3,-w+t2,0,0), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        !odp{1}-2 This -2 is for preventing from hit fixture
        ArcLStart Offs(RT3,-w+t2,0,-(odp{1})), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT3,-w+t2,0,-4), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT3,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC
    
    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3G_W(wobjdata CorrectWobj , num position, pos correction, num PosAn)
        
        PDispOff;
        PosAn:=0;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z+t1;


        !RT4:= [[9.91,0.07,0.04],[0.216429,-0.585711,-0.756516,0.194384],[0,1,-2,0],[1044.99,9E+09,9E+09,9E+09,0.000420616,9E+09]] ;
        RT4.trans:=[0,0,0];
        RT4.rot:=[0.22,-0.59,-0.76,0.19];
        RT4.robconf:=[0,-2,1,1];
        !RT4.robconf:=[0,1,-2,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT4.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT4.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        MoveJ Offs(RT4,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT4,0,0,0), v100, smUse, weld_3G, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT4,-w,0,0), v100, smUse, weld_3G, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT4,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!
        
    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3F_NW(wobjdata CorrectWobj , num position, pos correction, num PosAn)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;
        

        !RT5:= [[-2.83,3.59,0.11],[0.330995,0.88275,0.0400167,-0.331049],[0,-1,1,0],[1865.01,9E+09,9E+09,9E+09,0.000329907,9E+09]] ;
        RT5.trans:=[0,0,4];
        RT5.rot:=[0.45,0.76,-0.47,-0.09];
        RT5.robconf:=[1,-1,1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT5.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT5.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        MoveJ Offs(RT5,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT5,0,2,-4), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT5,-w,2,-4), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        
        !Over weld position
        Movel Offs(RT5,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3F_NW_L(wobjdata CorrectWobj , num position, pos correction, num PosAn)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z+t2;

        RT5.trans:=[0,0,4];
        RT5.rot:=[0.45,0.76,-0.47,-0.09];
        RT5.robconf:=[1,-1,1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT5.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT5.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        MoveJ Offs(RT5,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT5,0,0,0), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT5,-w+t2+2,0,0), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart Offs(RT5,-w+t2,2,odp{1}-6), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT5,-w+t2,2,2), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT5,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3F_NE(wobjdata CorrectWobj , num position,pos correction,num PosAn)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;
        
        !RT6:= [[-2.60,13.00,-13.30],[0.86,0.27,-0.40,0.12],[0,0,-2,0],[1750.01,9E+09,9E+09,9E+09,29.9989,9E+09]] ;
        RT6.trans:=[0,0,0];
        RT6.rot:=[0.76,0.45,-0.09,-0.47];
        RT6.robconf:=[0,0,-2,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT6.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT6.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        MoveJ Offs(RT6,200,13,-16),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT6,0,2,-2), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-w,2,-2), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        
        !Over weld position
        Movel Offs(RT6,200,13,-16),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3F_NE_L(wobjdata CorrectWobj , num position,pos correction,num PosAn)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z-t2;
        
        RT6.trans:=[0,0,0];
        RT6.rot:=[0.76,0.45,-0.09,-0.47];
        RT6.robconf:=[0,0,-2,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT6.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT6.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        MoveJ Offs(RT6,200,13,-16),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT6,0,2,-2), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-w+t2,2,-2), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart Offs(RT6,-w+t2+3,2,-OdP{1}), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-w+t2+3,2,-2), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT6,200,13,-16),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_ARC_N(wobjdata CorrectWobj , num position ,pos correction, num PosAn)

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        VAR robtarget p3;
        VAR robtarget p4;
        
        PDispOff;
        PosAn:=-30;
        
        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;

        !RB1:= [[9.98,-18.10,-0.35],[0.75894,-0.546435,-0.21249,0.283314],[1,1,-2,1],[484.003,9E+09,9E+09,9E+09,0.000251827,9E+09]] ;
        RB1.trans:=[0,0,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RB1.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RB1.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF

        RB1.rot:=[0.75,-0.54,-0.21,0.28];
        RB1.robconf:=[1,-1,-1,0];
        !RB1.robconf:=[1,1,-2,1];
        
        p0:=Offs(RB1,0,-2,-6);
        p2:=offs(p0,-(1.9),0,-(5.9));
        p3:=offs(p0,-(6.9),0,-(9.5));

        !Over weld position
        MoveJ Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p2, p3, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        MoveL Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        RB1.rot:=[0.54,-0.75,-0.28,0.21];
        p0:=Offs(RB1,0,-1,-6);
        p1:=Offs(p0,-(1.9),0,(5.9));
        p4:=Offs(p0,-(6.9),0,(9.5));

        !Over weld position
        MoveJ Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1, p4, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        MoveL Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        PDispOff;

        
    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_ARC_S(wobjdata CorrectWobj , num position, pos correction, num PosAn)
        
        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        VAR robtarget p3;
        VAR robtarget p4;
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;
        
        !RB2:= [[35.33,-6.62,0.51],[0.78,0.50,-0.19,-0.30],[0,-1,-2,0],[466.994,9E+09,9E+09,9E+09,0.000589406,9E+09]] ;
        RB2.trans:=[0,0,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RB2.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RB2.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        RB2.rot:=[0.54,0.75,-0.28,-0.21];
        RB2.robconf:=[0,0,-3,0];  
        
        !Over weld position
        p0:=Offs(RB2,0,2,-6); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs(p0,-(1.9),0,(5.9));
        p4:=Offs(p0,-(6.9),0,(9.5));
        MoveJ Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        !Welding
        ArcLStart p0, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1,p4, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        MoveL Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        RB2.rot:=[0.75,0.54,-0.21,-0.28];
        RB2.robconf:=[0,-1,-2,0];
        
        
        !Over weld position
        !p0:=Offs(RB2,18,-2,-(t3/2-1)+8);
        p0:=Offs(RB2,0,2,-6);
        p2:=offs(p0,-(1.9),0,-(5.9));
        p3:=offs(p0,-(6.9),0,-(9.5));
        MoveJ Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p2,p3, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        MoveL Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        PDispOff;

    ENDPROC
    
ENDMODULE