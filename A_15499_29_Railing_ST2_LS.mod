MODULE A_15499_29_Railing_ST2_LS
    
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
    LOCAL PERS num Th:=2100;

    !Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num h:=1155;
    
    !Total lengh of railing (back to back)
    LOCAL PERS num l:=2486;

    !Final width of railing (Normally width of top rail)
    LOCAL PERS num w:=50;
    
    !Number of Posts
    LOCAL PERS num n1:=2;
    
    !Number of Balusters
    LOCAL PERS num n2:=12;
    
    !Distance Between <<!!***Right SIDE***!!>> of first post scabilon and disk surface
    LOCAL PERS num ds:=767;   

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
    LOCAL PERS num OdP{5}:=[0,1233,2486,2802,0];
    
    !Corrected top position of Railing posts (abreviated as CorrPT)
    LOCAL PERS pos CorrPT{5}:=[[0.831769,-3.56158,-0.406108],[-0.468212,-0.912045,1221.36],[0.965865,-0.183133,2475.57],[3.07881,5.16339,-12.4104],[0,0,0]];
    
    !Corrected Bottom position of Railing posts (abreviated as CorrPB)
    LOCAL PERS pos CorrPB{5}:=[[2.81642,-2.09056,-0.830104],[4.20465,1.28328,1222.22],[0.98729,1.77098,2475.22],[2.26688,5.31524,-11.6393],[0,0,0]];
    
    !Ordinate Dimensions of Balusters (abreviated as odB)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdB{50}:=  [88,184,279,375,470,565,661,756,851,947
                        ,1042,1138,1336,1432,1527,1623,1718,1813,1909,2004
                        ,2099,2195,2290,2386,2517,2610,2704,2729.3,2820.4,2911.6
                        ,3002.7,3093.9,3185,3276.1,3367.3,3458.4,3549.6,3640.7,3731.9,0
                        ,0,0,0,0,0,0,0,0,0,0];

    !Corrected top position of Balusters (abreviated as CorrBT)
    LOCAL PERS pos CorrBT{50}:=[[-1.07567,-3.47934,93.3384],[0.0509386,-2.99459,187.207],[-0.28172,-2.66485,280.313],[-0.356627,-2.09787,375.045],[0.870322,-1.68902,471.807]
                        ,[-2.45164,-1.36206,566.005],[-0.347761,-1.28042,663.298],[-0.509709,-1.19932,757.096],[-1.40314,-1.03986,850.871],[-1.2413,-0.958235,948.648]
                        ,[-1.48572,-0.959828,1043.64],[-2.53276,-0.957095,1136.42],[12.8716,-0.906752,1337.86],[-0.77078,-0.746845,1433.29],[-1.5797,-0.424394,1526.58]
                        ,[-0.693696,-0.0174773,1620.75],[-0.927907,0.307819,1716.55],[12.5618,0.3081,1809.86],[-1.09091,-0.0162759,1910.78],[-1.42559,-0.18203,2001.27]
                        ,[13.673,-0.263147,2094.32],[0.601225,-0.178856,2194.67],[1.09261,-0.096235,2290.07],[-1.75256,-0.0975238,2381.88],[3.82228,3.13229,-5.06386]
                        ,[2.93309,3.70357,-3.50951],[3.34137,4.58844,-6.69346],[5.4669,1.43364,3.45882],[5.3099,1.59056,1.8309],[5.94501,1.9971,3.30134]
                        ,[5.31953,2.47833,1.83822],[5.31912,2.31523,0.964815],[4.81954,2.79875,2.32699],[4.08431,3.12391,4.01431],[2.87021,3.44494,0.24322]
                        ,[2.62342,3.76688,1.60985],[3.20142,4.33449,1.22477],[2.38715,4.08813,-0.474715],[1.9045,4.25613,-0.635951],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];

    !Corrected bottom position of Balusters (abreviated as CorrBB)
    LOCAL PERS pos CorrBB{50}:=[[0.456861,-1.77041,94.264],[1.1032,-1.29531,190.855],[1.77557,-0.803186,286.15],[2.16368,-0.317082,380.777],[-0.3977,0.246381,477.193]
                        ,[1.44582,0.638919,568.487],[3.60068,0.880501,664.483],[4.17516,1.12567,758.068],[1.35843,0.489558,854.575],[3.03019,1.68895,947.605]
                        ,[4.51608,1.76531,1043.69],[3.86084,1.60906,1141.56],[3.78955,1.12707,1339.43],[3.31597,1.11796,1435.1],[3.85268,1.36882,1528.84]
                        ,[3.45231,1.69391,1625.88],[-0.414496,2.02169,1721.2],[2.55291,2.01683,1812.45],[1.77346,1.85999,1898.11],[2.25972,1.53275,2003.18]
                        ,[-2.27953,1.45106,2098.1],[0.39519,1.8602,2190.84],[0.800737,2.1006,2286.71],[-0.97861,2.18394,2386.08],[1.60374,4.99146,-1.15636]
                        ,[-0.332249,5.39732,0.481232],[0.554457,5.64238,-1.41539],[5.52111,3.71404,2.48351],[4.50443,3.79408,2.31905],[4.01673,3.79647,1.83546]
                        ,[6.10427,4.03495,4.98647],[3.85355,4.35447,5.52419],[4.00761,4.51836,3.4753],[3.2794,4.59647,2.85192],[1.68054,4.75211,0.507195]
                        ,[0.645722,5.15469,2.11031],[-0.146597,5.39963,2.01753],[-1.28728,5.64924,1.84352],[-2.91112,5.56307,1.61965],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
                        
    LOCAL PERS num wobjA:=45; !Angle of table

    LOCAL PERS num partCounter:=0; !counter
    
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
    LOCAL PERS num dy:=-567.5;  !Y coordination of Down right edge of part
    LOCAL PERS num dz:=777;    !Z coordination of Down right edge of part

    !**************************************************************************************************************    
    !**************************Special robot targets to use in procedures and functions****************************    
    !**************************Search positioning targets aimed vertically to the part*****************************
    !*******************Weld positioning targets have special angels in different positions************************    
    !**************************************************************************************************************    

    !Reference Robtarget shows Down, inside part of frame (Abreviated as RefT page 25 of <<Sotware analysis handbook>> )
    LOCAL PERS robtarget RefT:= [[75,-572.5,767],[0.5,-0.5,-0.5,0.5],[1,-2,1,0],[370,9E+09,9E+09,9E+09,0,9E+09]];!wRot2
    
    LOCAL PERS robtarget RT:= [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[950,9E+09,9E+09,9E+09,0,9E+09]];!wRot2
    
    LOCAL PERS robtarget RT0 := [[0,0,-1],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[1904,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for search positions and Weld_2G_H and Weld_2G_V
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
    
    LOCAL PERS wobjdata wobjST2:=[FALSE,FALSE,"STN2",[[0,0,0],[1,0,0,0]],[[63,-567.5,764],[1,0,0,0]]];

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
    
    PROC Main_A_15499_29_Railing_ST2_LS()
        
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
            TPWrite "Enter Balusters thicknes";
            TPReadNum t3,  "(Roundbar diameter, Pipe width)";
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
        
        partCounter:=0;
        
        dx:=60;
        dy:=-(h-2*t1)/2;
        dz:=ds+t1;
        RefT.trans.x:=dx+fdxST2;
        RefT.trans.y:=dy+fdyST2;
        RefT.trans.z:=dz+fdzST2;
        
        SetWobjUse wRot2, dx, dy, dz;
        wobjST2:=wobjUse;
        wobjST2.oframe.trans:=wRot2.oframe.trans+[dx,dy,dz];
        
        StartSTn2;

        MoveJ safeST2_0, v1000, z50, tWeldGun\WObj:=wobj0;
        MoveJ overST2, v1000, z50, tWeldGun\WObj:=wRot2;
        
        RT0.extax.eax_a:=wRot2.oframe.trans.z+ds+500;        
        MoveJ Offs(RT0,10,0,0), v1000, fine, tWeldGun\WObj:=wobjST2;
        WaitTime 5;
        
        !wobjST2.oframe.trans.x:=wRot2.oframe.trans.x+dx;
        !wobjST2.oframe.trans.y:=wRot2.oframe.trans.y+dy;
        !wobjST2.oframe.trans.z:=wRot2.oframe.trans.z+dz;
        
    ENDPROC    
    
    LOCAL PROC RailingJob(bool firstRailing)
        
        StartStn2;
        
        IF firstRailing THEN
            MoveJ HomeST2_0,v1000,z50,tWeldGun\WObj:=wobj0;
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
            MoveJ HomeST2_0,v1000,z50,tWeldGun\WObj:=wobj0;
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
            
        MoveJ safeST2_0,v1000,z50,tWeldGun\WObj:=wobj0;
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
                    MoveJ HomeST2_0,v1000,z50,tWeldGun\WObj:=wobj0;
                    TPErase;
                    TPWrite     "!!!!You can load new parts for railing!!!!!";
                    TPReadFK s, "!!!!!!!!press ok when ready to strat!!!!!!!",
                        "ok",
                        "",
                        "",
                        "",
                        "";      
                ELSE
                    MoveJ safeSt2_0, v1000, z50, tWeldGun\WObj:=wobj0;
                    MoveJ HomeST2_0,v1000,z50,tWeldGun\WObj:=wobj0;
                ENDIF                
            ENDWHILE
    ENDPROC
    
    
    !This procedure welds on front side of railing
    LOCAL PROC WeldingFront()
        
        VAR wobjdata WobjN;
        VAR pose PoseOffs;
        
        PosSearchTop;

        WobjN:=wobjST2;

        SetDO doExhaustStn2,1;
   
        !Top first Post weld
        weldCorner 1, Odp{1},CorrPT{1},2;
       
        !Top Second Post weld up to (n1-1)th Post
        !FOR i FROM 2 TO n1-1 DO
            !weldCorner 2,Odp{i},CorrPT{i},1;
        !ENDFOR

        !Top last Post weld
        weldCorner 3, Odp{n1},CorrPT{n1},2;
        
        MoveJ Offs(overST2,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot2;            
    
        !top side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:=wobjST2;
            WobjN.oframe.trans.x:=WobjN.oframe.trans.x-(w-t3)/2;
            WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
            WobjN.oframe.trans:= WobjN.oframe.trans+CorrBT{i};
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR

        !Move to other side
        MoveJ safeST2_0, v1000, z50, tWeldGun;            
        
        SetDO doExhaustStn2,0;

        PosSearchBottom;
        
        SetDO doExhaustStn2,1;
        
        !Bottom first Post weld
        weldCorner 7,Odp{1},CorrPB{1},3;

        !Bottom Second Post weld up to (n1-1)th Post
        !FOR i FROM 2 TO n1-1 DO
            !weldCorner 5,Odp{i},CorrPB{i},3;
        !ENDFOR

        !Top last Post weld
        weldCorner 6, Odp{n1},CorrPB{n1},4;

        !Bottom side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:=wobjST2;
            WobjN.oframe.trans.x:=WobjN.oframe.trans.x-(w-t3)/2;
            WobjN.oframe.trans:= WobjN.oframe.trans+CorrBB{i};
            Weld_ARC_S WobjN,OdB{i},CorrBB{i},0;
        ENDFOR

        SetDO doExhaustStn2,0;
        
        !Move to other side
        MoveJ safeST2_0, v1000, z50, tWeldGun;   
        
        Cleaning;
        StartStn2;
    
    ENDPROC
    
    !This procedure welds on back side of railing
    LOCAL PROC WeldingBack()
        
        VAR wobjdata WobjN;
        VAR pose PoseOffs;
        
        PosSearchTop;
        
        
        SetDO doExhaustStn2,1;
    
        !Top first Post weld
        WobjN:=wobjST2;
        WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
        WobjN.oframe.trans:= WobjN.oframe.trans+CorrPT{1};
        Weld_2G_H WobjN,OdP{1},CorrPT{1},"RT",t1;

        !Top Second Post weld up to (n1-1)th Post
        !FOR i FROM 2 TO n1-1 DO
            !WobjN:=wobjST2;
            !WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
            !WobjN.oframe.trans:= WobjN.oframe.trans+CorrPT{i};
            !Weld_2G_H WobjN,OdP{i},CorrPT{i},"MT",t1;
        !ENDFOR

        !Top last Post weld
        WobjN:=wobjST2;
        WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
        WobjN.oframe.trans:= WobjN.oframe.trans+CorrPT{n1};
        Weld_2G_H WobjN,OdP{n1},CorrPT{n1},"LT",t1;
        
        MoveJ Offs(overST2,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot2;

        !Top side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:=wobjST2;
            WobjN.oframe.trans.x:=WobjN.oframe.trans.x-(w-t3)/2;
            WobjN.oframe.trans.y:= WobjN.oframe.trans.y+h-2*t1;
            WobjN.oframe.trans:= WobjN.oframe.trans+CorrBT{i};
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR
        MoveJ Offs(overST2,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot2;                

        SetDO doExhaustStn2,0;
        
        PosSearchBottom;

        SetDO doExhaustStn2,1;
            
        !Bottom first Post weld
        WobjN:=wobjST2;
        WobjN.oframe.trans:= WobjN.oframe.trans+CorrPB{1};
        Weld_2G_v WobjN,OdP{1},CorrPT{1},"LB",t1;
        
        !Bottom Second Post weld up to (n1-1)th Post
        !FOR i FROM 2 TO n1-1 DO
            !WobjN:=wobjST2;
            !WobjN.oframe.trans:= WobjN.oframe.trans+CorrPB{i};
            !Weld_2G_v WobjN,OdP{i},CorrPB{i},"RB",t1;
            !Weld_2G_v WobjN,OdP{i},CorrPB{i},"LB",t1;
        !ENDFOR

        !Bottom last Post weld
        WobjN:=wobjST2;
        WobjN.oframe.trans:= WobjN.oframe.trans+CorrPB{n1};
        Weld_2G_H WobjN,OdP{1},CorrPT{1},"LB",t1;

        MoveJ Offs(overST2,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot2;            

        !Bottom side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:=wobjST2;
            WobjN.oframe.trans.x:=WobjN.oframe.trans.x-(w-t3)/2;
            WobjN.oframe.trans:= WobjN.oframe.trans+CorrBB{i};
            Weld_ARC_S WobjN,OdB{i},CorrBB{i},0;
        ENDFOR

        !Move to other side
        MoveJ safeST2_0, v1000, z50, tWeldGun;    
        
        SetDO doExhaustStn2,0;
    
        Cleaning;
        StartStn2;
    
    ENDPROC

    LOCAL PROC weldCorner(num cornerPositionNumber, num Odp, pos CorrP , num sp)
        
        WobjN:=wobjST2;
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
            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            Weld_3G_W WobjN,OdP,CorrP,PosAn,w;
            Weld_2G_H WobjN,OdP,CorrP,"LT",t1;
            
        ELSEIF cornerPositionNumber=4 THEN
            
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y+t1;
            Weld_2G_V WobjN,OdP,CorrP,"LB",t1;
            
        ELSEIF cornerPositionNumber=5 THEN
            
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z+t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_V WobjN,OdP,CorrP,"LB",t1;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_2G_V WobjN,OdP,CorrP,"LB",t1;
        
        ELSEIF cornerPositionNumber=6 THEN
            
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y+t1;
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
        
        SetWobjUse wobjST2 ,0,0,0;
        
        !store the correctposition of top Posts
        FOR i FROM 1 TO n1-1 DO             
            CorrPT{i}:=PosCorr(Odp{i},1,0)+[0,0,Odp{i}];         
        ENDFOR
        
        CorrPT{n1}:=PosCorr(odp{n1},2,0)+[0,0,Odp{n1}];

        !store the correctposition of top balusters
        FOR i FROM 1 TO n2 DO
            CorrBT{i}:=PosCorr(OdB{i},5,0)+[0,0,OdB{i}];
        ENDFOR
        
        MoveJ Offs(overST2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;            
        
    ENDPROC
    
    !This procedure search all Bottom connections and store correct positions on position array
    LOCAL PROC PosSearchBottom()
        
        SearchPrepare;

        SetWobjUse wobjST2 ,0,0,0;

        !store the correctposition of Bottom Posts
        FOR i FROM 1 TO n1-1 DO
            CorrPB{i}:=PosCorr(Odp{i},3,0)+[0,0,Odp{i}];
        ENDFOR
        CorrPB{n1}:=PosCorr(odp{n1},4,0)+[0,0,Odp{n1}];

        !store the correctposition of bottom balusters
        FOR i FROM 1 TO n2 DO
            CorrBB{i}:=PosCorr(OdB{i},6,0)+[0,0,OdB{i}];
        ENDFOR
        
        MoveJ Offs(overST2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;
        
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
        
        RT0.extax.eax_e:=0;
        
        !RT0.extax.eax_a:=wobjUse.oframe.trans.z+500;

        IF SP=1 THEN !For SP refer to page 24 of sotware analysis handbook
            
            MoveJ Offs(RT0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movej Offs(RT0,50,-30,30), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,0,-30,30) , Offs(RT0,0,0,30), v200, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,0,-30,30) , Offs(RT0,0,-30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,0,-30,30), v600, z50, tWeldGun\WObj:=wobjUse;
            MoveJ Offs(RT0,200,0,0), v600, fine, tWeldGun\WObj:=wobjUse;
            
            !Calculate deviations
            myX:=0;
            myY:=RTSz.trans.y;
            myZ:=RTSz.trans.z;

            !Move to a suitable point to start X correction
            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,-5,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,5,-5,15) , Offs(RT0,-15,-5,15), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,-5,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;

            
        ELSEIF SP=2 THEN !For SP refer to page 24 of sotware analysis handbook
        
            MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movej Offs(RT0,100,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,0,-30,-30) , Offs(RT0,0,0,-30), v200, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,0,-30,-30) , Offs(RT0,0,-30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,0,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movej Offs(RT0,200,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;

            !Move to a suitable point to start X correction
            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,-5,-15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,5,-5,-15) , Offs(RT0,-15,-5,-15), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,-5,-15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;
            
        ELSEIF SP=3 THEN !For SP refer to page 24 of sotware analysis handbook
            
            MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            !Movej Offs(RT0,100,30,30),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,0,30,30) , Offs(RT0,0,0,30), v200, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,0,30,30) , Offs(RT0,0,30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,0,30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movej Offs(RT0,200,30,30),v1000,z50,tWeldGun\WObj:=wobjUse; 
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;

            !Move to a suitable point to start X correction
            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,5,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx, Offs(RT0,5,5,15) , Offs(RT0,-15,5,15), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,5,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;

            
        ELSEIF SP=4 THEN !For SP refer to page 24 of sotware analysis handbook
            
            Movej Offs(RT0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movej Offs(RT0,100,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,0,30,-30) , Offs(RT0,0,0,-30), v200, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,0,30,-30) , Offs(RT0,0,30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,0,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movej Offs(RT0,200,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;

            !Move to a suitable point to start X correction
            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,5,-15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,5,5,-15) , Offs(RT0,-15,5,-15), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,5,-15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;

        
        ELSEIF SP=5 THEN !For SP refer to page 24 of sotware analysis handbook

            MoveJ Offs(RT0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,(w-t3)/2+50,-20,20),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2,-20,20),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,(w-t3)/2,-20,20) , Offs(RT0,(w-t3)/2,0,20), v200, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2-5,-20,10),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSz ,Offs(RT0,0,-20,10) , Offs(RT0,0,-20,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,100,-20,10),v1000,z50,tWeldGun\WObj:=wobjUse; 
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;

            !Move to a suitable point to start X correction
            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,-25,3),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,(w-t3)/2-15,-25,3) , Offs(RT0,-15,-25,3), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,-25,3),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;
            
        ELSEIF SP=6 THEN !For SP refer to page 24 of sotware analysis handbook
            
            MoveJ Offs(RT0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
            
            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,(w-t3)/2+50,20,20),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,(w-t3)/2-5,20,20) , Offs(RT0,(w-t3)/2-5,0,20), v200, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2-5,20,10),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSz ,Offs(RT0,0,20,10) , Offs(RT0,0,20,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,30,20,10),v1000,z50,tWeldGun\WObj:=wobjUse; 
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;
            
            !Move to a suitable point to start X correction
            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,25,10),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,(w-t3)/2-15,25,3) , Offs(RT0,-15,25,3), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,25,10),v1000,z50,tWeldGun\WObj:=wobjUse; 
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

        SetWobjUse wobjST2, 0,0,0;

        IF SP=1 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjST2.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjST2.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjST2.oframe.trans.z+myPosition;
            
        ELSEIF SP=2 THEN !For SP refer to page 24 of sotware analysis handbook
        
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjST2.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjST2.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjST2.oframe.trans.z+(myPosition);
            
        ELSEIF SP=3 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjST2.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjST2.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjST2.oframe.trans.z+myPosition;
            
        ELSEIF SP=4 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjST2.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjST2.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjST2.oframe.trans.z+(myPosition);
        
        ELSEIF SP=5 THEN !For SP refer to page 24 of sotware analysis handbook

            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjST2.oframe.trans.x-(w-t3)/2;
            wobjUse.oframe.trans.y:=wobjST2.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjST2.oframe.trans.z+myPosition-t1+t3;            
        ELSEIF SP=6 THEN !For SP refer to page 24 of sotware analysis handbook

            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjST2.oframe.trans.x-(w-t3)/2;
            wobjUse.oframe.trans.y:=wobjST2.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjST2.oframe.trans.z+myPosition-t1+t3;
        ENDIF
        
        Cwobj:=wobjUse;


        RETURN Cwobj;
        
    ENDFUNC   

ENDMODULE