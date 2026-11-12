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
    LOCAL PERS num l:=2807;

    !Final width of railing (Normally width of top rail)
    LOCAL PERS num w:=50;
    
    !Number of Posts
    LOCAL PERS num n1:=4;
    
    !Number of Balusters
    LOCAL PERS num n2:=27;
    
    !Distance Between <<!!***Right SIDE***!!>> of first post scabilon and disk surface
    LOCAL PERS num ds:=1325;   

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
    LOCAL PERS num OdP{5}:=[0,932,1865,2797,0];
    
    !Corrected top position of Railing posts (abreviated as CorrPT)
    LOCAL PERS pos CorrPT{5}:=[[4.36327,-0.899902,-3.05858],[7.2043,-0.0767879,-0.550043],[5.84276,0.6369,-3.86005],[2.04072,-0.163266,-14.8628],[0,0,0]];
    
    !Corrected Bottom position of Railing posts (abreviated as CorrPB)
    LOCAL PERS pos CorrPB{5}:=[[2.20023,1.13202,-0.575368],[-0.121929,0.97432,-0.988562],[3.39974,2.02419,-1.66831],[2.27643,0.803531,-11.2163],[0,0,0]];
    
    !Ordinate Dimensions of Balusters (abreviated as odB)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdB{50}:=  [91,185,278,372,465,559,652,745,839,1024
                        ,1117,1211,1304,1398,1491,1584,1678,1771,1956,2050
                        ,2143,2236,2330,2423,2517,2610,2704,2729.3,2820.4,2911.6
                        ,3002.7,3093.9,3185,3276.1,3367.3,3458.4,3549.6,3640.7,3731.9,0
                        ,0,0,0,0,0,0,0,0,0,0];

    !Corrected top position of Balusters (abreviated as CorrBT)
    LOCAL PERS pos CorrBT{50}:=[[4.50186,-0.251763,-0.835336],[10.7782,-0.734657,-1.64082],[7.78787,-0.813904,1.60414],[5.84314,-0.493896,-2.7472],[7.22346,-0.0857497,-1.63406]
                        ,[8.84087,-0.736613,0.300927],[7.23065,-0.328434,-2.34427],[6.89805,-0.247343,-1.07034],[7.38489,-0.0847496,-2.74932],[7.48283,-0.00635449,3.39859]
                        ,[8.58892,0.0749555,-2.26447],[7.14434,0.474952,-3.54001],[7.22717,0.799002,-3.54464],[6.40954,0.635449,-1.13893],[5.55241,0.557009,-1.78204]
                        ,[5.51944,0.476292,-2.42563],[8.43226,0.477101,-4.49962],[5.04032,0.637321,-4.01672],[5.84313,0.717797,-1.30131],[4.74291,0.719123,0.475468]
                        ,[8.19256,0.798768,-2.34409],[5.04048,0.557729,-2.98374],[5.69048,0.397636,-4.26437],[5.05309,0.396002,-4.82678],[3.76678,0.237262,-2.42177]
                        ,[4.89563,0.155816,-1.13849],[2.68666,-0.0854757,-2.98499],[5.4669,1.43364,3.45882],[5.3099,1.59056,1.8309],[5.94501,1.9971,3.30134]
                        ,[5.31953,2.47833,1.83822],[5.31912,2.31523,0.964815],[4.81954,2.79875,2.32699],[4.08431,3.12391,4.01431],[2.87021,3.44494,0.24322]
                        ,[2.62342,3.76688,1.60985],[3.20142,4.33449,1.22477],[2.38715,4.08813,-0.474715],[1.9045,4.25613,-0.635951],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];

    !Corrected bottom position of Balusters (abreviated as CorrBB)
    LOCAL PERS pos CorrBB{50}:=[[2.00729,1.28298,2.11852],[0.77434,0.241588,2.51435],[1.51689,0.880301,-0.0366539],[2.64765,0.878415,2.95522],[2.08037,0.240849,0.706711]
                        ,[2.56634,1.04039,-3.1589],[5.8584,1.03904,-1.65337],[5.70515,1.04309,-1.03037],[5.61859,1.04211,-1.02008],[2.64154,1.12373,-0.697915]
                        ,[2.97836,1.44717,0.819432],[1.67193,1.52719,0.109341],[5.69957,0.958593,-0.477652],[3.20307,2.01158,-3.17568],[1.7514,2.25096,-1.50787]
                        ,[5.47528,2.16874,-1.42427],[1.84794,2.25161,-4.18096],[1.61312,2.09081,-3.02399],[3.43906,2.65889,-0.307825],[4.17886,3.1477,-1.52289]
                        ,[3.12557,3.14887,0.164073],[1.58873,2.89873,1.48932],[3.44721,2.65439,-2.19743],[1.57812,2.57828,-0.54743],[1.82213,2.6576,-2.68865]
                        ,[2.23274,2.17004,-1.8762],[1.68832,1.36318,-3.65576],[5.52111,3.71404,2.48351],[4.50443,3.79408,2.31905],[4.01673,3.79647,1.83546]
                        ,[6.10427,4.03495,4.98647],[3.85355,4.35447,5.52419],[4.00761,4.51836,3.4753],[3.2794,4.59647,2.85192],[1.68054,4.75211,0.507195]
                        ,[0.645722,5.15469,2.11031],[-0.146597,5.39963,2.01753],[-1.28728,5.64924,1.84352],[-2.91112,5.56307,1.61965],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
                        
    LOCAL PERS num wobjA:=45; !Angle of table

    LOCAL PERS num partCounter:=13; !counter
    
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
    LOCAL PERS num dy:=-562.5;  !Y coordination of Down right edge of part
    LOCAL PERS num dz:=1335;    !Z coordination of Down right edge of part

    !**************************************************************************************************************    
    !**************************Special robot targets to use in procedures and functions****************************    
    !**************************Search positioning targets aimed vertically to the part*****************************
    !*******************Weld positioning targets have special angels in different positions************************    
    !**************************************************************************************************************    

    !Reference Robtarget shows Down, inside part of frame (Abreviated as RefT page 25 of <<Sotware analysis handbook>> )
    LOCAL PERS robtarget RefT:= [[75,-562.5,1325],[0.5,-0.5,-0.5,0.5],[1,-2,1,0],[370,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT:= [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[950,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT0 := [[0,0,-1],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[4028,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for search positions and Weld_2G_H and Weld_2G_V
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
    
    LOCAL PERS wobjdata wobjSt1:=[FALSE,FALSE,"STN1",[[0,0,0],[1,0,0,0]],[[61,-563.5,1322],[1,0,0,0]]];

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
        
        RT0.extax.eax_a:=wRot1.oframe.trans.z+500;        
        MoveJ Offs(RT0,10,0,0), v1000, fine, tWeldGun\WObj:=wobjSt1;
        WaitTime 5;
        
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
            DataEntry;
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
        weldCorner 4,Odp{1},CorrPB{1},3;

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
        Weld_2G_v WobjN,OdP{1},CorrPT{1},"LT",t1;

        !Bottom Second Post weld up to (n1-1)th Post
        FOR i FROM 2 TO n1-1 DO
            WobjN:= WobjNew(Odp{i},1);
            Weld_2G_v WobjN,OdP{i},CorrPT{i},"RT",t1;
            Weld_2G_v WobjN,OdP{i},CorrPT{i},"LT",t1;
        ENDFOR

        !Bottom last Post weld
        WobjN:= WobjNew(Odp{n1},2);
        Weld_2G_v WobjN,OdP{n1},CorrPT{n1},"LT",t1;
        MoveJ Offs(overSt1,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot1;

        !Bottom side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},5);
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR
        MoveJ Offs(overSt1,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot1;                

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
            Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
            Weld_3G_E WobjN,OdP,CorrP,PosAn,w;
            
        ELSEIF cornerPositionNumber=2 THEN
            
            WobjN:= WobjNew(Odp,sp);
            Weld_2G_H WobjN,OdP,CorrP,"RB",t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            
        ELSEIF cornerPositionNumber=3 THEN
            
            WobjN:= WobjNew(Odp,sp);
            Weld_2G_H WobjN,OdP,CorrP,"LB",t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            Weld_3G_W WobjN,OdP,CorrP,PosAn,w;
            
        ELSEIF cornerPositionNumber=4 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_V WobjN,OdP,CorrP,"LB",t1;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;
            !WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            !Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
            
        ELSEIF cornerPositionNumber=5 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_V WobjN,OdP,CorrP,"LB",t1;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_2G_V WobjN,OdP,CorrP,"LB",t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            !WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            !Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            !WobjN.oframe.trans.z:=WobjN.oframe.trans.z+t1;
            !Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
        
        ELSEIF cornerPositionNumber=6 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_V WobjN,OdP,CorrP,"LB",t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            !WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            !Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            
        ELSEIF cornerPositionNumber=7 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_H WobjN,OdP,CorrP,"RB",t1;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;
            Weld_3G_E WobjN,OdP,CorrP,PosAn,w;
            
        ELSEIF cornerPositionNumber=8 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_H WobjN,OdP,CorrP,"RB",t1;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
        
        ELSEIF cornerPositionNumber=9 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_H WobjN,OdP,CorrP,"LB",t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            Weld_3G_W WobjN,OdP,CorrP,PosAn,w;

        ELSEIF cornerPositionNumber=10 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_SE_L WobjN,OdP,CorrP,PosAn,w,t2;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
            Weld_2G_H WobjN,OdP,CorrP,"RB",t1;

        ELSEIF cornerPositionNumber=11 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            Weld_3F_SW_L WobjN,OdP,CorrP,PosAn,w,t2;
            Weld_2G_H WobjN,OdP,CorrP,"LB",t1;

        ELSEIF cornerPositionNumber=12 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_NE_L WobjN,OdP,CorrP,PosAn,w,t2;
            Weld_2G_H WobjN,OdP,CorrP,"RB",t1;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;

        ELSEIF cornerPositionNumber=13 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            Weld_2G_H WobjN,OdP,CorrP,"LB",t1;
            Weld_3F_NW_L WobjN,OdP,CorrP,PosAn,w,t2;

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
        
        MoveJ safeSt1_0, v1000, z50, tWeldGun;            
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
        
        MoveJ safeSt1_0, v1000, z50, tWeldGun;            
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
        
        RT0.extax.eax_e:=0;
        
        !RT0.extax.eax_a:=wobjUse.oframe.trans.z+500;

        IF SP=1 THEN !For SP refer to page 24 of sotware analysis handbook
            
            MoveJ Offs(RT0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;

            !Move to a suitable point to start Y and Z correction
            Movej Offs(RT0,50,-30,30), v1000, fine, tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,0,-30,30) , Offs(RT0,0,0,30), v200, tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,0,-30,30) , Offs(RT0,0,-30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,0,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
            MoveJ Offs(RT0,200,0,0), v1000, fine, tWeldGun\WObj:=wobjUse;
            
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
            Movel Offs(RT0,(w-t3)/2+50,-20,10),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2,-20,10),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,(w-t3)/2,-20,10) , Offs(RT0,(w-t3)/2,0,10), v200, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2-5,-20,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSz ,Offs(RT0,0,-20,15) , Offs(RT0,0,-20,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,100,-20,10),v1000,z50,tWeldGun\WObj:=wobjUse; 
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;

            !Move to a suitable point to start X correction
            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,-20,9),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,(w-t3)/2-15,-20,2) , Offs(RT0,-15,-20,2), v200, tWeldGun\WObj:=wobjUse;  
            Movel Offs(RT0,50,-20,5),v1000,z50,tWeldGun\WObj:=wobjUse; 
            PDispOff;
            myX:=RTSx.trans.x;
            
        ELSEIF SP=6 THEN !For SP refer to page 24 of sotware analysis handbook
            
            MoveJ Offs(RT0,100,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
            
            !Move to a suitable point to start Y and Z correction
            Movel Offs(RT0,(w-t3)/2+50,20,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,(w-t3)/2-5,20,15) , Offs(RT0,(w-t3)/2-5,0,15), v200, tWeldGun\WObj:=wobjUse;
            Movel Offs(RT0,(w-t3)/2-5,20,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSz ,Offs(RT0,0,20,15) , Offs(RT0,0,20,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            Movel Offs(RT0,30,20,15),v1000,z50,tWeldGun\WObj:=wobjUse; 
            
            !Calculate deviations
            myX:=0;
            myY:=RTSy.trans.y;
            myZ:=RTSz.trans.z;
            
            !Move to a suitable point to start X correction
            PDispSet [[myX,myY,myZ] , [1,0,0,0]];
            Movel Offs(RT0,50,20,10),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,(w-t3)/2-15,20,3) , Offs(RT0,-15,20,3), v200, tWeldGun\WObj:=wobjUse;  
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
    
ENDMODULE