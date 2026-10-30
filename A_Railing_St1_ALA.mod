MODULE A_Railing_St1_ALA
    
    !You can find explanation about the variables along with drawings, on which the variables are marked, in <<sotware analysis handbook>> pages 1 and 10.
    !You can find this document on system's backup USB, inside of documents folder.


    
    LOCAL PERS num hashem:=0; !Just for Spacing, Also this is my signature in all my project!
    

    
    !**************************************************************************************************************    
    !********************************************Railing Dimention*************************************************    
    !**************************************************************************************************************      
    
    !Total Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num Th:=1190;

    !Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num h:=1000;
    
    !Total lengh of railing (back to back)
    LOCAL PERS num l:=3120;

    !Final width of railing (Normally width of top rail)
    LOCAL PERS num w:=50;
    
    !Number of Posts
    LOCAL PERS num n1:=3;
    
    !Number of Balusters
    LOCAL PERS num n2:=30;
    
    !Distance Between <<!!***LEFT SIDE***!!>> of first Baluster scabilon and disk surface
    LOCAL PERS num ds:=502;   

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
    LOCAL PERS num OdP{5}:=[50,1565,3070,0,0];
    
    !Corrected top position of Railing posts (abreviated as CorrPT)
    LOCAL PERS pos CorrPT{5}:=[[3.30547,-7.0187,1.21618],[9.44594,-3.24798,-0.160137],[6.70194,-4.75491,1.11341],[0,0,0],[0,0,0]];
    
    !Corrected Bottom position of Railing posts (abreviated as CorrPB)
    LOCAL PERS pos CorrPB{5}:=[[2.27056,-4.42885,0.572432],[2.03464,-1.19582,0.580335],[2.28037,-1.53473,0.234623],[0,0,0],[0,0,0]];
    
    !Ordinate Dimensions of Balusters (abreviated as odB)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdB{50}:=  [129,226,323,420,517,614,711,808,905,1002
                        ,1099,1196,1293,1390,1487,1644,1741,1838,1935,2032
                        ,2129,2226,2323,2420,2517,2614,2711,2808,2905,3002
                        ,0,0,0,0,0,0,0,0,0,0
                        ,0,0,0,0,0,0,0,0,0,0];

    !Corrected top position of Balusters (abreviated as CorrBT)
    LOCAL PERS pos CorrBT{50}:=[[2.773,-7.28215,0.00661133],[4.2576,-7.28001,-1.52581],[5.63712,-7.03966,-1.12936],[5.86529,-6.79395,-2.00018],[6.10882,-6.79364,-0.806484]
                        ,[4.8993,-6.63147,0.163565],[6.52402,-6.47166,0.654666],[6.84357,-6.22787,0.733483],[6.5143,-5.9818,-0.892426],[6.51155,-5.74166,-0.813259]
                        ,[5.54253,-5.49653,-0.163513],[6.10888,-5.01231,-1.19903],[5.45018,-4.35881,-1.28214],[6.32982,-3.71125,-0.958644],[6.00862,-3.23,-2.10646]
                        ,[6.42282,-3.62639,3.93997],[6.58232,-3.86554,5.37769],[7.31028,-4.02735,4.17648],[5.84115,-4.18856,4.57282],[7.07187,-4.27665,4.57493]
                        ,[9.01013,-4.3523,4.32659],[7.53753,-4.43808,4.17129],[8.19773,-4.51836,5.86388],[6.00661,-4.75739,5.86928],[7.54396,-5.08588,5.05907]
                        ,[7.05212,-5.41511,6.36216],[8.62211,-5.3343,4.33748],[7.38507,-5.08854,4.24683],[7.07544,-4.8444,2.49249],[6.50156,-4.75971,4.57395]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];

    !Corrected bottom position of Balusters (abreviated as CorrBB)
    LOCAL PERS pos CorrBB{50}:=[[2.05615,-4.03989,-0.967734],[3.83206,-3.56267,-1.94727],[3.66561,-3.48153,-3.41752],[1.05508,-3.39941,-2.64238],[1.58462,-3.15634,-0.763924]
                        ,[2.86452,-3.07548,-1.7852],[1.98475,-2.83437,0.275321],[1.50122,-2.42869,-0.204226],[1.33377,-2.09785,0.887689],[2.78471,-1.76946,-1.69898]
                        ,[0.719451,-1.60374,-0.645996],[0.63241,-1.35637,-2.32505],[1.20898,-1.20088,-1.28665],[2.1614,-1.36582,-2.72847],[0.147133,-1.36742,-1.21755]
                        ,[2.58456,-0.875718,5.29315],[3.63674,-0.723243,4.38774],[2.58296,-0.881423,4.96669],[2.18005,-1.28474,5.20763],[3.07358,-1.52609,5.0596]
                        ,[1.86297,-1.60878,5.06665],[1.78496,-1.68859,4.24063],[2.99387,-1.76684,4.23678],[2.5045,-1.6879,5.96907],[4.66771,-1.85336,3.7551]
                        ,[2.98076,-1.93122,3.17948],[3.46622,-1.85023,3.58634],[3.30727,-1.77012,2.99967],[4.27699,-1.76611,2.50508],[3.48135,-1.60581,4.24087]
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
    LOCAL PERS num dy:=-490;  !Y coordination of Down right edge of part
    LOCAL PERS num dz:=423;    !Z coordination of Down right edge of part

    !**************************************************************************************************************    
    !**************************Special robot targets to use in procedures and functions****************************    
    !**************************Search positioning targets aimed vertically to the part*****************************
    !*******************Weld positioning targets have special angels in different positions************************    
    !**************************************************************************************************************    

    !Reference Robtarget shows Down, inside part of frame (Abreviated as RefT page 25 of <<Sotware analysis handbook>> )
    LOCAL PERS robtarget RefT:= [[75,-490,413],[0.5,-0.5,-0.5,0.5],[1,-2,1,0],[370,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT:= [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[950,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT0 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[2010,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for search positions and Weld_2G_H and Weld_2G_V
    LOCAL PERS robtarget RT1 := [[0,0,0],[0.95,0.04,-0.17,0.25],[1,-1,-1,0],[910,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT2 := [[0,0,0],[0.45,-0.76,-0.47,0.09],[0,-2,1,1],[1865,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget Rt3 := [[0,0,0],[0.76,-0.45,-0.09,0.47],[1,-1,-1,0],[1865,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[0,0,0],[0.22,-0.59,-0.76,0.19],[0,-2,1,1],[3370,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT5 := [[0,2,2],[0.45,0.76,-0.47,-0.09],[1,-1,1,0],[350,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NW and Weld_3F_NW_L
    LOCAL PERS robtarget RT6 := [[0,0,0],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[350,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NE and Weld_3F_NE_L

    LOCAL PERS robtarget RB1 := [[0,0,0],[0.54,-0.75,-0.28,0.21],[1,-1,-1,0],[1514,9E+09,9E+09,9E+09,-30,9E+09]];!wobjUse\ using for  Weld_ARC_N
    LOCAL PERS robtarget RB2 := [[0,0,0],[0.54,0.75,-0.28,-0.21],[0,0,-3,0],[526,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for  Weld_ARC_S
    
    !**************************************************************************************************************
    !************************************Main Robot targets used every where***************************************    
    !**************************************************************************************************************   
    
    LOCAL PERS wobjdata wobjSt1:=[FALSE,FALSE,"STN1",[[0,0,0],[1,0,0,0]],[[60,-490,410],[1,0,0,0]]];

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
    
    PROC Railing_St1_ALA()
        
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
            DataEntry_St1_ALA;
            RailingJob;
        ELSE
            RailingJob;
        ENDIF
        
        EndOfWork;

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!##################################################!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
    ENDPROC
    
    !This procedure used for data entry ( refer to page 1 of sotware analysis handbook )    
    PROC DataEntry_St1_ALA()
        
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
                
                WeldingFront_St1_ALA;
                
                UnloadTurn (FALSE);
                
                WeldingBack_St1_ALA;
                
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
    PROC WeldingFront_St1_ALA()
        
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
            weldCorner 5, Odp{i},CorrPB{i},3;
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
    PROC WeldingBack_St1_ALA()
        
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
            Weld_2G_V WobjN , Odp{i}, CorrPB{i}, "R";
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_2G_V WobjN , Odp{i}, CorrPB{i}, "R";
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
        RT0.extax.eax_a:=450+l/2;
        MoveJ Offs(RT0,500,h/2,l/2), v1000, z50, tWeldGun\WObj:=wobjUse;  
        
        s:=0;
        TPErase;
        TPReadFK s, "Check TCP (15mm)",
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
        TPReadFK s, "Check TCP (15mm)",
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
            Movel Offs(RT0,(w-t3)/2,-20,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,(w-t3)/2-5,-20,15) , Offs(RT0,(w-t3)/2-5,0,15), v200, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2-5,-20,20),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSz ,Offs(RT0,-7,-20,20) , Offs(RT0,-7,-20,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
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
            Search_1D RTSy ,Offs(RT0,(w-t3)/2-5,20,15) , Offs(RT0,(w-t3)/2-5,0,15), v200, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2-5,20,20),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSz ,Offs(RT0,-7,20,20) , Offs(RT0,-7,20,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
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
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+(myPosition-OdP{1});
            
        ELSEIF SP=3 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+myPosition-OdP{1};
            
        ELSEIF SP=4 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt1.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt1.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt1.oframe.trans.z+(myPosition-OdP{1});
        
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
            RT0.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT0.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !ConfJ\Off;
        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !ConfJ\On;
        
        !Welding top side
        IF LR="L" THEN
            !ArcLStart Offs(RT0,15,0,lengh/2),v100,smUse,weld_2F2G,fine,tWeldGun\WObj:=wobjUse;
            ArcLStart Offs(RT0,0,0,0),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,lengh),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ELSE
            !ArcLStart Offs(RT0,15,0,-(lengh/2)),v100,smUse,weld_2F2G,fine,tWeldGun\WObj:=wobjUse;
            ArcLstart Offs(RT0,0,0,0),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,-(lengh)),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
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
            RT0.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT0.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
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
            RT1.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT1.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PosAn:=h*0.03;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;
        
        
        !RT2:= [[0,0,0],[0.449513,-0.755714,-0.467429,0.0913496],[0,-2,1,1],[1864.98,9E+09,9E+09,9E+09,29.9993,9E+09]] ;
        RT2.trans:=[0,0,0];
        RT2.rot:=[0.45,-0.76,-0.47,0.09];
        RT2.robconf:=[0,-2,1,1];
        IF wobjUse.oframe.trans.y<0 THEN
            RT2.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT2.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PosAn:=h*0.03;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z+t2;

        RT2.trans:=[0,0,0];
        RT2.rot:=[0.45,-0.76,-0.47,0.09];
        RT2.robconf:=[0,-2,1,1];
        IF wobjUse.oframe.trans.y<0 THEN
            RT2.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT2.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PosAn:=h*0.03;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;

        
        RT3.trans:=[0,0,0];
        RT3.rot:=[0.76,-0.45,-0.09,0.47];
        RT3.robconf:=[1,-1,-1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT3.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT3.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        Movej Offs(RT3,200,-8,-8),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT3,0,0,-2), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT3,-w,0,-2), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        
        !Over weld position
        Movel Offs(RT3,200,-8,-8),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3F_SE_L(wobjdata CorrectWobj , num position,pos correction, num PosAn)
        
        PDispOff;
        PosAn:=h*0.03;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z-t2;
        
        RT3.trans:=[0,0,0];
        RT3.rot:=[0.76,-0.45,-0.09,0.47];
        RT3.robconf:=[1,-1,-1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT3.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT3.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        Movej Offs(RT3,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT3,0,0,-4), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT3,-w+t2,0,-4), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        !odp{1}-2 This -2 is for preventing from hit fixture
        ArcLStart Offs(RT3,-w+t2,0,-(odp{1}+2)), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
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
            RT4.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT4.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PosAn:=h*0.03;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;
        

        !RT5:= [[-2.83,3.59,0.11],[0.330995,0.88275,0.0400167,-0.331049],[0,-1,1,0],[1865.01,9E+09,9E+09,9E+09,0.000329907,9E+09]] ;
        RT5.trans:=[0,2,2];
        RT5.rot:=[0.45,0.76,-0.47,-0.09];
        RT5.robconf:=[1,-1,1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT5.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT5.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
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
        PosAn:=h*0.03;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z+t2;

        RT5.trans:=[0,2,2];
        RT5.rot:=[0.45,0.76,-0.47,-0.09];
        RT5.robconf:=[1,-1,1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT5.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT5.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        MoveJ Offs(RT5,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT5,0,2,2), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT5,-w+t2+2,2,2), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart Offs(RT5,-w+t2,2,odp{1}-2), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT5,-w+t2,2,2), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT5,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3F_NE(wobjdata CorrectWobj , num position,pos correction,num PosAn)
        
        PDispOff;
        PosAn:=h*0.03;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;
        
        !RT6:= [[-2.60,13.00,-13.30],[0.86,0.27,-0.40,0.12],[0,0,-2,0],[1750.01,9E+09,9E+09,9E+09,29.9989,9E+09]] ;
        RT6.trans:=[0,0,0];
        RT6.rot:=[0.76,0.45,-0.09,-0.47];
        RT6.robconf:=[0,0,-2,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT6.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT6.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        MoveJ Offs(RT6,200,13,-16),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT6,0,6,-4), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-w,6,-4), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        
        !Over weld position
        Movel Offs(RT6,200,13,-16),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3F_NE_L(wobjdata CorrectWobj , num position,pos correction,num PosAn)
        
        PDispOff;
        PosAn:=h*0.03;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z-t2;
        
        RT6.trans:=[0,0,0];
        RT6.rot:=[0.76,0.45,-0.09,-0.47];
        RT6.robconf:=[0,0,-2,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT6.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT6.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Over weld position
        MoveJ Offs(RT6,200,13,-16),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT6,0,4,-4), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-w+t2,4,-4), v150, smUse, weld_3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart Offs(RT6,-w+t2+3,4,-OdP{1}), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-w+t2+3,4,-4), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;

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
            RB1.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RB1.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF

        RB1.rot:=[0.75,-0.54,-0.21,0.28];
        RB1.robconf:=[1,-1,-1,0];
        !RB1.robconf:=[1,1,-2,1];
        
        p0:=Offs(RB1,0,-1,-6);
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
        PosAn:=h*0.030;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans.x:=wobjUse.oframe.trans.x + correction.x;
        wobjUse.oframe.trans.y:=wobjUse.oframe.trans.y + correction.y;
        wobjUse.oframe.trans.z:=wobjUse.oframe.trans.z + correction.z;
        
        !RB2:= [[35.33,-6.62,0.51],[0.78,0.50,-0.19,-0.30],[0,-1,-2,0],[466.994,9E+09,9E+09,9E+09,0.000589406,9E+09]] ;
        RB2.trans:=[0,0,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RB2.extax:=[(h+1000)*0.15+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RB2.extax:=[(h+1000)*0.45+position+St1_Rail_Corr,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        RB2.rot:=[0.54,0.75,-0.28,-0.21];
        RB2.robconf:=[0,0,-3,0];  
        
        !Over weld position
        p0:=Offs(RB2,0,5,-6); !correct position of wire end, aimed to (baluster's center-1)
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
        p0:=Offs(RB2,0,5,-6);
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