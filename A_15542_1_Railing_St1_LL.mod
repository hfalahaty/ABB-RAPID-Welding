MODULE A_15542_1_Railing_St1_LL 
    
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
    LOCAL PERS num h:=950;
    
    !Total lengh of railing (back to back)
    LOCAL PERS num l:=3833;

    !Final width of railing (Normally width of top rail)
    LOCAL PERS num w:=50;
    
    !Number of Posts
    LOCAL PERS num n1:=4;
    
    !Number of Balusters
    LOCAL PERS num n2:=39;
    
    !Distance Between <<!!***Right SIDE***!!>> of first post scabilon and disk surface
    LOCAL PERS num ds:=810;   

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
    LOCAL PERS num OdP{5}:=[0,1274,2549,3833,0];
    
    !Corrected top position of Railing posts (abreviated as CorrPT)
    LOCAL PERS pos CorrPT{5}:=[[3.71906,-1.62825,-1.74892],[4.86942,-0.259729,0.114104],[4.78371,1.28111,-0.804588],[2.31536,0.713639,-20.6017],[0,0,0]];
    
    !Corrected Bottom position of Railing posts (abreviated as CorrPB)
    LOCAL PERS pos CorrPB{5}:=[[0.348936,0.39325,-0.466594],[2.04988,-0.324781,0.342144],[4.14335,1.29001,1.07698],[-0.0470991,1.68219,-18.1467],[0,0,0]];
    
    !Ordinate Dimensions of Balusters (abreviated as odB)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdB{50}:=  [89.1,180.3,271.4,362.6,453.7,544.9,636,727.1,818.3,909.4
                        ,1000.6,1091.7,1182.9,1363.6,1454.9,1545.9,1637.1,1728.2,1819.4,1910.5
                        ,2001.6,2092.8,2183.9,2275.1,2366.2,2457.4,2638.1,2729.3,2820.4,2911.6
                        ,3002.7,3093.9,3185,3276.1,3367.3,3458.4,3549.6,3640.7,3731.9,0
                        ,0,0,0,0,0,0,0,0,0,0];

    !Corrected top position of Balusters (abreviated as CorrBT)
    LOCAL PERS pos CorrBT{50}:=[[2.53734,-1.45539,-0.0597273],[2.94402,-1.1262,0.264517],[3.76168,-0.889253,0.0213527],[4.49172,-0.644002,0.103654],[3.76182,-0.64852,-0.539825]
                        ,[4.08063,-0.643221,-1.10087],[4.00332,-0.805133,-2.88431],[8.5475,-0.72793,0.106497],[5.8611,-0.648105,-1.1934],[5.20973,-0.642582,-3.52187]
                        ,[5.46281,-0.567758,-3.04314],[6.65515,-0.404544,-0.935852],[5.956,-0.321456,-2.79349],[4.96452,-0.159957,-0.445654],[6.16841,-0.000737464,-0.43917]
                        ,[5.94598,0.322501,2.62083],[5.8611,0.404348,-2.36661],[5.04729,0.40431,-2.45705],[5.04225,0.326295,-1.57093],[4.72628,0.480118,-1.01419]
                        ,[5.13065,0.71902,1.16145],[4.40914,1.60237,-1.32924],[7.07628,0.880784,-0.609926],[4.24903,1.03647,-1.56803],[3.91822,1.03851,-2.93912]
                        ,[5.80475,1.12204,-3.66159],[6.26519,1.43779,2.13936],[3.83961,1.52491,0.928334],[4.80119,1.68778,0.281572],[4.24334,1.60462,0.360076]
                        ,[2.52794,1.35926,3.34976],[7.15397,1.36082,5.18224],[3.59548,1.36099,1.57335],[3.92691,1.27932,0.845843],[3.51637,1.19916,-0.762267]
                        ,[4.48707,1.03804,1.32731],[4.81105,0.877375,1.48851],[4.56545,0.719688,0.759312],[5.13013,0.721379,0.361979],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];

    !Corrected bottom position of Balusters (abreviated as CorrBB)
    LOCAL PERS pos CorrBB{50}:=[[0.876107,-0.414554,2.64464],[0.626063,-0.0154819,1.98741],[1.61829,-0.259671,-0.437469],[0.378301,-0.341811,1.66491],[0.945164,-0.181694,3.20266]
                        ,[0.789793,-0.177298,3.37424],[0.788111,-0.0954279,2.22708],[-0.846368,-0.011264,2.31241],[0.456573,-0.0103473,-0.293055],[2.08873,0.228862,2.01219]
                        ,[0.785336,0.313651,-0.523989],[1.923,0.315239,-1.69632],[4.59181,-0.0114376,-1.0734],[4.91566,-0.417517,2.65157],[3.70379,-0.505365,-0.666843]
                        ,[0.788404,-0.420349,1.08691],[1.51899,-0.256303,-0.202959],[1.02075,-0.00757341,0.68355],[3.21442,0.232631,-0.667467],[2.2544,0.556182,-1.8716]
                        ,[0.725063,0.959179,-1.06611],[4.41256,1.27662,-0.775279],[1.29012,1.439,-1.94581],[0.643415,1.60111,-1.39419],[4.09026,1.44082,-2.18678]
                        ,[4.32355,1.11614,-1.14822],[6.03481,1.44092,3.29707],[2.08171,2.00506,1.23104],[2.80267,2.55621,2.85161],[1.90473,2.3965,3.26315]
                        ,[2.72587,2.39315,1.95135],[1.19607,2.07205,0.675899],[1.42925,1.75561,2.51836],[1.77033,1.03969,2.72732],[2.00446,1.68472,0.336331]
                        ,[2.09289,1.44265,2.01336],[0.125616,1.83816,1.81136],[1.18659,1.76015,1.47962],[4.5991,1.44053,1.84571],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
                        
    LOCAL PERS num wobjA:=45; !Angle of table

    LOCAL PERS num partCounter:=8; !counter
    
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
    LOCAL PERS num dz:=820;    !Z coordination of Down right edge of part

    !**************************************************************************************************************    
    !**************************Special robot targets to use in procedures and functions****************************    
    !**************************Search positioning targets aimed vertically to the part*****************************
    !*******************Weld positioning targets have special angels in different positions************************    
    !**************************************************************************************************************    

    !Reference Robtarget shows Down, inside part of frame (Abreviated as RefT page 25 of <<Sotware analysis handbook>> )
    LOCAL PERS robtarget RefT:= [[75,-465,810],[0.5,-0.5,-0.5,0.5],[1,-2,1,0],[370,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT:= [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[950,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT0 := [[0,0,-1],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[4621.85,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for search positions and Weld_2G_H and Weld_2G_V
    LOCAL PERS robtarget RT1 := [[0,-2,0],[0.93,-0.19,-0.25,0.19],[1,-1,-1,0],[1305.25,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT2 := [[0,-1,1],[0.45,-0.76,-0.47,0.09],[0,-2,1,1],[3357.08,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget Rt3 := [[0,-1,-1],[0.76,-0.45,-0.09,0.47],[1,-1,-1,0],[4621.85,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[0,-2,0],[0.3,-0.6,-0.73,0.13],[0,-2,1,1],[5369.4,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT5 := [[0,1,1],[0.45,0.76,-0.47,-0.09],[1,-1,1,0],[3357.08,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NW and Weld_3F_NW_L
    LOCAL PERS robtarget RT6 := [[0,1,-1],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[4621.85,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NE and Weld_3F_NE_L

    LOCAL PERS robtarget RB1 := [[1,0,-6],[0.54,-0.75,-0.28,0.21],[1,-1,-1,0],[5041.26,9E+09,9E+09,9E+09,-30,9E+09]];!wobjUse\ using for  Weld_ARC_N
    LOCAL PERS robtarget RB2 := [[0,3,-7],[0.75,0.54,-0.21,-0.28],[0,-1,-2,0],[4542.75,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for  Weld_ARC_S
    
    !**************************************************************************************************************
    !************************************Main Robot targets used every where***************************************    
    !**************************************************************************************************************   
    
    LOCAL PERS wobjdata wobjSt1:=[FALSE,FALSE,"STN1",[[0,0,0],[1,0,0,0]],[[61,-466,807],[1,0,0,0]]];

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
    
    PROC Main_15542_1_Railing_St1_LL()
        
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
    LOCAL PROC DataEntry_St1_LL()
        
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
            DataEntry_St1_LL;
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
        Weld_2G_v WobjN,OdP{1},CorrPT{1},"LT";

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
            Weld_3F_SW WobjN,OdP,CorrP,PosAn;
            Weld_3G_E WobjN,OdP,CorrP,PosAn;
            
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
        
        RT0.extax.eax_e:=0;
        
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
        PulseDO\High\PLength:=1,doFeedBwd_1;
        
        !Welding top side
        IF LR="LB" THEN
            ArcLStart Offs(RT0,0,0,lengh/2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,0,1),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,lengh-1),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ELSEIF LR="RB" THEN
            ArcLstart Offs(RT0,0,0,-lengh/2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,0,-1),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,-(lengh-1)),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ELSEIF LR="LT" THEN
            ArcLStart Offs(RT0,0,0,lengh/2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,0,1),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,lengh-1),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ELSEIF LR="RT" THEN
            ArcLstart Offs(RT0,0,0,-lengh/2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,0,-1),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,-(lengh-1)),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
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
        PulseDO\High\PLength:=1,doFeedBwd_1;
        
        !Welding top side
        IF LR="LB" THEN
            ArcLStart Offs(RT0,0,-(t1)/2,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,0,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,-(t1),0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;  
        ELSEIF LR="RB" THEN
            ArcLStart Offs(RT0,0,-(t1)/2,-t1), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,0,-t1), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,-(t1),-t1), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;      
        ELSEIF LR="LT" THEN
            ArcLStart Offs(RT0,0,(t1)/2,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,t1,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;  
        ELSEIF LR="RT" THEN
            ArcLStart Offs(RT0,0,(t1)/2,-t1), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,t1,-t1), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
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
            
            RT0.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,0,9E+09];
            
            RT1.trans:=[0,2,0];
            RT1.rot:=[0.93,0.19,-0.19,0.25];
            RT1.robconf:=[1,-1,-1,0];
            RT1.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            
            RT0.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,0,9E+09];
            
            RT1.trans:=[0,-2,0];
            RT1.rot:=[0.93,-0.19,-0.25,0.19];
            RT1.robconf:=[1,-1,-1,0];
            RT1.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,0,9E+09];
        ENDIF
        
        !Set new robotTarget over new workObject and move torch 400 mm above it
        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        PulseDO\High\PLength:=0.5,soFeedFwd_1;

        !Move to a suitable point to start Y and Z correction
        Movej Offs(RT0,100,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse; 
        
        s:=1;
        WHILE s=1 DO
            s:=5;
            Search_1D RTSz ,Offs(RT0,-5,-30,-30) , Offs(RT0,-5,-30,0), v200, tWeldGun\WObj:=wobjUse;
            IF Abs(RTSz.trans.z)>12 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";  
            ENDIF
        ENDWHILE

        Movel Offs(RT0,-5,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Calculate deviations
        PDispSet [[myX,myY,RTSz.trans.z] , [1,0,0,0]];
        
        Movel Offs(RT0,50,-15,-5),v1000,z50,tWeldGun\WObj:=wobjUse;
        Search_1D RTSx, Offs(RT0,5,-30,-5) , Offs(RT0,-15,-30,-5), v200, tWeldGun\WObj:=wobjUse;  
        Movej Offs(RT0,200,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        PDispSet [[RTSx.trans.x,myY,RTSz.trans.z] , [1,0,0,0]];
        Movej Offs(RT1,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
        
        PulseDO\High\PLength:=1.5,doFeedBwd_1;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT1,0,0,0), v100, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT1,-w,0,0), v100, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

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
        RT2.trans:=[0,-1,1];
        RT2.rot:=[0.45,-0.76,-0.47,0.09];
        RT2.robconf:=[0,-2,1,1];
        IF wobjUse.oframe.trans.y<0 THEN
            
            RT0.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,0,9E+09];
            
            RT2.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
            
        ELSE
            
            RT0.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,0,9E+09];
            
            RT2.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,-PosAn,9E+09];
            
        ENDIF

        !Set new robotTarget over new workObject and move torch 400 mm above it
        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        PulseDO\High\PLength:=1,soFeedFwd_1;

        !Move to a suitable point to start Y and Z correction
        Movej Offs(RT0,100,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse; 
        
        s:=1;
        WHILE s=1 DO
            s:=5;
            Search_1D RTSy ,Offs(RT0,-5,-30,30) , Offs(RT0,-5,0,30), v200, tWeldGun\WObj:=wobjUse;
            IF Abs(RTSy.trans.y)>2 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";                   
            ENDIF
        ENDWHILE
        
        s:=1;
        WHILE s=1 DO
            s:=5;
            Search_1D RTSz ,Offs(RT0,-5,-30,30) , Offs(RT0,-5,-30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            IF Abs(RTSz.trans.z)>2 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";  
            ENDIF
        ENDWHILE
        
        Movel Offs(RT0,-5,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
        Movej Offs(RT0,200,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Calculate deviations
        PDispSet [[myX,RTSz.trans.y,RTSz.trans.z] , [1,0,0,0]];
        
        Movel Offs(RT0,50,-5,15),v1000,z50,tWeldGun\WObj:=wobjUse;
        Search_1D RTSx, Offs(RT0,5,-5,15) , Offs(RT0,-15,-5,15), v200, tWeldGun\WObj:=wobjUse;  
        Movej Offs(RT0,200,-30,15),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        Movej Offs(RT2,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
        PDispOff;
        PDispSet [[RTSx.trans.x,RTSy.trans.y,RTSz.trans.z] , [1,0,0,0]];
        
        PulseDO\High\PLength:=1.5, doFeedBwd_1;
       
        !Welding side (PG3F)
        ArcLStart Offs(RT2,0,0,0), v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT2,-W,0,0), v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

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
       
        ArcLStart Offs(RT2,0,0,2), v150, smUse, weld_4F\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT2,-W+t2,0,2), v150, smUse, weld_4F\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
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

        
        RT3.trans:=[0,-1,-1];
        RT3.rot:=[0.76,-0.45,-0.09,0.47];
        RT3.robconf:=[1,-1,-1,0];
        IF wobjUse.oframe.trans.y<0 THEN

            RT0.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,0,9E+09];
            
            RT3.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
            
        ELSE
            
            RT0.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,0,9E+09];
            
            RT3.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,-PosAn,9E+09];
            
        ENDIF

        !Set new robotTarget over new workObject and move torch 400 mm above it
        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        PulseDO\High\PLength:=1,soFeedFwd_1;

        !Move to a suitable point to start Y and Z correction
        Movej Offs(RT0,100,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;

        s:=1;
        WHILE s=1 DO
            s:=5;
            Search_1D RTSy ,Offs(RT0,-5,-30,-30) , Offs(RT0,-5,0,-30), v200, tWeldGun\WObj:=wobjUse;
            IF Abs(RTSy.trans.y)>2 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";                   
            ENDIF
        ENDWHILE
        
        s:=1;
        WHILE s=1 DO
            s:=5;
            Search_1D RTSz ,Offs(RT0,-5,-30,-30) , Offs(RT0,-5,-30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            IF Abs(RTSz.trans.z)>2 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";  
            ENDIF
        ENDWHILE
        
        Movel Offs(RT0,-5,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
        Movej Offs(RT0,200,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Calculate deviations
        PDispSet [[myX,RTSz.trans.y,RTSz.trans.z] , [1,0,0,0]];
        
        Movel Offs(RT0,50,-5,-15),v1000,z50,tWeldGun\WObj:=wobjUse;
        Search_1D RTSx, Offs(RT0,5,-5,-15) , Offs(RT0,-15,-5,-15), v200, tWeldGun\WObj:=wobjUse;  
        Movej Offs(RT0,200,-30,-15),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        Movej Offs(RT3,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
        PDispOff;
        PDispSet [[RTSx.trans.x,RTSy.trans.y,RTSz.trans.z] , [1,0,0,0]];
        
        PulseDO\High\PLength:=1.5,doFeedBwd_1;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT3,0,0,0), v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT3,-w+1,0,0), v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        
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
        ArcLStart Offs(RT3,0,0,0), v150, smUse, weld_4F\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT3,-w+t2,0,0), v150, smUse, weld_4F\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        !odp{1}-2 This -2 is for preventing from hit fixture
        ArcLStart Offs(RT3,-w+t2,0,-(odp{1})), v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT3,-w+t2,0,-4), v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT3,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC
    
    !( refer to page 25 of sotware analysis handbook )
    LOCAL PROC Weld_3G_W(wobjdata CorrectWobj , num position, pos correction, num PosAn)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;


        !RT4:= [[-0.01,0.03,-0.04],[0.297766,-0.602984,-0.728606,0.129922],[1,-1,0,1],[5394.97,9E+09,9E+09,9E+09,0.00222879,9E+09]] ;
        RT4.rot:=[0.30,-0.60,-0.73,0.13];
        RT4.robconf:=[0,-2,1,1];
        !RT4.robconf:=[0,1,-2,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT0.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,0,9E+09];
            RT4.trans:=[0,2,0];
            RT4.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT0.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,0,9E+09];
            RT4.trans:=[0,-2,0];
            RT4.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,0,9E+09];
        ENDIF

        !Set new robotTarget over new workObject and move torch 400 mm above it
        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        PulseDO\High\PLength:=0.5,soFeedFwd_1;

        !Move to a suitable point to start Y and Z correction
        Movej Offs(RT0,100,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse; 
        
        s:=1;
        WHILE s=1 DO
            s:=5;
            Search_1D RTSz ,Offs(RT0,-5,-30,30) , Offs(RT0,-5,-30,0), v200, tWeldGun\WObj:=wobjUse;
            IF Abs(RTSz.trans.z)>12 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";  
            ENDIF
        ENDWHILE        

        Movel Offs(RT0,-5,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
        Movej Offs(RT0,200,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Calculate deviations
        PDispSet [[myX,myY,RTSz.trans.z] , [1,0,0,0]];        
        
        Movel Offs(RT0,50,-15,5),v1000,z50,tWeldGun\WObj:=wobjUse;
        Search_1D RTSx, Offs(RT0,5,-30,5) , Offs(RT0,-15,-30,5), v200, tWeldGun\WObj:=wobjUse;  
        Movej Offs(RT0,200,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        PDispSet [[RTSx.trans.x,myY,RTSz.trans.z] , [1,0,0,0]];
        Movej Offs(RT4,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
        
        PulseDO\High\PLength:=1.5,doFeedBwd_1;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT4,0,0,0), v100, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT4,-w,0,0), v100, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

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
        RT5.trans:=[0,1,1];
        RT5.rot:=[0.45,0.76,-0.47,-0.09];
        RT5.robconf:=[1,-1,1,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT0.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,0,9E+09];
            RT5.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT0.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,0,9E+09];
            RT5.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Set new robotTarget over new workObject and move torch 400 mm above it
        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        PulseDO\High\PLength:=1.5,soFeedFwd_1;
        
        Movej Offs(RT0,100,30,30),v1000,z50,tWeldGun\WObj:=wobjUse;

        s:=1;
        WHILE s=1 DO
            s:=5;
        Search_1D RTSy ,Offs(RT0,-5,30,30) , Offs(RT0,-5,0,30), v200, tWeldGun\WObj:=wobjUse;
            IF Abs(RTSy.trans.y)>2 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";                   
            ENDIF
        ENDWHILE
        
        s:=1;
        WHILE s=1 DO
            s:=5;
        Search_1D RTSz ,Offs(RT0,-5,30,30) , Offs(RT0,-5,30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            IF Abs(RTSz.trans.z)>2 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";  
            ENDIF
        ENDWHILE

        Movel Offs(RT0,50,5,15),v1000,z50,tWeldGun\WObj:=wobjUse;
        Search_1D RTSx, Offs(RT0,5,5,15) , Offs(RT0,-15,5,15), v200, tWeldGun\WObj:=wobjUse;  
        Movej Offs(RT0,200,30,15),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        Movej Offs(RT5,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
        PDispOff;
        PDispSet [[RTSx.trans.x,RTSy.trans.y,RTSz.trans.z] , [1,0,0,0]];
        
        PulseDO\High\PLength:=1.5,doFeedBwd_1;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT5,0,0,0), v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT5,-w-2,0,0), v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        
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
        ArcLStart Offs(RT5,0,0,0), v150, smUse, weld_4F\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT5,-w+t2+2,0,0), v150, smUse, weld_4F\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
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
        RT6.trans:=[0,1,-1];
        RT6.rot:=[0.76,0.45,-0.09,-0.47];
        RT6.robconf:=[0,0,-2,0];
        IF wobjUse.oframe.trans.y<0 THEN
            RT0.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,0,9E+09];
            RT6.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT0.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,0,9E+09];
            RT6.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF
        
        !Set new robotTarget over new workObject and move torch 400 mm above it
        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        PulseDO\High\PLength:=1,soFeedFwd_1;
        
        Movej Offs(RT0,100,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;

        s:=1;
        WHILE s=1 DO
            s:=5;
        Search_1D RTSy ,Offs(RT0,-5,30,-30) , Offs(RT0,-5,0,-30), v200, tWeldGun\WObj:=wobjUse;
            IF Abs(RTSy.trans.y)>2 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";                   
            ENDIF
        ENDWHILE
        
        s:=1;
        WHILE s=1 DO
            s:=5;
        Search_1D RTSz ,Offs(RT0,-5,30,-30) , Offs(RT0,-5,30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            IF Abs(RTSz.trans.z)>2 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";  
            ENDIF
        ENDWHILE


        Movel Offs(RT0,-5,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
        Movej Offs(RT0,200,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Calculate deviations
        PDispSet [[myX,RTSz.trans.y,RTSz.trans.z] , [1,0,0,0]];        
        
        Movel Offs(RT0,50,5,-15),v1000,z50,tWeldGun\WObj:=wobjUse;
        Search_1D RTSx, Offs(RT0,5,5,-15) , Offs(RT0,-15,5,-15), v200, tWeldGun\WObj:=wobjUse;  
        Movej Offs(RT0,200,30,-15),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        Movej Offs(RT6,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
        PDispOff;
        PDispSet [[RTSx.trans.x,RTSy.trans.y,RTSz.trans.z] , [1,0,0,0]];
        
        PulseDO\High\PLength:=1.5,doFeedBwd_1;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT6,0,0,0), v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-w,0,0), v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        
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
        ArcLStart Offs(RT6,0,2,-2), v150, smUse, weld_4F\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-w+t2,2,-2), v150, smUse, weld_4F\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
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
        RB1.trans:=[1,0,-6];
        IF wobjUse.oframe.trans.y<0 THEN
            RT0.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
            RB1.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT0.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
            RB1.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,PosAn,9E+09];
        ENDIF

        RB1.rot:=[0.75,-0.54,-0.21,0.28];
        !RB1.rot:=[0.5,-0.5,-0.5,0.5];
        RB1.robconf:=[1,-1,-1,0];
        !RB1.robconf:=[1,1,-2,1];
        
        p0:=Offs(RB1,0,0,0);
        p2:=offs(p0,-(1.9),0,-(3));
        p3:=offs(p0,-(7),0,-(8));

        !Over weld position
        MoveJ Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !MoveJ Offs(p0,0,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v150, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p2, p3, v150, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        MoveL Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        RB1.rot:=[0.54,-0.75,-0.28,0.21];
        p0:=Offs(RB1,0,0,0);
        p1:=Offs(p0,-(1.9),0,(3));
        p4:=Offs(p0,-(7),0,(8));

        !Over weld position
        MoveJ Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v150, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1, p4, v150, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart offs(p1,-2,0,0), v150, smUse, weld_2F2G_a6, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd offs(p1,-4,0,1), v150, smUse, weld_2F2G_a6, fine, tWeldGun\WObj:=wobjUse;

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
        RB2.trans:=[0,3,-7];
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
        p4:=Offs(p0,-(7),0,(8));
        MoveJ Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        !Welding
        ArcLStart p0, v300, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1, p4, v300, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        MoveL Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        RB2.rot:=[0.75,0.54,-0.21,-0.28];
        RB2.robconf:=[0,-1,-2,0];
        
        
        !Over weld position
        !p0:=Offs(RB2,18,-2,-(t3/2-1)+8);
        p0:=Offs(RB2,0,0,0);
        p2:=offs(p0,-(1.9),0,-(3));
        p3:=offs(p0,-(7),0,-(8));
        MoveJ Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v300, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p2, p3, v300, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart p2, v300, smUse, weld_2F2G_a6, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd offs(p2,-3,0,-1), v300, smUse, weld_2F2G_a6, fine, tWeldGun\WObj:=wobjUse;
        
        MoveL Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        PDispOff;

    ENDPROC
    
ENDMODULE