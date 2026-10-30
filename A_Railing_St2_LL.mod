MODULE A_Railing_St2_LL
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
    LOCAL PERS num l:=1510;

    !Final width of railing (Normally width of top rail)
    LOCAL PERS num w:=50;
    
    !Number of Posts
    LOCAL PERS num n1:=2;
    
    !Number of Balusters
    LOCAL PERS num n2:=15;
    
    !Distance Between <<!!***LEFT SIDE***!!>> of first Baluster scabilon and disk surface
    LOCAL PERS num ds:=1310;   

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
    LOCAL PERS num OdP{5}:=[10,1510,3120,0,0];
    
    !Corrected top position of Railing posts (abreviated as CorrPT)
    LOCAL PERS pos CorrPT{5}:=[[3.64025,-4.63746,-1.85176],[2.58692,-3.7301,-3.46707],[5.14712,12.2345,-6.38921],[0,0,0],[0,0,0]];
    
    !Corrected Bottom position of Railing posts (abreviated as CorrPB)
    LOCAL PERS pos CorrPB{5}:=[[5.73895,-1.35257,-4.60352],[4.15273,-0.873336,-5.00144],[3.61741,15.0067,-0.772537],[0,0,0],[0,0,0]];
    
    !Ordinate Dimensions of Balusters (abreviated as odB)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdB{50}:=  [82,179,276,373,470,567,664,761,858,955
                        ,1052,1149,1246,1343,1440,1663,1760,1857,1954,2051
                        ,2148,2245,2342,2439,2536,2633,2730,2827,2924,3021
                        ,0,0,0,0,0,0,0,0,0,0
                        ,0,0,0,0,0,0,0,0,0,0];

    !Corrected top position of Balusters (abreviated as CorrBT)
    LOCAL PERS pos CorrBT{50}:=[[0.132355,-4.86236,-3.31975],[0.114219,-5.10138,-6.20925],[1.89269,-5.09996,-3.80506],[2.86151,-4.46218,-3.72061],[2.61752,-3.98229,-5.56777]
                        ,[2.4578,-3.25268,-1.30734],[2.85593,-2.52232,-0.727488],[3.12247,-2.35632,-4.12507],[3.52855,-2.52303,-4.36229],[3.02847,-2.76606,-2.4379]
                        ,[0.605458,-3.09397,-3.87819],[2.07003,-3.33204,-3.95413],[0.769288,-3.57279,-2.83889],[0.928658,-3.73454,-4.44631],[-1.15689,-3.73767,-3.95804]
                        ,[5.16969,3.04282,-7.71022],[6.14259,3.51736,-7.22528],[4.76552,4.16178,-6.18162],[5.81409,4.64603,-9.2462],[5.33192,5.52777,-11.2643]
                        ,[5.73905,5.93586,-9.80302],[6.19123,6.74752,-6.17709],[6.1064,7.4,-4.97928],[5.15571,7.71863,-7.15318],[4.51935,8.20337,-7.46653]
                        ,[4.75985,8.85509,-9.16394],[3.86893,9.97428,-5.61941],[1.52397,10.383,-8.75174],[5.15352,11.1194,-11.839],[3.30022,12.1699,-9.2646]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];

    !Corrected bottom position of Balusters (abreviated as CorrBB)
    LOCAL PERS pos CorrBB{50}:=[[4.16673,-1.6894,-3.31707],[5.69754,-1.85624,-4.75461],[6.41653,-2.09663,-2.66476],[6.33951,-2.09773,-3.23665],[4.89208,-1.85382,-1.49915]
                        ,[4.81787,-1.20976,-6.05032],[6.17628,-1.84674,-7.33262],[6.34834,-1.12829,-3.70571],[6.34505,-0.808609,-3.37928],[5.47365,-1.04673,-3.77938]
                        ,[5.47274,-0.238113,-5.39614],[5.86393,-0.406567,-3.61948],[5.15739,-0.40706,-5.06431],[5.78864,-0.236448,-1.66785],[3.6267,-0.648498,-3.7001]
                        ,[1.50984,3.69824,-0.591231],[6.35158,4.09773,0.529034],[1.57479,4.25962,-2.74032],[3.99597,4.58265,-2.09918],[3.04678,5.15082,-2.74977]
                        ,[4.65497,5.72337,-1.60214],[3.59851,6.37262,-2.63422],[5.07144,6.93739,-1.03502],[2.9797,7.5848,0.505916],[4.7385,8.56011,-1.06349]
                        ,[2.73368,9.45195,-1.03846],[5.37284,10.2613,-0.845399],[6.04398,11.0792,-5.07741],[4.7445,12.0427,-3.10758],[4.89069,12.9347,-3.62635]
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
    LOCAL PERS num dz:=1981;    !Z coordination of Down right edge of part

    !**************************************************************************************************************    
    !**************************Special robot targets to use in procedures and functions****************************    
    !**************************Search positioning targets aimed vertically to the part*****************************
    !*******************Weld positioning targets have special angels in different positions************************    
    !**************************************************************************************************************    

    !Reference Robtarget shows Down, inside part of frame (Abreviated as RefT page 25 of <<Sotware analysis handbook>> )
    LOCAL PERS robtarget RefT:= [[75,-590,1971],[0.5,-0.5,-0.5,0.5],[1,-2,1,0],[370,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT:= [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[950,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT0 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[2715,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for search positions and Weld_2G_H and Weld_2G_V
    LOCAL PERS robtarget RT1 := [[0,0,-10],[0.95,0.04,-0.17,0.25],[1,-1,-1,0],[1225,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT2 := [[0,0,0],[0.45,-0.76,-0.47,0.09],[0,-2,1,1],[1975,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget Rt3 := [[0,0,0],[0.76,-0.45,-0.09,0.47],[1,-1,-1,0],[3215,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[0,0,10],[0.22,-0.59,-0.76,0.19],[0,-2,1,1],[2715,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT5 := [[0,0,0],[0.45,0.76,-0.47,-0.09],[1,-1,1,0],[1225,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NW and Weld_3F_NW_L
    LOCAL PERS robtarget RT6 := [[0,0,5],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[2715,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NE and Weld_3F_NE_L

    LOCAL PERS robtarget RB1 := [[0,4,3],[0.54,-0.75,-0.28,0.21],[1,-1,-1,0],[3155,9E+09,9E+09,9E+09,-30,9E+09]];!wobjUse\ using for  Weld_ARC_N
    LOCAL PERS robtarget RB2 := [[0,0,0],[0.75,0.54,-0.21,-0.28],[0,-1,-2,0],[2655,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for  Weld_ARC_S
    
    !**************************************************************************************************************
    !************************************Main Robot targets used every where***************************************    
    !**************************************************************************************************************   
    
    LOCAL PERS wobjdata wobjSt2:=[FALSE,FALSE,"STN2",[[0,0,0],[1,0,0,0]],[[60,-590,1225],[1,0,0,0]]];

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
    
    PROC Railing_St2_LL()
        
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
            ReadyToWork 2;
            DataEntry_St2_SS;
            RailingJob;
        ELSE
            RailingJob;
        ENDIF
        
        EndOfWork;

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!##################################################!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
    ENDPROC
    
    !This procedure used for data entry ( refer to page 1 of sotware analysis handbook )    
    PROC DataEntry_St2_LL()
        
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
!            TPWrite "Enter Angle thicknes";
!            TPReadNum t2,  "";
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
!            TPWrite "Angle thicknes= "\Num:=t2;
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
        RefT.trans.x:=dx+fdxSt2;
        RefT.trans.y:=dy+fdySt2;
        RefT.trans.z:=dz+fdzSt2;
        
        wobjSt2.oframe.trans.x:=wRot2.oframe.trans.x+dx;
        wobjSt2.oframe.trans.y:=wRot2.oframe.trans.y+dy;
        wobjSt2.oframe.trans.z:=wRot2.oframe.trans.z+dz;
        
    ENDPROC    
    
    LOCAL PROC RailingJob()
        
        StartStn2;

        MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;
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
                
                WeldingFront_St2_SS;
                
                UnloadTurn (FALSE);
                
                WeldingBack_St2_SS;
                
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
                MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;
                TPErase;
                TPWrite     "!!!!You can load new parts for railing!!!!!";
                TPReadFK s, "!!!!!!!!press ok when ready to strat!!!!!!!",
                    "ok",
                    "",
                    "",
                    "",
                    "";      
                MoveJ safeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
                ENDIF                
            ENDWHILE
    ENDPROC
    
    
    !This procedure welds on front side of railing
    PROC WeldingFront_St2_LL()
        
        VAR wobjdata WobjN;
        VAR pose PoseOffs;
        
        PosSearchTop;
        
        SetDO doExhaustStn2,1;
   
        !Top first Post weld
        weldCorner 1,Odp{1},CorrPT{1},1;

        !Top last Post weld
        weldCorner 3, Odp{n1},CorrPT{n1},2;
        
        MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;            
    
        !top side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},5);
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR
 
        SetDO doExhaustStn2,0;

        !Move to other side
        MoveJ safeSt2_0, v1000, z50, tWeldGun;            

        PosSearchBottom;
        
        SetDO doExhaustStn2,1;
        
        !Bottom first Post weld
        weldCorner 4,Odp{1},CorrPB{1},3;

        !Top last Post weld
        weldCorner 6, Odp{n1},CorrPB{n1},4;

        !Bottom side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},6);
            Weld_ARC_S WobjN,OdB{i},CorrBB{i},0;
        ENDFOR

        SetDO doExhaustStn2,0;
    
        Cleaning;
        StartStn2;
    
    ENDPROC
    
    !This procedure welds on back side of railing
    PROC WeldingBack_St2_LL()
        
        VAR wobjdata WobjN;
        VAR pose PoseOffs;
        
        PosSearchTop;
        
        SetDO doExhaustStn2,1;
    
        !Top first Post weld
        WobjN:= WobjNew(Odp{1},1);
        Weld_2G_H WobjN,OdP{1},CorrPT{1},"R",t1;

        !Top last Post weld
        WobjN:= WobjNew(Odp{n1},2);
        Weld_2G_H WobjN,OdP{n1},CorrPT{n1},"L",t1;

        MoveJ Offs(overSt2,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot2;            

        !top side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},5);
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR

        SetDO doExhaustStn2,0;

        !Move to other side
        MoveJ safeSt2_0, v1000, z50, tWeldGun;            

        PosSearchBottom;

        SetDO doExhaustStn2,1;
            
        !Bottom first Post weld
        WobjN:= WobjNew(Odp{1},3);
        Weld_2G_V WobjN,OdP{1},CorrPB{1},"R";

        !Bottom last Post weld
        WobjN:= WobjNew(Odp{n1},4);
        Weld_2G_V WobjN,OdP{n1},CorrPB{n1},"L";

        !Bottom side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},6);
            Weld_ARC_S WobjN,OdB{i},CorrBB{i},0;
        ENDFOR
    
        
        SetDO doExhaustStn2,0;
    
        Cleaning;
        StartStn2;
    
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
        
        MoveJ safeSt2_0, v1000, z50, tWeldGun\WObj:=wobj0;
        MoveJ HomeSt2_Load ,v1000,fine,tWeldGun\WObj:=wobj0;  
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
        MoveJ safeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
        s:=0;
        TPReadFK s, "!!!Take care, Station is turning to UnloadTurn Railing?!!!",
            "Ok",
            "",
            "",
            "",
            "";       
        ELSE
        MoveJ safeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
        s:=0;
        TPWrite     "!!!!!!!!Now you can turn Railig!!!!!!";
        TPReadFK s, "!!!!Take care, Station is turning!!!!",
            "Ok",
            "",
            "",
            "",
            ""; 
        MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;
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
        
        MoveJ safeSt2, v1000, z50, tWeldGun;            
        GunClean;
        StartStn2;
        
        MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;
        !MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun;            
        
        s:=0;
        TPErase;
        TPReadFK s, "Check TCP (21.5mm)",
            "Ok",
            "",
            "",
            "",
            "";   

        wobjUse:=wobjSt2;
        
        !store the correctposition of top Posts
        FOR i FROM 1 TO n1-1 DO             
            CorrPT{i}:=PosCorr(Odp{i},1,0);         
        ENDFOR
        
        CorrPT{n1}:=PosCorr(odp{n1},2,0);

        !store the correctposition of top balusters
        FOR i FROM 1 TO n2 DO
            CorrBT{i}:=PosCorr(OdB{i},5,0);
        ENDFOR
        
        MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;            
        
    ENDPROC
    
    !This procedure search all Bottom connections and store correct positions on position array
    LOCAL PROC PosSearchBottom()
        
        MoveJ safeSt2, v1000, z50, tWeldGun;            
        GunClean;
        StartStn2;

        MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;            
        
        s:=0;
        TPErase;
        TPReadFK s, "Check TCP (21.5 mm)",
            "Ok",
            "",
            "",
            "",
            "";   

        wobjUse:=wobjSt2;
        
        !store the correctposition of Bottom Posts
        FOR i FROM 1 TO n1-1 DO
            CorrPB{i}:=PosCorr(Odp{i},3,0);
        ENDFOR
        CorrPB{n1}:=PosCorr(odp{n1},4,0);

        !store the correctposition of bottom balusters
        FOR i FROM 1 TO n2 DO
            CorrBB{i}:=PosCorr(OdB{i},6,0);
        ENDFOR
        
        MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;        
        
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

        !Set workObject to designated point calculated based on parameters entered by user
        wobjUse:=WobjNew (dis,sp);
        
        IF wobjUse.oframe.trans.y<0 THEN
            RT0.extax.eax_a:=wobjUse.oframe.trans.z;
        ELSE
            RT0.extax.eax_a:=wobjUse.oframe.trans.z+500;
        ENDIF
        
        
        
        !RT0.extax.eax_a:=wobjUse.oframe.trans.z+500;

        IF SP=1 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !RT0 := [[206.75,-30.25,152.95],[0.500043,-0.499989,-0.499952,0.500016],[1,-1,1,0],[2913.87,9E+09,9E+09,9E+09,-0.00051404,9E+09]];
            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start X correction
            !Movel Offs(RT0,20,-10,-t1/2),v200,z50,tWeldGun\WObj:=wobjUse;
            !Search_1D RTSx ,Offs(RT0,20,-10,-t1/2) , Offs(RT0,5,-10,-t1/2), v200, tWeldGun\WObj:=wobjUse;            
            !Movel Offs(RT0,200,0,0),v200,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movej Offs(RT0,0,-30,30), v1000, fine, tWeldGun\WObj:=wobjUse;
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
            !Movel Offs(RT0,20,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
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

        Cwobj:=wobjSt2;

        IF SP=1 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt2.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt2.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjSt2.oframe.trans.z+myPosition-OdP{1};
            
        ELSEIF SP=2 THEN !For SP refer to page 24 of sotware analysis handbook
        
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt2.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt2.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjSt2.oframe.trans.z+(myPosition-2*OdP{1});
            
        ELSEIF SP=3 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt2.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt2.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt2.oframe.trans.z+myPosition-OdP{1};
            
        ELSEIF SP=4 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt2.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt2.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt2.oframe.trans.z+(myPosition-2*OdP{1});
        
        ELSEIF SP=5 THEN !For SP refer to page 24 of sotware analysis handbook

            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt2.oframe.trans.x-(w-t3)/2;
            wobjUse.oframe.trans.y:=wobjSt2.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjSt2.oframe.trans.z+myPosition-OdP{1};            
        ELSEIF SP=6 THEN !For SP refer to page 24 of sotware analysis handbook

            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt2.oframe.trans.x-(w-t3)/2;
            wobjUse.oframe.trans.y:=wobjSt2.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt2.oframe.trans.z+myPosition-OdP{1};
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
        PDispSet [correction,[1,0,0,0]];
        
        RT0.trans:=[0,0,0];
        RT0.rot:=[0.5,-0.5,-0.5,0.5];
        RT0.robconf:=[1,-1,0,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT0.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT0.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding top side
        IF LR="L" THEN
            ArcLStart Offs(RT0,0,0,2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,lengh-2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ELSE
            !ArcLStart Offs(RT0,15,0,-(lengh/2)),v100,smUse,weld_2F2G,fine,tWeldGun\WObj:=wobjUse;
            ArcLstart Offs(RT0,0,0,-2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
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
        PDispSet [correction,[1,0,0,0]];
        
        !Over weld position
        RT0.trans:=[0,0,0];
        RT0.rot:=[0.5,-0.5,-0.5,0.5];
        RT0.robconf:=[1,-1,0,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT0.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT0.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PDispSet [correction,[1,0,0,0]];
        

        !RT1:= [[0,0,0],[0.953158,0.0390022,-0.170968,0.246453],[1,-1,-1,0],[450,9E+09,9E+09,9E+09,0,9E+09]] ;
        RT1.trans:=[0,0,-odp{1}];
        RT1.rot:=[0.95,0.04,-0.17,0.25];
        RT1.robconf:=[1,-1,-1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT1.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT1.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PDispSet [correction,[1,0,0,0]];
        
        
        !RT2:= [[0,0,0],[0.449513,-0.755714,-0.467429,0.0913496],[0,-2,1,1],[1864.98,9E+09,9E+09,9E+09,29.9993,9E+09]] ;
        RT2.trans:=[0,0,0];
        RT2.rot:=[0.45,-0.76,-0.47,0.09];
        RT2.robconf:=[0,-2,1,1];
        IF wobjUse.oframe.trans.y<0 THEN
            RT2.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT2.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PDispSet [correction,[1,0,0,0]];

        RT2.trans:=[0,0,0];
        RT2.rot:=[0.45,-0.76,-0.47,0.09];
        RT2.robconf:=[0,-2,1,1];
        IF wobjUse.oframe.trans.y<0 THEN
            RT2.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT2.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PDispSet [correction,[1,0,0,0]];

        
        RT3.trans:=[0,0,0];
        RT3.rot:=[0.76,-0.45,-0.09,0.47];
        RT3.robconf:=[1,-1,-1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT3.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT3.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PDispSet [correction,[1,0,0,0]];
        
        RT3.trans:=[0,0,0];
        RT3.rot:=[0.76,-0.45,-0.09,0.47];
        RT3.robconf:=[1,-1,-1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT3.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT3.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PDispSet [correction,[1,0,0,0]];


        !RT4:= [[9.91,0.07,0.04],[0.216429,-0.585711,-0.756516,0.194384],[0,1,-2,0],[1044.99,9E+09,9E+09,9E+09,0.000420616,9E+09]] ;
        RT4.trans:=[0,0,odp{1}];
        RT4.rot:=[0.22,-0.59,-0.76,0.19];
        RT4.robconf:=[0,-2,1,1];
        !RT4.robconf:=[0,1,-2,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT4.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT4.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PDispSet [correction,[1,0,0,0]];
        

        !RT5:= [[-2.83,3.59,0.11],[0.330995,0.88275,0.0400167,-0.331049],[0,-1,1,0],[1865.01,9E+09,9E+09,9E+09,0.000329907,9E+09]] ;
        RT5.trans:=[0,0,0];
        RT5.rot:=[0.45,0.76,-0.47,-0.09];
        RT5.robconf:=[1,-1,1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT5.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT5.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        MoveJ Offs(RT5,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT5,0,0,0), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT5,-w,0,0), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        
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
        PDispSet [correction,[1,0,0,0]];

        RT5.trans:=[0,0,0];
        RT5.rot:=[0.45,0.76,-0.47,-0.09];
        RT5.robconf:=[1,-1,1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT5.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT5.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PDispSet [correction,[1,0,0,0]];
        
        !RT6:= [[-2.60,13.00,-13.30],[0.86,0.27,-0.40,0.12],[0,0,-2,0],[1750.01,9E+09,9E+09,9E+09,29.9989,9E+09]] ;
        RT6.trans:=[0,0,5];
        RT6.rot:=[0.76,0.45,-0.09,-0.47];
        RT6.robconf:=[0,0,-2,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT6.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT6.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        MoveJ Offs(RT6,200,13,-16),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT6,0,0,0), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-w,0,0), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        
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
        PDispSet [correction,[1,0,0,0]];
        
        RT6.trans:=[0,0,0];
        RT6.rot:=[0.76,0.45,-0.09,-0.47];
        RT6.robconf:=[0,0,-2,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT6.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT6.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PDispset [correction,[1,0,0,0]];

        !RB1:= [[9.98,-18.10,-0.35],[0.75894,-0.546435,-0.21249,0.283314],[1,1,-2,1],[484.003,9E+09,9E+09,9E+09,0.000251827,9E+09]] ;
        RB1.trans:=[0,3,3];
        IF wobjUse.oframe.trans.y<0 THEN
            RB1.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RB1.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF

        RB1.rot:=[0.75,-0.54,-0.21,0.28];
        !RB1.rot:=[0.5,-0.5,-0.5,0.5];
        RB1.robconf:=[1,-1,-1,0];
        !RB1.robconf:=[1,1,-2,1];
        
        p0:=Offs(RB1,0,0,-5.5);
        p2:=offs(p0,-(1.9),0,-(3));
        p3:=offs(p0,-(8),0,-(8));

        !Over weld position
        MoveJ Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p2, p3, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        MoveL Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        RB1.rot:=[0.54,-0.75,-0.28,0.21];
        p0:=Offs(RB1,0,0,-6.5);
        p1:=Offs(p0,-(1.9),0,(3));
        p4:=Offs(p0,-(8),0,(8));

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
        PDispSet [correction,[1,0,0,0]];
        
        !RB2:= [[35.33,-6.62,0.51],[0.78,0.50,-0.19,-0.30],[0,-1,-2,0],[466.994,9E+09,9E+09,9E+09,0.000589406,9E+09]] ;
        RB2.trans:=[0,0,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RB2.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RB2.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        RB2.rot:=[0.54,0.75,-0.28,-0.21];
        RB2.robconf:=[0,0,-3,0];  
        
        !Over weld position
        p0:=Offs(RB2,0,0,-6.5); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs(p0,-(1.9),0,(3));
        p4:=Offs(p0,-(8),0,(8));
        MoveJ Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        !Welding
        ArcLStart p0, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1,p4, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        MoveL Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        RB2.rot:=[0.75,0.54,-0.21,-0.28];
        RB2.robconf:=[0,-1,-2,0];
        
        
        !Over weld position
        !p0:=Offs(RB2,18,-2,-(t3/2-1)+8);
        p0:=Offs(RB2,0,0,-5.5);
        p2:=offs(p0,-(1.9),0,-(3));
        p3:=offs(p0,-(8),0,-(8));
        MoveJ Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p2,p3, v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        MoveL Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        PDispOff;

    ENDPROC
        
ENDMODULE