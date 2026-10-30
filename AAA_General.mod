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
    !************************************TCP check targets*********************************************************    
    !**************************************************************************************************************   
    LOCAL PERS robtarget RT0 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for search positions and Weld_2G_H and Weld_2G_V
    LOCAL PERS robtarget RT2 := [[0,0,0],[0.45,-0.76,-0.47,0.09],[0,-2,1,1],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget Rt3 := [[0,0,0],[0.76,-0.45,-0.09,0.47],[1,-1,-1,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT5 := [[0,0,0],[0.45,0.76,-0.47,-0.09],[1,-1,1,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_NW and Weld_3F_NW_L
    LOCAL PERS robtarget RT6 := [[0,0,0],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_NE and Weld_3F_NE_L
    
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
    TASK PERS welddata weld_4F:=[9,8,[7,0,0,0,0,0,0,0,0],[10,0,0,0,0,0,0,0,0]];
    TASK PERS welddata weld_3G:=[8,10,[3,0,0,0,0,0,0,0,0],[3,0,0,0,0,0,0,0,0]];
    
    TASK PERS weavedata weave2G2F:=[3,3,3,8,1,0.2,0,0.4,0,0,0,0,0,0,0];
    TASK PERS weavedata weavePG3F_O:=[1,1,2,4,-1,0.2,0,0.2,0,0,0,0,0,0,0];
    TASK PERS weavedata weavePG3F:=[1,1,2,5.5,0,0.1,0,0.1,0,0,0,0,0,0,0];
    TASK PERS weavedata weave2F_a5:=[2,2,2,6,0,0.1,0,0.1,0,0,0,0,0,0,0];
    TASK PERS weavedata weave2F_East:=[2,1,3,6,0,0.15,0,0.05,0,0,-45,0,0,0,0];
    TASK PERS weavedata weave3F:=[2,2,2,4,2,0.1,0,0.1,0,0,0,0,0,0,0];
    TASK PERS weavedata weave2F_West:=[2,1,3,6,0,0.05,0,0.15,0,0,45,0,0,0,0];
    
    TASK PERS seamdata smUse:=[1,0.4,[2,0,0,0,0,0,0,0,0],0,0,0,0,0,[2,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0.4];
    TASK PERS welddata weld_4F_1:=[9,6,[7,0,0,0,0,9,0,0,0],[10,0,0,0,0,0,0,0,0]];
    TASK PERS weavedata weave2G2F_a4:=[1,1,2,4,0,0.1,0,0.1,0,0,0,0,0,0,0];
    
    !**************************************************************************************************************    
    !*************************************************Wobj DATA*****************************************************    
    !**************************************************************************************************************         
        

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