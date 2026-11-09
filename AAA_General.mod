MODULE AAA_General
    !You can find explanation about the variables along with drawings, on which the variables are marked, in <<sotware analysis handbook>> pages 1 and 10.
    !You can find this document on system's backup USB, inside of documents folder.


    
    LOCAL PERS num hashem:=0; !Just for Spacing, Also this is my signature in all my project!
    
    !**************************************************************************************************************    
    !*****************************************Robot Dimention and data*********************************************    
    !**************************************************************************************************************    
    
!    !when TCP is on [0,0,0] of table we have this deviations 
!    !Distance between side of torc's cap and wire (tcp y and z correction during search)
!    PERS num c1:=14;
    
!    !Distance between head of torc's cap and cylender side of cap 
!    PERS num c2:=40;

    !Difference between Station centerpoint and fixture center point on X axe (Fixed delta X)
    PERS num fdxSt1:=15;    
    
    !Difference between Station centerpoint and fixture center point on Y axe (Fixed delta Y)
    PERS num fdySt1:=0;    
    
    !Difference between Station centerpoint and fixture center point on Z axe (Fixed delta Z)
    PERS num fdzSt1:=-10;
    
    !Difference between Station centerpoint and fixture center point on X axe (Fixed delta X)
    PERS num fdxSt2:=15;    
    
    !Difference between Station centerpoint and fixture center point on Y axe (Fixed delta Y)
    PERS num fdySt2:=-5;    
    
    !Difference between Station centerpoint and fixture center point on Z axe (Fixed delta Z)
    PERS num fdzSt2:=-10;

    !Difference between Station centerpoint and fixture center point on Z axe (Fixed delta Z)
    PERS num St1_Rail_Corr:=0;

    !**************************************************************************************************************
    !************************************Main Robot targets used every where***************************************    
    !**************************************************************************************************************   
    
    PERS robtarget HomeSt1 :=       [[6000,0,1200],[0,0,-1,0],[0,-1,0,0],[-2500,9E+09,9E+09,9E+09,-60,9E+09]];!wobj0
    PERS robtarget HomeSt1_0 :=       [[6000,0,1200],[0,0,-1,0],[0,-1,0,0],[-2500,9E+09,9E+09,9E+09,0,9E+09]];!wobj0
    PERS robtarget HomeSt1_Load :=  [[6000,0,1200],[0,0,-1,0],[0,-1,0,0],[-2500,9E+09,9E+09,9E+09,0,9E+09]];!wobj0
    PERS robtarget safeSt1 :=       [[10500,0,1200],[0,0,1,0],[-1,0,0,0],[2000,9E+09,9E+09,9E+09,-60,9E+09]];!wobj0
    PERS robtarget safeSt1_0 :=     [[10500,0,1200],[0,0,1,0],[-1,0,0,0],[2000,9E+09,9E+09,9E+09,0,9E+09]];!wobj0
    PERS robtarget beginSt1 :=      [[250,0,0],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[360,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    PERS robtarget  overSt1 :=      [[500,0,2000],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[2000,9E+09,9E+09,9E+09,0,9E+09]];!wRot1

    PERS robtarget HomeSt2 :=       [[6000,0,1200],[0,0,-1,0],[0,-1,0,0],[5000,9E+09,9E+09,9E+09,-60,9E+09]];!wobj0
    PERS robtarget HomeSt2_0 :=       [[6000,0,1200],[0,0,-1,0],[0,-1,0,0],[5000,9E+09,9E+09,9E+09,0,9E+09]];!wobj0
    PERS robtarget HomeSt2_Load :=  [[6000,0,1200],[0,0,-1,0],[0,-1,0,0],[5000,9E+09,9E+09,9E+09,0,9E+09]];!wobj0
    PERS robtarget safeSt2 :=       [[3000,0,1200],[0,0,1,0],[-1,0,0,0],[1800,9E+09,9E+09,9E+09,-60,9E+09]];!wobj0
    PERS robtarget safeSt2_0 :=     [[3000,0,1200],[0,0,1,0],[-1,0,0,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobj0
    PERS robtarget beginSt2 :=      [[250,0,0],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[360,9E+09,9E+09,9E+09,0,9E+09]];!wRot2
    PERS robtarget CCPSt2 :=        [[296.78,16.89,70.11],[0.500054,-0.500029,-0.499965,0.499951],[1,-1,0,0],[360.013,9E+09,9E+09,9E+09,0.000589406,9E+09]];!wRot2
    PERS robtarget  overSt2 :=      [[500,0,1800],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wRot2

    !**************************************************************************************************************    
    !**********************************************local variables*************************************************    
    !**************************************************************************************************************    
    VAR num s;
    
    !**************************************************************************************************************    
    !**************************Special robot targets to use in procedures and functions****************************    
    !**************************Search positioning targets aimed vertically to the part*****************************
    !*******************Weld positioning targets have special angels in different positions************************    
    !**************************************************************************************************************    

    !Reference Robtarget shows Down, inside part of frame (Abreviated as RefT page 25 of <<Sotware analysis handbook>> )
    LOCAL PERS robtarget RefT:= [[75,-465,810],[0.5,-0.5,-0.5,0.5],[1,-2,1,0],[370,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT:= [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[950,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT0 := [[0,0,-1],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[3760.71,9E+09,9E+09,9E+09,-30,9E+09]];!wobjUse\ using for search positions and Weld_2G_H and Weld_2G_V
    LOCAL PERS robtarget RT1 := [[0,2,0],[0.93,0.19,-0.19,0.25],[1,-1,-1,0],[722.999,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT2 := [[-1,-2,2],[0.45,-0.76,-0.47,0.09],[0,-2,1,1],[1998.08,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget Rt3 := [[-1,-2,-2],[0.76,-0.45,-0.09,0.47],[1,-1,-1,0],[3262.62,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[-1,-2,0],[0.3,-0.6,-0.73,0.13],[0,-2,1,1],[4011.59,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT5 := [[-1,0,-1],[0.45,0.76,-0.47,-0.09],[1,-1,1,0],[1998.08,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NW and Weld_3F_NW_L
    LOCAL PERS robtarget RT6 := [[-1,2,-2],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[3262.62,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NE and Weld_3F_NE_L

    LOCAL PERS robtarget RB1 := [[1,0,-6],[0.54,-0.75,-0.28,0.21],[1,-1,-1,0],[3760.71,9E+09,9E+09,9E+09,-30,9E+09]];!wobjUse\ using for  Weld_ARC_N
    LOCAL PERS robtarget RB2 := [[0,0,-7],[0.75,0.54,-0.21,-0.28],[0,-1,-2,0],[3179.99,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for  Weld_ARC_S
    
    !**************************************************************************************************************    
    !************************************************Robot DATA*****************************************************    
    !**************************************************************************************************************    
    TASK PERS welddata weld_2F2G:=[5,5,[7,0,0,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0]];
    TASK PERS welddata weld_2F2G_a2:=[10,10,[9,0,0,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0]];
    TASK PERS welddata weld_2F2G_a3:=[7,6,[8,0,0,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0]];
    TASK PERS welddata weld_2F2G_a6:=[6,6,[1,0,0,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0]];
    TASK PERS welddata weld_2F2G_a4:=[7,9,[7,0,0,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0]];
    TASK PERS welddata weld_2F2G_a8:=[4,4,[1,0,0,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0]]; 
    TASK PERS welddata weld_3F:=[11,10,[2,0,0,0,0,0,0,0,0],[2,0,0,0,0,0,0,0,0]];
    TASK PERS welddata weld_4F:=[9,9,[7,0,0,0,0,0,0,0,0],[10,0,0,0,0,0,0,0,0]];
    TASK PERS welddata weld_3G:=[8,10,[3,0,0,0,0,0,0,0,0],[3,0,0,0,0,0,0,0,0]];
    
    TASK PERS weavedata weave2G2F:=[3,3,3,8,1,0.2,0,0.4,0,0,0,0,0,0,0];
    TASK PERS weavedata weavePG3F_O:=[1,1,2,4,-1,0.2,0,0.2,0,0,0,0,0,0,0];
    TASK PERS weavedata weavePG3F:=[1,1,2,5.5,0,0.1,0,0.1,0,0,0,0,0,0,0];
    TASK PERS weavedata weave2F_a5:=[2,2,2,6,0,0.1,0,0.1,0,0,0,0,0,0,0];
    TASK PERS weavedata weave2F_East:=[2,1,3,6,0,0.15,0,0.05,0,0,-45,0,0,0,0];
    TASK PERS weavedata weave3F:=[1,1,4,5,3,0.1,0,0.1,0,0,0,0,0,0,0];
    TASK PERS weavedata weave2F_West:=[2,1,3,6,0,0.05,0,0.15,0,0,45,0,0,0,0];
    
    TASK PERS seamdata smUse:=[1,0.4,[2,0,0,0,0,0,0,0,0],0,0,0,0,0,[2,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0.4];
    TASK PERS welddata weld_4F_1:=[9,11,[11,0,0,0,0,7,0,0,0],[10,0,0,0,0,0,0,0,0]];
    TASK PERS weavedata weave2G2F_a4:=[1,1,2,4,0,0.1,0,0.1,0,0,0,0,0,0,0];
    
    !**************************************************************************************************************    
    !*************************************************Local Variables********************************************** 
    !**************************************************************************************************************    
    
    LOCAL VAR pose RTSx;
    LOCAL VAR pose RTSy;
    LOCAL VAR pose RTSz;
    LOCAL VAR num myX;
    LOCAL VAR num myY;
    LOCAL VAR num myZ;
    
    LOCAL VAR num PosAn;
    
    LOCAL VAR wobjdata Cwobj; 
    LOCAL VAR pos myPos;
    
    !**************************************************************************************************************    
    
    !This procedure take out robot from HomeSt1, put in safeSt2 and then beginSt2
    PROC ReadyToWork(num stationNumber)
        
        VAR num A;
        VAR num Tempfdx;
        VAR num Tempfdy;
        VAR num Tempfdz;
        
        IF stationNumber = 1 THEN
            
            StartStn1;
            
            !Take robot out of home and put it on safe place side of station 2
            MoveJ safeSt1 ,v1000,fine,tWeldGun\WObj:=wobj0;            

            !Set work object to the center point of fixture on Station2 X=0 Y=0 Z=0
            MoveJ safeSt1_0 ,v1000,fine,tWeldGun\WObj:=wobj0;
            
            !Start Turning table to 180 degrees to start weld
            !move the welding torch 500mm over work object place
            MoveJ overSt1, v1000, fine, tWeldGun\WObj:=wRot1;
            MoveJ offs(beginSt1,0,0,0), v1000, z50, tWeldGun\WObj:=wRot1;
            
            TPErase;
            TPReadFK s, "X = 250 ?",
                "Yes",
                "No",
                "",
                "",
                ""; 
            IF s=1 THEN
                
                !Y and Z correction
                MoveJ Offs(beginSt1,-(250-227),0,0), v1000, z50, tWeldGun\WObj:=wRot1;
                s:=0;
                WHILE s<>1 DO !Workobject STN2 Correction
                    TPErase;
                    TPWrite "****************************************";
                    TPReadNum Tempfdy,  "Enter (Y) deviation";
                    TPWrite "****************************************";
                    TPReadNum Tempfdz, "Enter (Z) deviation";
                    TPWrite "****************************************";
                    !User acceptence
                    TPReadFK s,
                    "Are you sure about numbers?",
                    "Yes",
                    "No",
                    "",
                    "",
                    "";
                ENDWHILE
                
            ELSEIF s=2 THEN
                
                s:=0;
                WHILE s<>1 DO !Workobject STN2 Correction
                    TPErase;
                    TPReadNum Tempfdx,  "Enter (X) deviation";
                        wRot1.oframe.trans.x:= wRot1.oframe.trans.x-Tempfdx;
                        MoveJ beginSt1,v1000,z50,tWeldGun\WObj:=wRot1;
                        !User acceptence
                        TPReadFK s,
                        "Is it 250 now?",
                        "Yes",
                        "No",
                        "",
                        "",
                        "";
                ENDWHILE 
                
                !Y and Z correction
                MoveJ Offs(beginSt1,-(250-227)-Tempfdx,0,0),v1000,z50,tWeldGun\WObj:=wRot1;
                s:=0;
                WHILE s<>1 DO !Workobject STN2 Correction
                    TPErase;
                    TPWrite "****************************************";
                    TPReadNum Tempfdy,  "Enter (Y) deviation";
                    TPWrite "****************************************";
                    TPReadNum Tempfdz, "Enter (Z) deviation";
                    TPWrite "****************************************";
                    !User acceptence
                    TPReadFK s,
                    "Are you sure about numbers?",
                    "Yes",
                    "No",
                    "",
                    "",
                    "";
                ENDWHILE

            ENDIF
            
            wRot1.oframe.trans.y:=wRot1.oframe.trans.y-Tempfdy;
            wRot1.oframe.trans.z:=wRot1.oframe.trans.z-Tempfdz;
            
            MoveJ beginSt1, v500, fine, tWeldGun\WObj:=wRot1;
            WaitTime 5;
            MoveJ safeSt1, v500, fine, tWeldGun\WObj:=wobj0;
            
        ELSEIF stationNumber = 2 THEN
            
            DeactUnit STN1;
            StartStn2;
            
            !Take robot out of home and put it on safe place side of station 2
            MoveJ safeSt2 ,v1000,fine,tWeldGun\WObj:=wobj0;            

            !Set work object to the center point of fixture on Station2 X=0 Y=0 Z=0
            MoveJ safeSt2_0 ,v1000,fine,tWeldGun\WObj:=wobj0;
            
            !Start Turning table to 180 degrees to start weld
            !move the welding torch 500mm over work object place
            MoveJ offs(beginSt2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;
            
            TPErase;
            TPReadFK s, "X = 250 ?",
                "Yes",
                "No",
                "",
                "",
                ""; 
            IF s=1 THEN
                
                !Y and Z correction
                MoveJ Offs(beginSt2,-(250-227),0,0), v1000, z50, tWeldGun\WObj:=wRot2;
                s:=0;
                WHILE s<>1 DO !Workobject STN2 Correction
                    TPErase;
                    TPWrite "****************************************";
                    TPReadNum Tempfdy,  "Enter (Y) deviation";
                    TPWrite "****************************************";
                    TPReadNum Tempfdz, "Enter (Z) deviation";
                    TPWrite "****************************************";
                    !User acceptence
                    TPReadFK s,
                    "Are you sure about numbers?",
                    "Yes",
                    "No",
                    "",
                    "",
                    "";
                ENDWHILE
                
            ELSEIF s=2 THEN
                
                s:=0;
                WHILE s<>1 DO !Workobject STN2 Correction
                    TPErase;
                    TPReadNum Tempfdx,  "Enter (X) deviation";
                        wRot2.oframe.trans.x:= wRot2.oframe.trans.x-Tempfdx;
                        MoveJ beginSt2,v1000,z50,tWeldGun\WObj:=wRot2;
                        !User acceptence
                        TPReadFK s,
                        "Is it 250 now?",
                        "Yes",
                        "No",
                        "",
                        "",
                        "";
                ENDWHILE 
                
                !Y and Z correction
                MoveJ Offs(beginSt2,-(250-227)-Tempfdx,0,0),v1000,z50,tWeldGun\WObj:=wRot2;
                s:=0;
                WHILE s<>1 DO !Workobject STN2 Correction
                    TPErase;
                    TPWrite "****************************************";
                    TPReadNum Tempfdy,  "Enter (Y) deviation";
                    TPWrite "****************************************";
                    TPReadNum Tempfdz, "Enter (Z) deviation";
                    TPWrite "****************************************";
                    !User acceptence
                    TPReadFK s,
                    "Are you sure about numbers?",
                    "Yes",
                    "No",
                    "",
                    "",
                    "";
                ENDWHILE

            ENDIF
            
            wRot2.oframe.trans.y:=wRot2.oframe.trans.y-Tempfdy;
            wRot2.oframe.trans.z:=wRot2.oframe.trans.z-Tempfdz;
            
            MoveJ beginSt2, v500, fine, tWeldGun\WObj:=wRot2;
            WaitTime 5;
            MoveJ safeSt2, v500, fine, tWeldGun\WObj:=wobj0;            
        ENDIF

    ENDPROC
    
    !This procedure move robot to safeSt2 then HomeSt1
    PROC EndOfWork()
        
        s:=0;
        TPErase;
        TPReadFK s, "Are yoou sure",
            "Yes",
            "No",
            "",
            "",
            ""; 
        IF s=1 THEN
            BackHome;
        ELSE
            main;
        ENDIF

    ENDPROC

    PROC BackHome()
        
        IF siSTN1_ACT=1 THEN
            MoveJ safeSt1,v1000,z50,tWeldGun\WObj:=wobj0;
            MoveJ HomeSt1,v1000,z50,tWeldGun\WObj:=wobj0;
            DeactAll;
        ELSEIF siSTN2_ACT=1 THEN
            MoveJ safeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
            MoveJ HomeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
            DeactAll;
        ENDIF

    ENDPROC 
    
    !( refer to page 25 of sotware analysis handbook )
    PROC Weld_2G_H(wobjdata CorrectWobj , num position,pos correction, string LR, num lengh)
        
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
            ArcL Offs(RT0,0,0,0),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,lengh),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ELSEIF LR="RB" THEN
            ArcLstart Offs(RT0,0,0,-lengh/2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,0,0),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,-(lengh)),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ELSEIF LR="LT" THEN
            ArcLStart Offs(RT0,0,0,lengh/2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,0,0),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,lengh),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;      
        ELSEIF LR="RT" THEN
            ArcLstart Offs(RT0,0,0,-lengh/2),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,0,0),v100,smUse,weld_2F2G_a4,fine,tWeldGun\WObj:=wobjUse;
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
    PROC Weld_2G_V(wobjdata CorrectWobj , num position, pos correction, string LR, num Thickness)
        
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
            ArcLStart Offs(RT0,0,-(Thickness)/2,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,0,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,-(Thickness),0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;  
        ELSEIF LR="RB" THEN
            ArcLStart Offs(RT0,0,-(Thickness)/2,-Thickness), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,0,-Thickness), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,-(Thickness),-Thickness), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;      
        ELSEIF LR="LT" THEN
            ArcLStart Offs(RT0,0,(Thickness)/2,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,Thickness,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,0), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;  
        ELSEIF LR="RT" THEN
            ArcLStart Offs(RT0,0,(Thickness)/2,-Thickness), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcL Offs(RT0,0,Thickness,-Thickness), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT0,0,0,-Thickness), v100, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;      
        ENDIF
        
        !Over weld position
        !ConfJ\Off;
        Movej Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        !ConfJ\On;
        
        !PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!
        
    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    PROC Weld_3G_E(wobjdata CorrectWobj , num position, pos correction, num PosAn, num width)

        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        

        !RT1:= [[-0.38,-2.70,-10.06],[0.931078,0.194929,-0.172878,0.255362],[1,-2,0,0],[783.052,9E+09,9E+09,9E+09,29.9985,9E+09]] ;

        IF wobjUse.oframe.trans.y<0 THEN
            RT1.trans:=[0,2,0];
            RT1.rot:=[0.93,0.19,-0.19,0.25];
            RT1.robconf:=[1,-1,-1,0];
            RT1.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
            
            RT0.trans:=[0,60,0];
            RT0.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,0,9E+09];
        ELSE
            RT1.trans:=[0,-2,0];
            RT1.rot:=[0.93,-0.19,-0.25,0.19];
            RT1.robconf:=[1,-1,-1,0];
            RT1.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,0,9E+09];
            
            RT0.trans:=[0,0,0];
            RT0.extax:=[wobjUse.oframe.trans.z+500,9E+09,9E+09,9E+09,0,9E+09];
        ENDIF
        
        !Set new robotTarget over new workObject and move torch 400 mm above it
        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        PulseDO\High\PLength:=1.5,soFeedFwd_1;

        s:=1;
        WHILE s=1 DO
            s:=5;
            Movej Offs(RT0,100,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSz ,Offs(RT0,0,-30,-30) , Offs(RT0,0,-30,0), v200, tWeldGun\WObj:=wobjUse;
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

        Movel Offs(RT0,0,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
        
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
        ArcLEnd Offs(RT1,-width,0,0), v100, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT1,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
        
        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC
    
    !( refer to page 25 of sotware analysis handbook )
    PROC Weld_3F_SW(wobjdata CorrectWobj  , num position, pos correction, num PosAn, num width)
        
        PDispOff;
        PosAn:=40;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        
        !RT2:= [[0,0,0],[0.449513,-0.755714,-0.467429,0.0913496],[0,-2,1,1],[1864.98,9E+09,9E+09,9E+09,29.9993,9E+09]] ;

        RT2.trans:=[-1,-3,3];
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
        PulseDO\High\PLength:=1.5,soFeedFwd_1;

        s:=1;
        WHILE s=1 DO
            s:=5;
            Movej Offs(RT0,100,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSy ,Offs(RT0,0,-30,30) , Offs(RT0,0,0,30), v200, tWeldGun\WObj:=wobjUse;
            IF Abs(RTSy.trans.y)>3 THEN
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
            Search_1D RTSz ,Offs(RT0,0,-30,30) , Offs(RT0,0,-30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            IF Abs(RTSz.trans.z)>3 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";  
            ENDIF
        ENDWHILE
        
        Movel Offs(RT0,0,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
        Movej Offs(RT0,200,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Calculate deviations
        PDispSet [[0,RTSz.trans.y,RTSz.trans.z] , [1,0,0,0]];
        
            Movel Offs(RT0,50,-5,15),v1000,z50,tWeldGun\WObj:=wobjUse;
            Search_1D RTSx, Offs(RT0,5,-5,15) , Offs(RT0,-15,-5,15), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSz;  
            Movej Offs(RT0,200,-30,15),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movej Offs(RT2,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
        
        PDispOff;
        
        PDispSet [[RTSx.trans.x,RTSx.trans.y,RTSx.trans.z] , [1,0,0,0]];
        
            PulseDO\High\PLength:=1.5, doFeedBwd_1;
           
            !Welding side (PG3F)
            ArcLStart Offs(RT2,0,0,0), v150, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT2,-width,0,0), v150, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
    
            !Over weld position
            Movel Offs(RT2,200,-9,9),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 28 of sotware analysis handbook )
    PROC Weld_3F_SW_L(wobjdata CorrectWobj  , num position, pos correction, num PosAn, num width, num thickness)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;

        RT2.trans:=[-1,0,0];
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
        ArcLEnd Offs(RT2,-width+thickness,0,2), v150, smUse, weld_4F\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart Offs(RT2,-width+thickness+2,0,0), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT2,-width+thickness+2,0,2), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT2,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    PROC Weld_3F_SE(wobjdata CorrectWobj , num position,pos correction, num PosAn, num width)
        
        PDispOff;
        PosAn:=40;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;

        
        RT3.trans:=[-1,-3,-3];
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
        PulseDO\High\PLength:=1.5,soFeedFwd_1;

        s:=1;
        WHILE s=1 DO
            s:=5;
            Movej Offs(RT0,100,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,0,-30,-30) , Offs(RT0,0,0,-30), v200, tWeldGun\WObj:=wobjUse;
            IF Abs(RTSy.trans.y)>3 THEN
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
            Movej Offs(RT0,50,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,0,-30,-30) , Offs(RT0,0,-30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            IF Abs(RTSz.trans.z)>3 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";  
            ENDIF
        ENDWHILE
        
        Movel Offs(RT0,0,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
        Movej Offs(RT0,200,-30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Calculate deviations
        PDispSet [[0,RTSz.trans.y,RTSz.trans.z] , [1,0,0,0]];
        
            Movel Offs(RT0,50,-5,-15),v1000,z50,tWeldGun\WObj:=wobjUse;
            Search_1D RTSx, Offs(RT0,5,-5,-15) , Offs(RT0,-15,-5,-15), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSz; 
            Movej Offs(RT0,200,-30,-15),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movej Offs(RT3,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        PDispSet [[RTSx.trans.x,RTSx.trans.y,RTSx.trans.z] , [1,0,0,0]];
        
            PulseDO\High\PLength:=1.5,doFeedBwd_1;
            
            !Welding side (PG3F)
            ArcLStart Offs(RT3,0,0,0), v150, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT3,-width+1,0,0), v150, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
            
            !Over weld position
            Movel Offs(RT3,200,-8,-8),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    PROC Weld_3F_SE_L(wobjdata CorrectWobj , num position,pos correction, num PosAn, num width, num thickness)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        
        RT3.trans:=[-1,0,0];
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
        ArcLEnd Offs(RT3,-width+thickness,0,0), v150, smUse, weld_4F\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        !odp{1}-2 This -2 is for preventing from hit fixture
        ArcLStart Offs(RT3,-width+thickness,0,-(0)), v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT3,-width+thickness,0,-4), v150, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT3,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC
    
    !( refer to page 25 of sotware analysis handbook )
    PROC Weld_3G_W(wobjdata CorrectWobj , num position, pos correction, num PosAn, num width)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;


        !RT4:= [[-0.01,0.03,-0.04],[0.297766,-0.602984,-0.728606,0.129922],[1,-1,0,1],[5394.97,9E+09,9E+09,9E+09,0.00222879,9E+09]] ;

        RT4.rot:=[0.30,-0.60,-0.73,0.13];
        RT4.robconf:=[0,-2,1,1];

        IF wobjUse.oframe.trans.y<0 THEN
            RT0.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,0,9E+09];
            RT4.trans:=[-1,2,0];
            RT4.extax:=[wobjUse.oframe.trans.z,9E+09,9E+09,9E+09,PosAn,9E+09];
        ELSE
            RT0.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,0,9E+09];
            RT4.trans:=[-1,-2,0];
            RT4.extax:=[wobjUse.oframe.trans.z+750,9E+09,9E+09,9E+09,0,9E+09];
        ENDIF

        !Set new robotTarget over new workObject and move torch 400 mm above it
        MoveJ Offs(RT0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        PulseDO\High\PLength:=1.5,soFeedFwd_1;
        
        s:=1;
        WHILE s=1 DO
            s:=5;
            Movej Offs(RT0,100,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSz ,Offs(RT0,0,-30,30) , Offs(RT0,0,-30,0), v200, tWeldGun\WObj:=wobjUse;
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

        Movel Offs(RT0,0,-30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
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
        ArcLEnd Offs(RT4,-width,0,0), v100, smUse, weld_4F, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT4,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!
        
    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    PROC Weld_3F_NW(wobjdata CorrectWobj , num position, pos correction, num PosAn, num width)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;

        !RT5:= [[-2.83,3.59,0.11],[0.330995,0.88275,0.0400167,-0.331049],[0,-1,1,0],[1865.01,9E+09,9E+09,9E+09,0.000329907,9E+09]] ;

        RT5.trans:=[-1,3,3];
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

        s:=1;
        WHILE s=1 DO
            s:=5;
            Movej Offs(RT0,100,30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,0,30,30) , Offs(RT0,0,0,30), v200, tWeldGun\WObj:=wobjUse;
            IF Abs(RTSy.trans.y)>3 THEN
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
            Movej Offs(RT0,50,30,30),v1000,z50,tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,0,30,30) , Offs(RT0,0,30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            IF Abs(RTSz.trans.z)>3 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";  
            ENDIF
        ENDWHILE

        PDispSet [[0,RTSz.trans.y,RTSz.trans.z] , [1,0,0,0]];
        
            Movel Offs(RT0,50,5,15),v1000,z50,tWeldGun\WObj:=wobjUse;
            Search_1D RTSx, Offs(RT0,5,5,15) , Offs(RT0,-15,5,15), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSz;  
            Movej Offs(RT0,200,30,15),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        PDispOff;

        PDispSet [[RTSx.trans.x,RTSx.trans.y,RTSx.trans.z] , [1,0,0,0]];
        
            PulseDO\High\PLength:=1.5,doFeedBwd_1;
            
            !Welding side (PG3F)
            ArcLStart Offs(RT5,0,0,0), v150, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
            ArcLEnd Offs(RT5,-width-2,0,0), v150, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
            
            !Over weld position
            Movel Offs(RT5,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    PROC Weld_3F_NW_L(wobjdata CorrectWobj , num position, pos correction, num PosAn, num width, num thickness)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;

        RT5.trans:=[-1,0,4];
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
        ArcLEnd Offs(RT5,-width+thickness+2,0,0), v150, smUse, weld_4F\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart Offs(RT5,-width+thickness,2,0-6), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT5,-width+thickness,2,2), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT5,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    PROC Weld_3F_NE(wobjdata CorrectWobj , num position,pos correction,num PosAn, num width)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        
        !RT6:= [[-2.60,13.00,-13.30],[0.86,0.27,-0.40,0.12],[0,0,-2,0],[1750.01,9E+09,9E+09,9E+09,29.9989,9E+09]] ;

        RT6.trans:=[-1,3,-3];
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
        PulseDO\High\PLength:=1.5,soFeedFwd_1;
        
        s:=1;
        WHILE s=1 DO
            s:=5;
            Movej Offs(RT0,100,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
            Search_1D RTSy ,Offs(RT0,0,30,-30) , Offs(RT0,0,0,-30), v200, tWeldGun\WObj:=wobjUse;
            IF Abs(RTSy.trans.y)>3 THEN
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
            Movej Offs(RT0,50,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
            Search_1D RTSz ,Offs(RT0,0,30,-30) , Offs(RT0,0,30,0), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSy;
            IF Abs(RTSz.trans.z)>3 THEN
                TPErase;
                TPReadFK s, "Check TCP",
                    "Search Again",
                    "",
                    "",
                    "",
                    "Is correct";  
            ENDIF
        ENDWHILE


        Movel Offs(RT0,0,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
        Movej Offs(RT0,200,30,-30),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Calculate deviations
        PDispSet [[0,RTSz.trans.y,RTSz.trans.z] , [1,0,0,0]];        
        
            Movel Offs(RT0,50,5,-15),v1000,z50,tWeldGun\WObj:=wobjUse;
            Search_1D RTSx, Offs(RT0,5,5,-15) , Offs(RT0,-15,5,-15), v200, tWeldGun\WObj:=wobjUse\PrePDisp:=RTSz;  
            Movej Offs(RT0,200,30,-15),v1000,z50,tWeldGun\WObj:=wobjUse;
            Movej Offs(RT6,200,0,0),v1000,z50,tWeldGun\WObj:=WobjUse;
            
        PDispOff;
        
        PDispSet [[RTSx.trans.x,RTSx.trans.y,RTSx.trans.z] , [1,0,0,0]];
        
        PulseDO\High\PLength:=1.5,doFeedBwd_1;
        
        !Welding side (PG3F)
        ArcLStart Offs(RT6,0,0,0), v150, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-width,0,0), v150, smUse, weld_4F\Weave:=weave3F, fine, tWeldGun\WObj:=wobjUse;
        
        !Over weld position
        Movel Offs(RT6,200,13,-16),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    PROC Weld_3F_NE_L(wobjdata CorrectWobj , num position,pos correction,num PosAn, num width , num thickness)
        
        PDispOff;
        PosAn:=30;

        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;
        
        RT6.trans:=[-1,0,0];
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
        ArcLEnd Offs(RT6,-width+thickness,2,-2), v150, smUse, weld_4F\Weave:=weavePG3F_O, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart Offs(RT6,-width+thickness+3,2,0), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd Offs(RT6,-width+thickness+3,2,-2), v150, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        Movel Offs(RT6,200,13,-16),v1000,z50,tWeldGun\WObj:=WobjUse;

        PDispOff;
        
        !!!!!!!!!!!!!!!!!!!!!!!

    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    PROC Weld_ARC_N(wobjdata CorrectWobj , num position ,pos correction, num PosAn)

        VAR robtarget p0;
        VAR robtarget p1;
        VAR robtarget p2;
        VAR robtarget p3;
        VAR robtarget p4;
        
        !PDispOff;
        PosAn:=-30;
        
        WobjUse:=CorrectWobj;
        wobjUse.oframe.trans:= wobjUse.oframe.trans+correction;

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
        RB1.robconf:=[1,-1,-1,0];
        
        p0:=Offs(RB1,0,0,0);
        p2:=offs(p0,-(1.9),0,-(3));
        p3:=offs(p0,-(7),0,-(8));

        !Over weld position
        MoveJ Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v300, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p2, p3, v300, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        MoveL Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        RB1.rot:=[0.54,-0.75,-0.28,0.21];
        p0:=Offs(RB1,0,0,0);
        p1:=Offs(p0,-(1.9),0,(3));
        p4:=Offs(p0,-(7),0,(8));

        !Over weld position
        MoveJ Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v300, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1, p4, v300, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart offs(p1,-2,0,0), v150, smUse, weld_2F2G_a6, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd offs(p1,-4,0,1), v150, smUse, weld_2F2G_a6, fine, tWeldGun\WObj:=wobjUse;

        !Over weld position
        MoveL Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !PDispOff;

        
    ENDPROC

    !( refer to page 25 of sotware analysis handbook )
    PROC Weld_ARC_S(wobjdata CorrectWobj , num position, pos correction, num PosAn)
        
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

        RB2.trans:=[0,0,-7];

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
        ArcLStart p0, v4000, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        ArcCEnd p1, p4, v4000, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        MoveL Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        RB2.rot:=[0.75,0.54,-0.21,-0.28];
        !RB2.robconf:=[0,-1,-2,0];
        RB2.robconf:=[0,-1,-2,0];
        
        
        !Over weld position
        !p0:=Offs(RB2,18,-2,-(t3/2-1)+8);
        p0:=Offs(RB2,0,0,0);
        p2:=offs(p0,-(1.9),0,-(3));
        p3:=offs(p0,-(7),0,-(8));
        Movej Offs(p0,50,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;
        
        !Welding
        ArcLStart p0, v300, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        ArccEnd p2, p3, v4000, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobjUse;
        ArcLStart offs(p2,-2,0,0), v300, smUse, weld_2F2G_a6, fine, tWeldGun\WObj:=wobjUse;
        ArcLEnd offs(p2,-4,0,-1), v300, smUse, weld_2F2G_a6, fine, tWeldGun\WObj:=wobjUse;
        
        MoveL Offs(p0,200,0,0),v1000,z50,tWeldGun\WObj:=wobjUse;

        PDispOff;

    ENDPROC    
    
    
    
    !This procedure set wire lengh 15mm out
    PROC Wire_Set()
            SetDO doFeedBwd_1,1;
            WaitTime 0.2;
            SetDO doFeed_1,1;
    ENDPROC
    
    PROC TCP_Check()
        
        StartStn2;
        
        MoveJ HomeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
        MoveJ safeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
    
        MoveJ Offs(RT0,500,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        Movel Offs(RT0,500-119,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        Stop;
        MoveJ Offs(RT0,500,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        MoveJ Offs(RT5,500,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        Movel Offs(RT5,500-119,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        Stop;
        MoveJ Offs(RT5,500,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        MoveJ Offs(RT2,500,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        Movel Offs(RT2,500-119,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        Stop;
        MoveJ Offs(RT2,500,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        MoveJ Offs(RT3,500,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        Movel Offs(RT3,500-119,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        Stop;
        MoveJ Offs(RT3,500,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        MoveJ Offs(RT6,500,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        Movel Offs(RT6,500-119,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;
        Stop;
        MoveJ Offs(RT6,500,0,1800),v1000,z50,tWeldGun\WObj:=wRot2;

    ENDPROC


    
ENDMODULE