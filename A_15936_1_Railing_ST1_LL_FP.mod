MODULE A_15936_1_Railing_ST1_LL_FP
    
    !You can find explanation about the variables along with drawings, on which the variables are marked, in <<sotware analysis handbook>> pages 1 and 10.
    !You can find this document on system's backup USB, inside of documents folder.


    
    LOCAL PERS num hashem:=0; !Just for Spacing, Also this is my signature in all my project!
    

    !**************************************************************************************************************      
    !********************************************project no. 15542-1-IAM-0014**************************************  
    !************************************************************************************************************** 
    
    !**************************************************************************************************************      
    !********************************************Railing Dimention*************************************************    
    !**************************************************************************************************************      
    
    !Total Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num Th:=1200;

    !Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num h:=1145;
    
    !Total lengh of railing (back to back)
    LOCAL PERS num l:=1707;

    !Final width of railing (Normally width of top rail)
    LOCAL PERS num w:=50;
    
    !Number of Posts
    LOCAL PERS num n1:=3;
    
    !Number of Balusters
    LOCAL PERS num n2:=16;
    
    !Distance Between <<!!***Right SIDE***!!>> of first post scabilon and disk surface
    LOCAL PERS num ds:=1872;   

    !Distance between balusters
    LOCAL PERS num d1:=85;
    
    !Flatbars thicknes (Top rail, Bottom rail, Posts)
    LOCAL PERS num t1:=10;

    !Angle profil thicknes
    LOCAL PERS num t2:=4;

    !Balusters width (Roundbar diameter, Pipe width)
    LOCAL PERS num t3:=12;

    !Balusters Height (Roundbar diameter, Pipe width)
    LOCAL PERS num t4:=12;

    !Ordinate Dimensions of railing's Posts (abreviated as odP)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdP{5}:=[0,849,1697,2797,0];
    
    !Corrected top position of Railing posts (abreviated as CorrPT)
    LOCAL PERS pos CorrPT{5}:=[[7.50488,-1.33992,-1.44923],[6.68572,0.784451,849.34],[3.16634,1.27444,1698.51],[0,0,0],[0,0,0]];
    
    !Corrected Bottom position of Railing posts (abreviated as CorrPB)
    LOCAL PERS pos CorrPB{5}:=[[-1.27073,0.416425,-0.977283],[1.86208,1.77608,851.407],[2.42629,3.14055,1697.42],[0,0,0],[0,0,0]];
    
    !Ordinate Dimensions of Balusters (abreviated as odB)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdB{50}:=  [93,187,282,376,471,565,660,754,941,1036
                        ,1130,1225,1319,1414,1508,1603,1707,1802,1897,1992
                        ,2087,2182,2330,2423,2517,2610,2704,2729.3,2820.4,2911.6
                        ,3002.7,3093.9,3185,3276.1,3367.3,3458.4,3549.6,3640.7,3731.9,0
                        ,0,0,0,0,0,0,0,0,0,0];

    !Corrected top position of Balusters (abreviated as CorrBT)
    LOCAL PERS pos CorrBT{50}:=[[3.26754,-0.947435,90.5942],[2.04986,-0.70904,187.522],[3.02562,-0.544841,282.852],[5.69224,-0.468141,375.372],[6.99617,-0.307069,468.187]
                        ,[6.9838,-0.061019,565.441],[3.907,0.092372,660.021],[6.25359,0.256831,755.16],[4.87794,0.738987,942.888],[1.80971,0.579321,1035.93]
                        ,[6.49085,0.738726,1129.62],[5.18529,1.14218,1225.18],[1.49418,1.0629,1318.62],[2.70277,1.22039,1415.31],[3.34325,1.30051,1508.34]
                        ,[3.41546,1.53683,1602.53],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];

    !Corrected bottom position of Balusters (abreviated as CorrBB)
    LOCAL PERS pos CorrBB{50}:=[[-0.756111,0.812161,91.7794],[-0.83277,1.05441,188.028],[0.312767,1.05281,282.86],[0.0671844,1.1346,377.018],[-0.0103531,1.45863,476.239]
                        ,[0.543514,1.61593,564.034],[0.871339,1.93271,658.959],[1.51721,1.93424,755.827],[-0.511464,2.25406,945.9],[1.10046,2.2518,1038.73]
                        ,[0.298674,2.41006,1133.06],[2.63175,2.73216,1226.81],[0.77966,3.05412,1319.08],[2.07501,3.21586,1415.2],[1.34324,3.37706,1512.18]
                        ,[-1.88623,3.456,1605.02],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
                        
    LOCAL PERS num wobjA:=45; !Angle of table

    LOCAL PERS num partCounter:=3; !counter
    
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
    
    !**************************************************************************************************************    
    !**********************************************local Persistent*************************************************    
    !**************************************************************************************************************

    LOCAL PERS num dx:=60;    !X coordination of inside Down right edge of part
    LOCAL PERS num dy:=-562.5;  !Y coordination of Down right edge of part
    LOCAL PERS num dz:=1882;    !Z coordination of Down right edge of part

    !**************************************************************************************************************    
    !**************************Special robot targets to use in procedures and functions****************************    
    !**************************Search positioning targets aimed vertically to the part*****************************
    !*******************Weld positioning targets have special angels in different positions************************    
    !**************************************************************************************************************    

    !Reference Robtarget shows Down, inside part of frame (Abreviated as RefT page 25 of <<Sotware analysis handbook>> )
    LOCAL PERS robtarget RefT:= [[75,-562.5,1872],[0.5,-0.5,-0.5,0.5],[1,-2,1,0],[370,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT:= [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[950,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT0 := [[0,0,-1],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[2464,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for search positions and Weld_2G_H and Weld_2G_V
    LOCAL PERS robtarget RT1 := [[0,-2,0],[0.93,-0.19,-0.25,0.19],[1,-1,-1,0],[1306.45,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT2 := [[0,0,0],[0.45,-0.76,-0.47,0.09],[0,-2,1,1],[3356.99,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget Rt3 := [[0,0,0],[0.76,-0.45,-0.09,0.47],[1,-1,-1,0],[4621.83,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[0,-2,0],[0.3,-0.6,-0.73,0.13],[0,-2,1,1],[5369.73,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT5 := [[0,0,0],[0.45,0.76,-0.47,-0.09],[1,-1,1,0],[3356.99,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NW and Weld_3F_NW_L
    LOCAL PERS robtarget RT6 := [[0,0,0],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[4621.83,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NE and Weld_3F_NE_L

    LOCAL PERS robtarget RB1 := [[1,0,-6],[0.54,-0.75,-0.28,0.21],[1,-1,-1,0],[5041.78,9E+09,9E+09,9E+09,-30,9E+09]];!wobjUse\ using for  Weld_ARC_N
    LOCAL PERS robtarget RB2 := [[0,0,-7],[0.75,0.54,-0.21,-0.28],[0,-1,-2,0],[4542.11,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for  Weld_ARC_S
    
    !**************************************************************************************************************
    !********************************************Work Object data**************************************************    
    !**************************************************************************************************************   
    
    LOCAL PERS wobjdata wobjSt1:=[FALSE,FALSE,"STN1",[[0,0,0],[1,0,0,0]],[[61,-563.5,1869],[1,0,0,0]]];

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
    !*************************************************Local Variables********************************************** 
    !**************************************************************************************************************    
    
    LOCAL VAR pose RTSx;
    LOCAL VAR pose RTSy;
    LOCAL VAR pose RTSz;
    LOCAL VAR num myX;
    LOCAL VAR num myY;
    LOCAL VAR num myZ;
    
    LOCAL VAR wobjdata Cwobj; 
    LOCAL VAR pos myPos;     
    
    !**************************************************************************************************************    
    
    PROC Main_15936_1_Railing_ST1_LL_FP()
        
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
    LOCAL PROC DataEntry()
        
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
            TPWrite "Enter Balusters width";
            TPReadNum t3,  "(Roundbar diameter, Pipe width)";
            TPWrite "Enter Balusters height";
            TPReadNum t4,  "(Roundbar diameter, Pipe width)";
            TPWrite "         Enter distance Between ";
            TPWrite "<<!!***LEFT SIDE***!!>> of first Post";
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
            TPWrite "Balusters Width= "\Num:=t3;
            TPWrite "Balusters Height= "\Num:=t4;
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
        
        partCounter:=0;
        
        dx:=60;
        dy:=-(h-2*t1)/2;
        dz:=ds+t1;
        RefT.trans.x:=dx+fdxSt1;
        RefT.trans.y:=dy+fdySt1;
        RefT.trans.z:=dz+fdzSt1;
        
        SetWobjUse wRot1,dx,dy,dz;
        wobjSt1:=wobjUse;
        wobjSt1.oframe.trans:=wRot1.oframe.trans+[dx,dy,dz];
        
        StartStn1;

        MoveJ safeSt1_0, v1000, z50, tWeldGun\WObj:=wobj0;
        MoveJ overSt1, v1000, z50, tWeldGun\WObj:=wRot1;
        
        RT0.extax.eax_a:=wRot1.oframe.trans.z+ds+500;        
        MoveJ Offs(RT0,10,0,0), v1000, fine, tWeldGun\WObj:=wobjSt1;
        WaitTime 5;
        
        !wobjSt1.oframe.trans.x:=wRot1.oframe.trans.x+dx;
        !wobjSt1.oframe.trans.y:=wRot1.oframe.trans.y+dy;
        !wobjSt1.oframe.trans.z:=wRot1.oframe.trans.z+dz;
        
    ENDPROC    
    
    LOCAL PROC RailingJob(bool firstRailing)
        
        StartStn1;
        
        IF firstRailing THEN
            MoveJ HomeSt1_0,v1000,z50,tWeldGun\WObj:=wobj0;
            TPErase;
            TPWrite"!!!!You can load new parts for railing!!!!!";
            TPReadFK s, "!!!!!!!!press ok when ready to strat!!!!!!!",
                "ok",
                "",
                "",
                "",
                "";             
            DataEntry;
        ELSE
            MoveJ HomeSt1_0,v1000,z50,tWeldGun\WObj:=wobj0;
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
                    MoveJ HomeSt1_0,v1000,z50,tWeldGun\WObj:=wobj0;
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
                    MoveJ HomeSt1_0,v1000,z50,tWeldGun\WObj:=wobj0;
                ENDIF                
            ENDWHILE
    ENDPROC
    
     !This procedure welds on front side of railing
    LOCAL PROC WeldingFront()
        
        VAR wobjdata WobjN;
        VAR pose PoseOffs;
        
        PosSearchTop;

        WobjN:=wobjST1;

        SetDO doExhaustStn1,1;
   
        !Top first Post weld
        weldCorner 1, Odp{1},CorrPT{1},2;
       
        !Top Second Post weld up to (n1-1)th Post
        FOR i FROM 2 TO n1-1 DO
            weldCorner 2,Odp{i},CorrPT{i},1;
        ENDFOR

        !Top last Post weld
        weldCorner 3, Odp{n1},CorrPT{n1},2;
        
        MoveJ Offs(overST1,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot1;            
    
        !top side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:=wobjST1;
            WobjN.oframe.trans.x:=WobjN.oframe.trans.x-(w-t4)/2;
            WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
            WobjN.oframe.trans:= WobjN.oframe.trans+CorrBT{i};
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR

        !Move to other side
        MoveJ safeST1_0, v1000, z50, tWeldGun;            
        
        SetDO doExhaustStn1, 0;

        PosSearchBottom;
        
        SetDO doExhaustStn1,1;
        
        !Bottom first Post weld
        weldCorner 4,Odp{1},CorrPB{1},3;

        !Bottom Second Post weld up to (n1-1)th Post
        FOR i FROM 2 TO n1-1 DO
            weldCorner 5,Odp{i},CorrPB{i},3;
        ENDFOR

        !Top last Post weld
        weldCorner 6, Odp{n1},CorrPB{n1},4;

        !Bottom side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:=wobjST1;
            WobjN.oframe.trans.x:=WobjN.oframe.trans.x-(w-t4)/2;
            WobjN.oframe.trans:= WobjN.oframe.trans+CorrBB{i};
            Weld_ARC_S WobjN,OdB{i},CorrBB{i},0;
        ENDFOR

        SetDO doExhaustStn1,0;
        
        !Move to other side
        MoveJ safeST1_0, v1000, z50, tWeldGun;   
        
        Cleaning;
        StartStn1;
    
    ENDPROC
    
    !This procedure welds on back side of railing
    LOCAL PROC WeldingBack()
        
        VAR wobjdata WobjN;
        VAR pose PoseOffs;
        
        PosSearchTop;
        
        
        SetDO doExhaustStn1,1;
    
        !Top first Post weld
        WobjN:=wobjST1;
        WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
        WobjN.oframe.trans:= WobjN.oframe.trans+CorrPT{1};
        Weld_2G_V WobjN,OdP{1},CorrPT{1},"LT",t1;

        !Top Second Post weld up to (n1-1)th Post
        FOR i FROM 2 TO n1-1 DO
            WobjN:=wobjST1;
            WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
            WobjN.oframe.trans:= WobjN.oframe.trans+CorrPT{i};
            Weld_2G_v WobjN,OdP{i},CorrPB{i},"LT",t1;
            Weld_2G_v WobjN,OdP{i},CorrPB{i},"RT",t1;
        ENDFOR

        !Top last Post weld
        WobjN:=wobjST1;
        WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
        WobjN.oframe.trans:= WobjN.oframe.trans+CorrPT{n1};
        Weld_2G_V WobjN,OdP{n1},CorrPT{n1},"RT",t1;
        
        MoveJ Offs(overST1,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot1;

        !Top side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:=wobjST1;
            WobjN.oframe.trans.x:=WobjN.oframe.trans.x-(w-t4)/2;
            WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
            WobjN.oframe.trans:= WobjN.oframe.trans+CorrBT{i};
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR
        MoveJ Offs(overST1,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot1;                

        SetDO doExhaustStn1,0;
        
        PosSearchBottom;

        SetDO doExhaustStn1,1;
            
        !Bottom first Post weld
        WobjN:=wobjST1;
        WobjN.oframe.trans:= WobjN.oframe.trans+CorrPB{1};
        Weld_2G_H WobjN,OdP{1},CorrPT{1},"RB",t1;
        
        !Bottom Second Post weld up to (n1-1)th Post
        FOR i FROM 2 TO n1-1 DO
            WobjN:=wobjST1;
            WobjN.oframe.trans:= WobjN.oframe.trans+CorrPB{i};
            Weld_2G_H WobjN,OdP{i},CorrPT{i},"MB",t1;
        ENDFOR

        !Bottom last Post weld
        WobjN:=wobjST1;
        WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
        WobjN.oframe.trans:= WobjN.oframe.trans+CorrPB{n1};
        Weld_2G_H WobjN,OdP{n1},CorrPT{n1},"LB",t1;

        MoveJ Offs(overST1,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot1;            

        !Bottom side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:=wobjST1;
            WobjN.oframe.trans.x:=WobjN.oframe.trans.x-(w-t4)/2;
            WobjN.oframe.trans:= WobjN.oframe.trans+CorrBB{i};
            Weld_ARC_S WobjN,OdB{i},CorrBB{i},0;
        ENDFOR

        !Move to other side
        MoveJ safeST1_0, v1000, z50, tWeldGun;    
        
        SetDO doExhaustStn1,0;
    
        Cleaning;
        StartStn1;
    
    ENDPROC

   

    LOCAL PROC weldCorner(num cornerPositionNumber, num Odp, pos CorrP , num sp)
        
        VAR wobjdata WobjN;

        WobjN:=wobjST1;
        WobjN.oframe.trans:= WobjN.oframe.trans+CorrP;

        IF cornerPositionNumber=1 THEN
            
            WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
            Weld_3G_E WobjN,OdP,CorrP,PosAn,w;
            Weld_2G_H WobjN,OdP,CorrP,"RT",t1;
            
        ELSEIF cornerPositionNumber=2 THEN
            
            WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z+t1;
            Weld_2G_H WobjN,OdP,CorrP,"MT",t1;
            
        ELSEIF cornerPositionNumber=3 THEN
            
            WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
            WobjN.oframe.trans.Z:= WobjN.oframe.trans.Z-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;

            WobjN.oframe.trans.Z:= WobjN.oframe.trans.Z+t1;
            Weld_3G_W WobjN,OdP,CorrP,PosAn,w;
            
            WobjN.oframe.trans.Z:= WobjN.oframe.trans.Z-t1;
            Weld_2G_H WobjN,OdP,CorrP,"LT",t1;
            
        ELSEIF cornerPositionNumber=4 THEN
            
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
!            Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z+t1;
            Weld_2G_V WobjN,OdP,CorrP,"LB",t1;
            
        ELSEIF cornerPositionNumber=5 THEN
            
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;
            
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
!            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z+t1;
!            Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
            
            WobjN:=wobjST1;
            WobjN.oframe.trans:= WobjN.oframe.trans+CorrP;
            Weld_2G_V WobjN,OdP,CorrP,"LB",t1;
            
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_2G_V WobjN,OdP,CorrP,"LB",t1;
        
        ELSEIF cornerPositionNumber=6 THEN
            
            WobjN.oframe.trans.Z:= WobjN.oframe.trans.Z-t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
!            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            Weld_2G_V WobjN,OdP,CorrP,"LB",t1;
            
        ELSEIF cornerPositionNumber=7 THEN
            
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;
            Weld_3G_E WobjN,OdP,CorrP,PosAn,w;
            Weld_2G_H WobjN,OdP,CorrP,"RB",t1;
            
        ELSEIF cornerPositionNumber=8 THEN
            
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z+t1;
            Weld_2G_H WobjN,OdP,CorrP,"MB",t1;
        
        ELSEIF cornerPositionNumber=9 THEN
            
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            Weld_3G_W WobjN,OdP,CorrP,PosAn,w;
            Weld_2G_H WobjN,OdP,CorrP,"LB",t1;

        ELSEIF cornerPositionNumber=10 THEN
            
            Weld_3F_SE_L WobjN,OdP,CorrP,PosAn,w,t2;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
            Weld_2G_H WobjN,OdP,CorrP,"RT",t1;

        ELSEIF cornerPositionNumber=11 THEN
            
            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            Weld_3F_SW_L WobjN,OdP,CorrP,PosAn,w,t2;
            Weld_2G_H WobjN,OdP,CorrP,"LT",t1;

        ELSEIF cornerPositionNumber=12 THEN
            
            Weld_3F_NE_L WobjN,OdP,CorrP,PosAn,w,t2;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;
            Weld_2G_H WobjN,OdP,CorrP,"RB",t1;

        ELSEIF cornerPositionNumber=13 THEN
            
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            Weld_3F_NW_L WobjN,OdP,CorrP,PosAn,w,t2;
            Weld_2G_H WobjN,OdP,CorrP,"LB",t1;

        ENDIF        
        
        !!
    ENDPROC
    
    !This procedure search all Top connections and store correct positions on position array
    LOCAL PROC PosSearchTop()
        
        SearchPrepare;

        SetWobjUse wobjSt1 ,0,0,0;
        
        !store the correctposition of top Posts
        FOR i FROM 1 TO n1-1 DO             
            CorrPT{i}:=PosCorr(wobjSt1,Odp{i},1,0, h,w,t1,t2,t3,t4)+[0,0,Odp{i}];         
        ENDFOR
        
        CorrPT{n1}:=PosCorr(wobjSt1,odp{n1},2,0, h,w,t1,t2,t3,t4)+[0,0,Odp{n1}];         

        !store the correctposition of top balusters
        FOR i FROM 1 TO n2 DO
            CorrBT{i}:=PosCorr(wobjSt1,OdB{i},5,0, h,w,t1,t2,t3,t4)+[0,0,OdB{i}];       
        ENDFOR
        
        MoveJ Offs(overSt1,0,0,0), v1000, z50, tWeldGun\WObj:=wRot1;            
        
    ENDPROC
    
    !This procedure search all Bottom connections and store correct positions on position array
    LOCAL PROC PosSearchBottom()
        
        SearchPrepare;

        SetWobjUse wobjSt1 ,0,0,0;

        !store the correctposition of Bottom Posts
        FOR i FROM 1 TO n1-1 DO
            CorrPB{i}:=PosCorr(wobjSt1,Odp{i},3,0, h,w,t1,t2,t3,t4)+[0,0,Odp{i}];         
        ENDFOR
        
        CorrPB{n1}:=PosCorr(wobjSt1,odp{n1},4,0, h,w,t1,t2,t3,t4)+[0,0,Odp{n1}];        

        !store the correctposition of bottom balusters
        FOR i FROM 1 TO n2 DO
            CorrBB{i}:=PosCorr(wobjSt1,OdB{i},6,0, h,w,t1,t2,t3,t4)+[0,0,OdB{i}];       
        ENDFOR
        
        MoveJ Offs(overSt1,0,0,0), v1000, z50, tWeldGun\WObj:=wRot1;
        !MoveJ Offs(overSt1,0,0,0), v1000, z50, tWeldGun\WObj:=wRot1;        
        
    ENDPROC

ENDMODULE