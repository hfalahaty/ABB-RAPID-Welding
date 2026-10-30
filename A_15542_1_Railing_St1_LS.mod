MODULE A_15542_1_Railing_St1_LS
    
    !You can find explanation about the variables along with drawings, on which the variables are marked, in <<sotware analysis handbook>> pages 1 and 10.
    !You can find this document on system's backup USB, inside of documents folder.
    
    LOCAL PERS num hashem:=0; !Just for Spacing, Also this is my signature in all my project!

    !**************************************************************************************************************      
    !********************************************project no. 15542-1-IAM-0015**************************************  
    !************************************************************************************************************** 
    
    !**************************************************************************************************************    
    !********************************************Railing Dimention*************************************************    
    !**************************************************************************************************************      
    
    !Total Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num Th:=1200;

    !Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num h:=950;
    
    !Total lengh of railing (back to back)
    LOCAL PERS num l:=3872;

    !Final width of railing (Normally width of top rail)
    LOCAL PERS num w:=50;
    
    !Number of Posts
    LOCAL PERS num n1:=4;
    
    !Number of Balusters
    LOCAL PERS num n2:=39;
    
    !Distance Between <<!!***Right SIDE***!!>> of first post scabilon and disk surface
    LOCAL PERS num ds:=787;   

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
    LOCAL PERS num OdP{5}:=[0,1287,2574,3862,0];
    
    !Corrected top position of Railing posts (abreviated as CorrPT)
    LOCAL PERS pos CorrPT{5}:=[[0.644591,12.8716,3.53712],[7.24664,8.28941,4.82101],[5.88282,5.3041,5.32728],[3.46652,5.44774,-6.89126],[0,0,0]];
    
    !Corrected Bottom position of Railing posts (abreviated as CorrPB)
    LOCAL PERS pos CorrPB{5}:=[[5.75328,12.921,1.29749],[6.80128,7.41157,2.07634],[5.76479,5.57305,2.57381],[3.25403,5.15123,-8.54768],[0,0,0]];
    
    !Ordinate Dimensions of Balusters (abreviated as odB)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdB{50}:=  [91,183,275,367,459,551,643,735,827,919
                        ,1011,1103,1195,1378,1470,1562,1654,1746,1838,1930
                        ,2022,2114,2206,2298,2390,2482,2665,2757,2849,2941
                        ,3033,3125,3217,3309,3401,3493,3585,3677,3769,0
                        ,0,0,0,0,0,0,0,0,0,0];

    !Corrected top position of Balusters (abreviated as CorrBT)
    LOCAL PERS pos CorrBT{50}:=[[1.0333,12.9509,-1.15543],[1.74289,13.1117,-6.29256],[2.14297,12.8695,-7.65585],[3.43035,12.7087,-4.83882],[3.61518,12.3834,-2.91214]
                        ,[3.92951,12.148,-2.27624],[4.80006,12.0637,-2.51389],[6.5717,11.823,-0.526605],[5.68986,11.6657,-0.993484],[5.23088,10.775,1.11774]
                        ,[6.10547,10.1283,0.465479],[6.35127,9.80659,1.77572],[4.17157,9.24818,2.02556],[3.94238,7.79776,0.577893],[4.58338,7.63555,0.333875]
                        ,[7.31623,7.55283,2.12638],[7.25437,7.47569,3.7926],[7.73287,7.23806,3.96257],[5.30469,6.99953,4.85908],[5.37367,6.8352,3.40471]
                        ,[7.81151,6.83497,4.37547],[4.2389,6.83375,5.17543],[7.00864,6.75449,4.93913],[6.11128,6.67443,5.66795],[3.91839,6.35316,6.78971]
                        ,[3.51512,5.94963,5.0094],[4.40235,5.62383,2.51661],[5.12711,5.62425,3.81449],[4.40887,5.37626,3.47938],[4.88608,5.21934,4.68502]
                        ,[4.00655,4.82084,4.13574],[4.72979,4.65877,3.07364],[4.16021,4.41853,5.25286],[4.00533,4.34011,4.60936],[3.03086,5.3807,3.97081]
                        ,[3.11263,4.98134,5.9635],[3.11228,5.38131,5.55143],[2.20619,5.46267,6.28797],[2.05616,5.62759,2.6828],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];

    !Corrected bottom position of Balusters (abreviated as CorrBB)
    LOCAL PERS pos CorrBB{50}:=[[4.41047,13.0124,-3.26126],[4.17782,13.0914,-5.43343],[2.31593,13.1771,-5.58589],[3.52374,13.1768,-5.26947],[5.04633,12.93,-3.65452]
                        ,[5.47498,11.9139,-2.46041],[5.71588,12.2125,-3.65367],[1.6879,11.7423,-1.97876],[4.6751,11.0017,-1.55836],[5.00252,10.2608,-3.57302]
                        ,[4.75792,9.6182,-1.60243],[4.34184,8.96645,-1.43745],[5.54172,8.23185,-1.28017],[5.9589,7.35452,0.158965],[4.89962,7.26989,1.76992]
                        ,[5.13825,7.0267,1.11239],[4.82493,6.94429,-0.239877],[5.62554,6.70418,1.03144],[6.11226,6.70011,0.493353],[6.27266,6.6241,2.57195]
                        ,[6.02321,6.62384,5.54339],[6.11489,6.62302,3.78084],[3.38768,6.70846,5.47552],[6.19282,6.79039,6.52681],[6.35229,6.54228,5.11719]
                        ,[4.26481,5.96106,4.89803],[3.69453,5.55517,4.10509],[5.80579,5.54899,2.88159],[5.82507,5.31009,3.21194],[4.75267,5.30907,2.30125]
                        ,[6.61001,5.30954,4.18974],[5.40226,5.46755,6.18328],[5.48902,5.55136,2.62413],[4.59904,5.31075,2.86815],[4.35549,5.46983,2.88467]
                        ,[2.88932,5.47146,4.59753],[2.32557,5.39144,4.83604],[1.83861,5.47065,5.2082],[1.50098,5.15038,3.04033],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
                        
    LOCAL PERS num wobjA:=45; !Angle of table

    LOCAL PERS num partCounter:=14; !counter
    
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
    LOCAL PERS num dy:=-465;  !Y coordination of Down right edge of part
    LOCAL PERS num dz:=797;    !Z coordination of Down right edge of part

    !**************************************************************************************************************    
    !**************************Special robot targets to use in procedures and functions****************************    
    !**************************Search positioning targets aimed vertically to the part*****************************
    !*******************Weld positioning targets have special angels in different positions************************    
    !**************************************************************************************************************    

    !Reference Robtarget shows Down, inside part of frame (Abreviated as RefT page 25 of <<Sotware analysis handbook>> )
    LOCAL PERS robtarget RefT:= [[75,-465,787],[0.5,-0.5,-0.5,0.5],[1,-2,1,0],[370,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT:= [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[950,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT0 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[4637.45,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for search positions and Weld_2G_H and Weld_2G_V
    LOCAL PERS robtarget RT1 := [[-2,0,-8],[0.93,0.19,-0.19,0.25],[1,-1,-1,0],[783.847,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT2 := [[0,-2,2],[0.45,-0.76,-0.47,0.09],[0,-2,1,1],[3361.54,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget Rt3 := [[0,-2,-4],[0.76,-0.45,-0.09,0.47],[1,-1,-1,0],[4637.93,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[-1,0,12],[0.3,-0.6,-0.73,0.13],[0,-2,1,1],[5385.99,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT5 := [[0,2,0],[0.45,0.76,-0.47,-0.09],[1,-1,1,0],[3361.54,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NW and Weld_3F_NW_L
    LOCAL PERS robtarget RT6 := [[0,3,-5],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[4637.93,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NE and Weld_3F_NE_L

    LOCAL PERS robtarget RB1 := [[-1,3,-5],[0.54,-0.75,-0.28,0.21],[1,-1,-1,0],[5057.68,9E+09,9E+09,9E+09,-30,9E+09]];!wobjUse\ using for  Weld_ARC_N
    LOCAL PERS robtarget RB2 := [[-2,0,-8],[0.75,0.54,-0.21,-0.28],[0,-1,-2,0],[4558.04,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for  Weld_ARC_S
    
    !**************************************************************************************************************
    !************************************Main Robot targets used every where***************************************    
    !**************************************************************************************************************   
    
    LOCAL PERS wobjdata wobjSt1:=[FALSE,FALSE,"STN1",[[0,0,0],[1,0,0,0]],[[61,-468,784],[1,0,0,0]]];

    !**************************************************************************************************************    
    !*************************************************OLD DATA*****************************************************    
    !**************************************************************************************************************    
     
    PROC Main_15542_1_Railing_St1_LS()
        
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
            RailingJob TRUE;
        ELSE
            RailingJob FALSE;
        ENDIF
        
        EndOfWork;

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!##################################################!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!     
        
    ENDPROC

    !This procedure used for data entry ( refer to page 1 of sotware analysis handbook )    
    LOCAL PROC DataEntry_St1_LS()
        
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
        dz:=ds+t1;
        RefT.trans.x:=dx+fdxSt1;
        RefT.trans.y:=dy+fdySt1;
        RefT.trans.z:=dz+fdzSt1;
        
        SetWobjUse wRot1,dx,dy,dz;
        wobjSt1:=wobjUse;
        wobjSt1.oframe.trans:=wRot1.oframe.trans+[dx,dy,dz];
        
        
        !MoveJ Offs(RT0,10,0,0), v1000, fine, tWeldGun\WObj:=wobjSt1;
        !WaitTime 5;
        
        
        !wobjSt1.oframe.trans.x:=wRot1.oframe.trans.x+dx;
        !wobjSt1.oframe.trans.y:=wRot1.oframe.trans.y+dy;
        !wobjSt1.oframe.trans.z:=wRot1.oframe.trans.z+dz;
        
    ENDPROC    
    
    LOCAL PROC RailingJob(bool firstRailing)
        
        StartStn1;
        
        IF firstRailing THEN
            MoveJ HomeSt1_Load,v1000,z50,tWeldGun\WObj:=wobj0;
            TPErase;
            TPWrite"!!!!You can load new parts for railing!!!!!";
            TPReadFK s, "!!!!!!!!press ok when ready to strat!!!!!!!",
                "ok",
                "",
                "",
                "",
                "";             
            DataEntry_St1_LS;
        ELSE
            MoveJ HomeSt1_Load,v1000,z50,tWeldGun\WObj:=wobj0;
            TPErase;
            TPWrite"!!!!You can load new parts for railing!!!!!";
            TPReadFK s, "!!!!!!!!press ok when ready to strat!!!!!!!",
                "ok",
                "",
                "",
                "",
                "";             
                s:=0;
        ENDIF
            
        MoveJ safeSt1_0,v1000,z50,tWeldGun\WObj:=wobj0;
            WHILE s<>2 DO
                
                WeldingFront;
                
                UnloadTurn (FALSE);
                
                WeldingBack;
                
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
                    MoveJ HomeSt1,v1000,z50,tWeldGun\WObj:=wobj0;
                    TPErase;
                    TPWrite     "!!!!You can load new parts for railing!!!!!";
                    TPReadFK s, "!!!!!!!!press ok when ready to strat!!!!!!!",
                        "ok",
                        "",
                        "",
                        "",
                        "";      
                ELSE
                    MoveJ safeSt1,v1000,z50,tWeldGun\WObj:=wobj0;
                    MoveJ HomeSt1,v1000,z50,tWeldGun\WObj:=wobj0;
                ENDIF                
            ENDWHILE
    ENDPROC
    
    
    !This procedure welds on front side of railing
    LOCAL PROC WeldingFront()
        
        VAR wobjdata WobjN;
        VAR pose PoseOffs;
        
        PosSearchTop;
        
        SetDO doExhaustStn1,1;
   
        !Top first Post weld
        weldCorner 1, Odp{1},CorrPT{1},2;
       
        !Top Second Post weld up to (n1-1)th Post
        FOR i FROM 2 TO n1-1 DO
            weldCorner 2,Odp{i},CorrPT{i},1;
        ENDFOR

        !Top last Post weld
        weldCorner 3, Odp{n1},CorrPT{n1},2;
        
        MoveJ Offs(overSt1,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot1;            
    
        !top side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},5);
            !MoveJ Offs(rb1,20,0,0), v1000, z50, tWeldGun\WObj:=wobjUse;
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR

        !Move to other side
        MoveJ safeSt1_0, v1000, z50, tWeldGun;            
        
        SetDO doExhaustStn1,0;

        PosSearchBottom;
        
        SetDO doExhaustStn1,1;
        
        !Bottom first Post weld
        weldCorner 7, Odp{1},CorrPT{1},3;
    
        !Bottom Second Post weld up to (n1-1)th Post
        FOR i FROM 2 TO n1-1 DO
            weldCorner 5,Odp{i},CorrPB{i},3;
        ENDFOR

        !Top last Post weld
        weldCorner 6, Odp{n1},CorrPB{n1},4;

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
    LOCAL PROC WeldingBack()
        
        VAR wobjdata WobjN;
        VAR pose PoseOffs;
        
        PosSearchTop;
        
        SetDO doExhaustStn1,1;
    
        !Bottom first Post weld
        WobjN:= WobjNew(Odp{1},1);
        Weld_2G_H WobjN,OdP{1},CorrPB{1},"RB",t1;

        !Bottom Second Post weld up to (n1-1)th Post
        FOR i FROM 2 TO n1-1 DO
            WobjN:= WobjNew(Odp{i},1);
            Weld_2G_v WobjN,OdP{i},CorrPT{i},"RT";
            Weld_2G_v WobjN,OdP{i},CorrPT{i},"LT";
        ENDFOR

        !Bottom last Post weld
        WobjN:= WobjNew(Odp{n1},2);
        Weld_2G_v WobjN,OdP{n1},CorrPT{n1},"LT";

        !Bottom side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},5);
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR                

        SetDO doExhaustStn1,0;
        
        PosSearchBottom;

        SetDO doExhaustStn1,1;
            
        !Top first Post weld
        WobjN:= WobjNew(Odp{1},3);
        Weld_2G_H WobjN,OdP{1},CorrPB{1},"RB",t1;
        
        !Top Second Post weld up to (n1-1)th Post
        FOR i FROM 2 TO n1-1 DO
            WobjN:= WobjNew(Odp{i},3);
            Weld_2G_H WobjN,OdP{i},CorrPB{i},"RB",t1;
        ENDFOR

        !Top last Post weld
        WobjN:= WobjNew(Odp{n1},4);
        Weld_2G_H WobjN,OdP{n1},CorrPB{n1},"LB",t1;

        MoveJ Offs(overSt1,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot1;            

        !top side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},6);
            Weld_ARC_S WobjN,OdB{i},CorrBB{i},0;
        ENDFOR

        !Move to other side
        MoveJ safeSt1_0, v1000, z50, tWeldGun;    
    
        
        SetDO doExhaustStn1,0;
    
        Cleaning;
        StartStn1;
    
    ENDPROC

    LOCAL PROC weldCorner(num cornerPositionNumber, num Odp, pos CorrP , num sp)
        IF cornerPositionNumber=1 THEN
            
            WobjN:= WobjNew(Odp,sp);
            Weld_2G_H WobjN,OdP,CorrP,"RB",t1;
            Weld_3G_E WobjN,OdP,CorrP,PosAn;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn;
            
        ELSEIF cornerPositionNumber=2 THEN
            
            WobjN:= WobjNew(Odp,sp);
            Weld_2G_H WobjN,OdP,CorrP,"RB",t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn;
            
        ELSEIF cornerPositionNumber=3 THEN
            
            WobjN:= WobjNew(Odp,sp);
            Weld_2G_H WobjN,OdP,CorrP,"LB",t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn;
            Weld_3G_W WobjN,OdP,CorrP,PosAn;
            
        ELSEIF cornerPositionNumber=4 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_V WobjN,OdP,CorrP,"LB";
            Weld_3F_NW WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn;
            
        ELSEIF cornerPositionNumber=5 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_V WobjN,OdP,CorrP,"LB";
            Weld_3F_NW WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_2G_V WobjN,OdP,CorrP,"LB";
            Weld_3F_NE WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z+t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn;
        
        ELSEIF cornerPositionNumber=6 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_V WobjN,OdP,CorrP,"LB";
            Weld_3F_NE WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn;
            
        ELSEIF cornerPositionNumber=7 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_H WobjN,OdP,CorrP,"RB",t1;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn;
            Weld_3G_E WobjN,OdP,CorrP,PosAn;
            
        ELSEIF cornerPositionNumber=8 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_H WobjN,OdP,CorrP,"RB",t1;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn;
        
        ELSEIF cornerPositionNumber=9 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_H WobjN,OdP,CorrP,"LB",t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn;
            Weld_3G_W WobjN,OdP,CorrP,PosAn;

        ELSEIF cornerPositionNumber=10 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_SE_L WobjN,OdP,CorrP,PosAn;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn;
            Weld_2G_H WobjN,OdP,CorrP,"RB",t2;

        ELSEIF cornerPositionNumber=11 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_SE WobjN,OdP,CorrP,PosAn;
            Weld_3F_SW_L WobjN,OdP,CorrP,PosAn;
            Weld_2G_H WobjN,OdP,CorrP,"LB",t2;

        ELSEIF cornerPositionNumber=12 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_NE_L WobjN,OdP,CorrP,PosAn;
            Weld_2G_H WobjN,OdP,CorrP,"RB",t2;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn;

        ELSEIF cornerPositionNumber=13 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_NE WobjN,OdP,CorrP,PosAn;
            Weld_2G_H WobjN,OdP,CorrP,"LB",t2;
            Weld_3F_NW_L WobjN,OdP,CorrP,PosAn;

        ENDIF
        !!
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
        MoveJ HomeSt1,v1000,z50,tWeldGun\WObj:=wobj0;
        s:=0;
        TPReadFK s, "!!!Take care, Station is turning to UnloadTurn Railing?!!!",
            "Ok",
            "",
            "",
            "",
            "";       
        ELSE
        MoveJ HomeSt1,v1000,z50,tWeldGun\WObj:=wobj0;
        s:=0;
        
        TPReadFK s, "!!!!!!!!Now you can turn Railig!!!!!!",
            "Ok",
            "",
            "",
            "",
            ""; 
        MoveJ HomeSt1_0,v1000,z50,tWeldGun\WObj:=wobj0;
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
        
        MoveJ Offs(overSt1,0,0,0), v1000, z50, tWeldGun\WObj:=wRot1;            
        
         s:=0;
        TPErase;
        TPReadFK s, "Check TCP (15mm)",
            "Ok",
            "",
            "",
            "",
            "";   

        SetWobjUse wobjSt1 ,0,0,0;
        
        !store the correctposition of top Posts
        FOR i FROM 1 TO n1-1 DO             
            CorrPT{i}:=PosCorr(Odp{i},1,0);         
        ENDFOR
        
        CorrPT{n1}:=PosCorr(odp{n1},2,0);

        !store the correctposition of top balusters
        FOR i FROM 1 TO n2 DO
            CorrBT{i}:=PosCorr(OdB{i},5,0);
        ENDFOR
        
        MoveJ Offs(overSt1,0,0,0), v1000, z50, tWeldGun\WObj:=wRot1;            
        
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

        MoveJ Offs(overSt1,0,0,0), v1000, z50, tWeldGun\WObj:=wRot1;            
        
         s:=0;
        TPErase;
        TPReadFK s, "Check TCP (15mm)",
            "Ok",
            "",
            "",
            "",
            "";   

        SetWobjUse wobjSt1 ,0,0,0;

        !store the correctposition of Bottom Posts
        FOR i FROM 1 TO n1-1 DO
            CorrPB{i}:=PosCorr(Odp{i},3,0);
        ENDFOR
        CorrPB{n1}:=PosCorr(odp{n1},4,0);

        !store the correctposition of bottom balusters
        FOR i FROM 1 TO n2 DO
            CorrBB{i}:=PosCorr(OdB{i},6,0);
        ENDFOR
        
        MoveJ Offs(overSt1,0,0,0), v1000, z50, tWeldGun\WObj:=wRot1;
        !MoveJ Offs(overSt1,0,0,0), v1000, z50, tWeldGun\WObj:=wRot1;        
        
    ENDPROC
    
    
    !This Function used to make new Pos by using search_1D function (aplication manual AAB SMARTAC, page 81)
    !It has three Entries
    !dis=Ordinate dimensions
    !SP=Search Position ( refer to page 24 of sotware analysis handbook )
    !PosAn=Angle of rotating table
    !Syntax to use:     Pos:=PosCorr(Odp{2} , 1,10);
    Local FUNC pos PosCorr(num dis , num SP, num PosAn)
       
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
            Movel Offs(RT0,50,-5,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,5,-5,15) , Offs(RT0,-15,-5,15), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,-5,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
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
            Movel Offs(RT0,50,-5,-15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,5,-5,-15) , Offs(RT0,-15,-5,-15), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,-5,-15),v1000,z50,tWeldGun\WObj:=wobjUse; 
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
            Movel Offs(RT0,50,5,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx, Offs(RT0,5,5,15) , Offs(RT0,-15,5,15), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,5,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
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
            Movel Offs(RT0,50,5,-15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,5,5,-15) , Offs(RT0,-15,5,-15), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,5,-15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;

        
        ELSEIF SP=5 THEN !For SP refer to page 24 of sotware analysis handbook

            !Set new robotTarget over new workObject and move torch 400 mm above it
            MoveJ Offs(RT0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start X correction
            !Movel Offs(RT0,20,-(10+c1),-t3/2),v200,z50,tWeldGun\WObj:=wobjUse;
            !Search_1D RTSx ,Offs(RT0,20,-(10+c1),-t3/2) , Offs(RT0,-10,-(10+c1),-t3/2), v200, tWeldGun\WObj:=wobjUse;  
            
            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,(w-t3)/2+50,-20,10),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2,-20,10),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,(w-t3)/2,-20,10) , Offs(RT0,(w-t3)/2,0,10), v200, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2-5,-20,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSz ,Offs(RT0,-5,-20,15) , Offs(RT0,-5,-20,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,100,-20,10),v1000,z50,tWeldGun\WObj:=wobjUse; 
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;

            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,-20,9),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,(w-t3)/2-15,-20,2) , Offs(RT0,-15,-20,2), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,-20,5),v1000,z50,tWeldGun\WObj:=wobjUse; 
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
            Movel Offs(RT0,(w-t3)/2+50,20,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,(w-t3)/2-5,20,15) , Offs(RT0,(w-t3)/2-5,0,15), v200, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2-5,20,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSz ,Offs(RT0,-5,20,15) , Offs(RT0,-5,20,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,30,20,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;
            
            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,20,9),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,(w-t3)/2-15,20,5) , Offs(RT0,-15,20,5), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,20,9),v1000,z50,tWeldGun\WObj:=wobjUse; 
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

        SetWobjUse wobjSt1, 0,0,0;

        IF SP=1 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+myPosition;
            
        ELSEIF SP=2 THEN !For SP refer to page 24 of sotware analysis handbook
        
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+(myPosition);
            
        ELSEIF SP=3 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+myPosition;
            
        ELSEIF SP=4 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+(myPosition);
        
        ELSEIF SP=5 THEN !For SP refer to page 24 of sotware analysis handbook

            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x-(w-t3)/2;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+myPosition-t1+t3;            
        ELSEIF SP=6 THEN !For SP refer to page 24 of sotware analysis handbook

            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x-(w-t3)/2;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+myPosition-t1+t3;
        ENDIF
        
        Cwobj:=wobjUse;


        RETURN Cwobj;
        
    ENDFUNC    

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_2G_H(wobjdata CorrectWobj , num position,pos correction, string LR, num lengh)
        
        PDispOff;
        PosAn:=0;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        
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
        IF LR="LB" THEN
            ArcLStart Offs(RT0,0,0,2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,lengh-2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ELSEIF LR="RB" THEN
            ArcLstart Offs(RT0,0,0,-2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,-(lengh-2)),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ELSEIF LR="LT" THEN
            ArcLStart Offs(RT0,0,0,2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,lengh-2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ELSEIF LR="RT" THEN
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
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        
        !Over weld position
        RT0.trans:=[0,0,-1];
        RT0.rot:=[0.5,-0.5,-0.5,0.5];
        RT0.robconf:=[1,-1,0,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT0.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT0.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF

        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding top side
        IF LR="LB" THEN
            ArcLStart Offs(RT0,0,0,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,-(t1),0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;  
        ELSEIF LR="RB" THEN
            ArcLStart Offs(RT0,0,0,-t1), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,-(t1),-t1), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;      
        ELSEIF LR="LT" THEN
            ArcLStart Offs(RT0,0,t1,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;  
        ELSEIF LR="RT" THEN
            ArcLStart Offs(RT0,0,t1,-t1), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,-t1), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;      
        ENDIF
        
        !Over weld position
        !ConfJ\Off;
        Movej Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !ConfJ\On;
        
        !PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!
        
    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3G_E(wobjdata CorrectWobj , num position, pos correction, num PosAn)

        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        

        !RT1:= [[-0.38,-2.70,-10.06],[0.931078,0.194929,-0.172878,0.255362],[1,-2,0,0],[783.052,9E+09,9E+09,9E+09,29.9985,9E+09]] ;

        IF wobjUse.oframe.trans.y<0 THEN
            RT1.trans:=[-2,0,-8];
            RT1.rot:=[0.93,0.19,-0.19,0.25];
            RT1.robconf:=[1,-1,-1,0];
            RT1.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT1.trans:=[0,0,-10];
            RT1.rot:=[0.93,-0.19,-0.25,0.19];
            RT1.robconf:=[1,-1,-1,0];
            RT1.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,0,9E+09];
        ENDIF
        
        !Over weld position
        Movej Offs(RT1,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT1,0,0,0), v100, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT1,-w,0,0), v100, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT1,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
        
        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC
    
    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3F_SW(wobjdata CorrectWobj  , num position, pos correction, num PosAn)
        
        PDispOff;
        PosAn:=40;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        
        
        !RT2:= [[0,0,0],[0.449513,-0.755714,-0.467429,0.0913496],[0,-2,1,1],[1864.98,9E+09,9E+09,9E+09,29.9993,9E+09]] ;
        RT2.trans:=[0,-2,2];
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
        ArcLStart Offs(RT2,0,0,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT2,-W,0,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;

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
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;

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
       
        ArcLStart Offs(RT2,0,0,2), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT2,-W+t2,0,2), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
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
        PosAn:=40;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;

        
        RT3.trans:=[0,-2,-4];
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
        ArcLStart Offs(RT3,0,0,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT3,-w,0,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        
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
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        
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
        ArcLStart Offs(RT3,0,0,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT3,-w+t2,0,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
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
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;


        !RT4:= [[-0.01,0.03,-0.04],[0.297766,-0.602984,-0.728606,0.129922],[1,-1,0,1],[5394.97,9E+09,9E+09,9E+09,0.00222879,9E+09]] ;
        RT4.trans:=[-1,0,12];
        RT4.rot:=[0.30,-0.60,-0.73,0.13];
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
        ArcLStart Offs(RT4,0,0,0), v100, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT4,-w,0,0), v100, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;

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
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;

        !PDispSet [correction,[1,0,0,0]];
        

        !RT5:= [[-2.83,3.59,0.11],[0.330995,0.88275,0.0400167,-0.331049],[0,-1,1,0],[1865.01,9E+09,9E+09,9E+09,0.000329907,9E+09]] ;
        RT5.trans:=[0,2,0];
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
        ArcLStart Offs(RT5,0,0,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT5,-w-2,0,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        
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
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;

        RT5.trans:=[0,0,4];
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
        ArcLStart Offs(RT5,0,0,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT5,-w+t2+2,0,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
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
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        
        !RT6:= [[-2.60,13.00,-13.30],[0.86,0.27,-0.40,0.12],[0,0,-2,0],[1750.01,9E+09,9E+09,9E+09,29.9989,9E+09]] ;
        RT6.trans:=[0,3,-5];
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
        ArcLStart Offs(RT6,0,0,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-w,0,0), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        
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
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        
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
        ArcLStart Offs(RT6,0,2,-2), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-w+t2,2,-2), v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
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
        
        !PDispOff;
        PosAn:=-30;
        
        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        !PDispset [correction,[1,0,0,0]];

        !RB1:= [[9.98,-18.10,-0.35],[0.75894,-0.546435,-0.21249,0.283314],[1,1,-2,1],[484.003,9E+09,9E+09,9E+09,0.000251827,9E+09]] ;
        RB1.trans:=[-1,3,-5];
        IF wobjUse.oframe.trans.y<0 THEN
            RB1.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RB1.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF

        RB1.rot:=[0.75,-0.54,-0.21,0.28];
        !RB1.rot:=[0.5,-0.5,-0.5,0.5];
        RB1.robconf:=[1,-1,-1,0];
        !RB1.robconf:=[1,1,-2,1];
        
        p0:=Offs(RB1,0,0,0);
        p2:=offs(p0,-(1.9),0,-(3));
        p3:=offs(p0,-(8),0,-(8));

        !Over weld position
        MoveJ Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !MoveJ Offs(p0,0,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p2, p3, v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        MoveL Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        RB1.rot:=[0.54,-0.75,-0.28,0.21];
        p0:=Offs(RB1,0,0,0);
        p1:=Offs(p0,-(1.9),0,(3));
        p4:=Offs(p0,-(8),0,(8));

        !Over weld position
        MoveJ Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1, p4, v150, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        MoveL Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !PDispOff;

        
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
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        
        !RB2:= [[35.33,-6.62,0.51],[0.78,0.50,-0.19,-0.30],[0,-1,-2,0],[466.994,9E+09,9E+09,9E+09,0.000589406,9E+09]] ;
        RB2.trans:=[-2,0,-8];
        IF wobjUse.oframe.trans.y<0 THEN
            RB2.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RB2.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        RB2.rot:=[0.54,0.75,-0.28,-0.21];
        RB2.robconf:=[0,0,-3,0];  
        
        !Over weld position
        p0:=Offs(RB2,0,0,0); !correct position of wire end, aimed to (baluster's center-1)
        p1:=Offs(p0,-(1.9),0,(3));
        p4:=Offs(p0,-(8),0,(8));
        MoveJ Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        !Welding
        ArcLStart p0, v300, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1, p4, v300, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        MoveL Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        RB2.rot:=[0.75,0.54,-0.21,-0.28];
        RB2.robconf:=[0,-1,-2,0];
        
        
        !Over weld position
        !p0:=Offs(RB2,18,-2,-(t3/2-1)+8);
        p0:=Offs(RB2,0,0,0);
        p2:=offs(p0,-(1.9),0,-(3));
        p3:=offs(p0,-(8),0,-(8));
        MoveJ Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v300, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p2, p3, v300, smUse, weld_4F_1\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        MoveL Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        PDispOff;

    ENDPROC
    
ENDMODULE