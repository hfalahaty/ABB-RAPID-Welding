MODULE A_15542_1_Railing_St2_LS
    
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
    LOCAL PERS num l:=2559;

    !Final width of railing (Normally width of top rail)
    LOCAL PERS num w:=50;
    
    !Number of Posts
    LOCAL PERS num n1:=3;
    
    !Number of Balusters
    LOCAL PERS num n2:=26;
    
    !Distance Between <<!!***Right SIDE***!!>> of first post scabilon and disk surface
    LOCAL PERS num ds:=725;   

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
    LOCAL PERS pos CorrPT{5}:=[[5.0919,2.38354,-0.00681099],[8.06574,1.58509,2.48254],[5.57574,3.04253,-10.1156],[2.31536,0.713639,-20.6017],[0,0,0]];
    
    !Corrected Bottom position of Railing posts (abreviated as CorrPB)
    LOCAL PERS pos CorrPB{5}:=[[6.47955,2.90721,0.340169],[11.0229,1.86129,1.8962],[5.41763,3.70645,-9.59487],[-0.0470991,1.68219,-18.1467],[0,0,0]];
    
    !Ordinate Dimensions of Balusters (abreviated as odB)
    !Put origin on right side of railing then dimention for first internal edge after that all right side of railing's post to the end
    !Refer to page 10 of <<Railing code analysis>>
    LOCAL PERS num OdB{50}:=  [89,180,271,363,454,545,636,727,818,909
                        ,1001,1092,1183,1363,1455,1546,1637,1728,1819,1910
                        ,2001,2093,2184,2275,2366,2457,2638.1,2729.3,2820.4,2911.6
                        ,3002.7,3093.9,3185,3276.1,3367.3,3458.4,3549.6,3640.7,3731.9,0
                        ,0,0,0,0,0,0,0,0,0,0];

    !Corrected top position of Balusters (abreviated as CorrBT)
    LOCAL PERS pos CorrBT{50}:=[[3.50055,3.13191,5.07716],[4.23073,2.97492,4.20505],[4.79569,2.74049,4.67671],[4.87973,2.97567,3.39862],[5.46091,2.33788,2.1137]
                        ,[6.84074,1.85752,3.49269],[6.34614,2.17541,1.40201],[5.21134,2.09959,3.96955],[3.66429,2.17802,1.31271],[6.26563,2.09913,2.28321]
                        ,[6.92585,2.25426,0.176245],[7.00404,2.17623,0.824185],[6.59671,1.85704,0.10026],[7.57078,1.69395,0.748688],[5.45767,1.69485,-4.50595]
                        ,[5.22353,2.17739,-2.19363],[8.61368,2.41891,-3.15581],[9.0845,2.5789,-3.3986],[7.88638,2.4211,-2.19295],[7.73457,2.25687,0.181854]
                        ,[8.36248,2.25978,-4.27345],[3.60597,2.49885,-5.87538],[4.17378,2.81076,-5.5653],[3.85249,3.12693,-4.21746],[5.29902,3.28269,-4.45455]
                        ,[5.06664,3.28481,-1.96561],[6.26519,1.43779,2.13936],[3.83961,1.52491,0.928334],[4.80119,1.68778,0.281572],[4.24334,1.60462,0.360076]
                        ,[2.52794,1.35926,3.34976],[7.15397,1.36082,5.18224],[3.59548,1.36099,1.57335],[3.92691,1.27932,0.845843],[3.51637,1.19916,-0.762267]
                        ,[4.48707,1.03804,1.32731],[4.81105,0.877375,1.48851],[4.56545,0.719688,0.759312],[5.13013,0.721379,0.361979],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]
                        ,[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];

    !Corrected bottom position of Balusters (abreviated as CorrBB)
    LOCAL PERS pos CorrBB{50}:=[[4.58364,3.00058,3.68199],[2.80827,2.83513,4.07387],[3.92303,2.66984,4.07671],[4.33471,2.42159,2.73277],[5.65142,9.69272,2.32633]
                        ,[8.14092,10.5809,2.40858],[7.90186,10.491,0.928189],[6.36332,6.45922,0.918212],[8.53692,9.89086,0.697511],[8.14207,10.8975,2.38505]
                        ,[7.74904,9.81178,-0.484169],[8.78376,9.21722,-0.46804],[7.89081,10.6621,-0.907181],[7.33804,10.1808,0.949303],[9.44666,10.175,0.293174]
                        ,[9.12039,10.0941,-1.12732],[10.1761,9.93275,-0.324504],[9.68207,9.37353,-1.36059],[8.81486,7.37177,-2.39169],[9.60895,2.59527,-4.95935]
                        ,[9.60419,2.59044,-2.25027],[8.8727,2.75242,-1.68871],[7.74886,3.06958,-1.95086],[7.33634,3.23537,-2.66963],[7.26101,3.39861,-2.36088]
                        ,[4.76823,3.47596,-2.67044],[6.03481,1.44092,3.29707],[2.08171,2.00506,1.23104],[2.80267,2.55621,2.85161],[1.90473,2.3965,3.26315]
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
    LOCAL PERS num dz:=735;    !Z coordination of Down right edge of part

    !**************************************************************************************************************    
    !**************************Special robot targets to use in procedures and functions****************************    
    !**************************Search positioning targets aimed vertically to the part*****************************
    !*******************Weld positioning targets have special angels in different positions************************    
    !**************************************************************************************************************    

    !Reference Robtarget shows Down, inside part of frame (Abreviated as RefT page 25 of <<Sotware analysis handbook>> )
    LOCAL PERS robtarget RefT:= [[75,-470,725],[0.5,-0.5,-0.5,0.5],[1,-2,1,0],[370,9E+09,9E+09,9E+09,0,9E+09]];!wRot2
    
    LOCAL PERS robtarget RT:= [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[950,9E+09,9E+09,9E+09,0,9E+09]];!wRot2
    
    LOCAL PERS robtarget RT0 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[3181,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for search positions and Weld_2G_H and Weld_2G_V
    LOCAL PERS robtarget RT1 := [[0,2,0],[0.93,0.19,-0.19,0.25],[1,-1,-1,0],[722.961,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT2 := [[0,-1,1],[0.45,-0.76,-0.47,0.09],[0,-2,1,1],[1997.61,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget Rt3 := [[0,-1,-1],[0.76,-0.45,-0.09,0.47],[1,-1,-1,0],[3260.53,9E+09,9E+09,9E+09,40,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[0,-2,0],[0.3,-0.6,-0.73,0.13],[0,-2,1,1],[4011.06,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT5 := [[0,1,1],[0.45,0.76,-0.47,-0.09],[1,-1,1,0],[1997.61,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NW and Weld_3F_NW_L
    LOCAL PERS robtarget RT6 := [[0,1,-1],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[3260.53,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for Weld_3F_NE and Weld_3F_NE_L

    LOCAL PERS robtarget RB1 := [[1,0,-6],[0.54,-0.75,-0.28,0.21],[1,-1,-1,0],[3680.05,9E+09,9E+09,9E+09,-30,9E+09]];!wobjUse\ using for  Weld_ARC_N
    LOCAL PERS robtarget RB2 := [[0,0,-7],[0.75,0.54,-0.21,-0.28],[0,-1,-2,0],[3179.36,9E+09,9E+09,9E+09,30,9E+09]];!wobjUse\ using for  Weld_ARC_S
    
    !**************************************************************************************************************
    !************************************Main Robot targets used every where***************************************    
    !**************************************************************************************************************   
    
    LOCAL PERS wobjdata wobjSt2:=[FALSE,FALSE,"STN2",[[0,0,0],[1,0,0,0]],[[60,-465,722],[1,0,0,0]]];
    
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
    
    PROC Main_15542_1_Railing_St2_LS()
        
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
    LOCAL PROC DataEntry_St2_LS()
        
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
        RefT.trans.x:=dx+fdxSt2;
        RefT.trans.y:=dy+fdySt2;
        RefT.trans.z:=dz+fdzSt2;
        
        SetWobjUse wRot2,dx,dy,dz;
        wobjSt2:=wobjUse;
        wobjSt2.oframe.trans:=wRot2.oframe.trans+[dx,dy,dz];
        
        StartStn2;

        MoveJ safeSt2_0, v1000, z50, tWeldGun\WObj:=wobj0;
        MoveJ overSt2, v1000, z50, tWeldGun\WObj:=wRot2;
        
        RT0.extax.eax_a:=wRot2.oframe.trans.z+500;        
        MoveJ Offs(RT0,10,0,0), v1000, fine, tWeldGun\WObj:=wobjSt2;
        WaitTime 5;
        
    ENDPROC    
    
    LOCAL PROC RailingJob(bool firstRailing)
        
        StartStn2;
        
        IF firstRailing THEN
            MoveJ HomeSt2_Load,v1000,z50,tWeldGun\WObj:=wobj0;
            TPErase;
            TPWrite"!!!!You can load new parts for railing!!!!!";
            TPReadFK s, "!!!!!!!!press ok when ready to strat!!!!!!!",
                "ok",
                "",
                "",
                "",
                "";             
            DataEntry_St2_LS;
        ELSE
            MoveJ HomeSt2_Load,v1000,z50,tWeldGun\WObj:=wobj0;
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
            
        MoveJ safeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;
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
                    MoveJ HomeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
                    TPErase;
                    TPWrite     "!!!!You can load new parts for railing!!!!!";
                    TPReadFK s, "!!!!!!!!press ok when ready to strat!!!!!!!",
                        "ok",
                        "",
                        "",
                        "",
                        "";      
                ELSE
                    MoveJ safeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
                    MoveJ HomeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
                ENDIF                
            ENDWHILE
    ENDPROC
    
    
    !This procedure welds on front side of railing
    LOCAL PROC WeldingFront()
        
        VAR wobjdata WobjN;
        VAR pose PoseOffs;
        
        PosSearchTop;
        
        SetDO doExhaustStn2,1;
   
        !Top first Post weld
        weldCorner 1, Odp{1},CorrPT{1},2;
       
        !Top Second Post weld up to (n1-1)th Post
        FOR i FROM 2 TO n1-1 DO
            weldCorner 2,Odp{i},CorrPT{i},1;
        ENDFOR

        !Top last Post weld
        weldCorner 3, Odp{n1},CorrPT{n1},2;
        
        MoveJ Offs(overSt2,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot2;            
    
        !top side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},5);
            !MoveJ Offs(rb1,20,0,0), v1000, z50, tWeldGun\WObj:=wobjUse;
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR

        !Move to other side
        MoveJ safeSt2_0, v1000, z50, tWeldGun;            
        
        SetDO doExhaustStn2,0;

        PosSearchBottom;
        
        SetDO doExhaustStn2,1;
        
        !Bottom first Post weld
        weldCorner 7,Odp{1},CorrPB{1},3;

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

        SetDO doExhaustStn2,0;
    
        Cleaning;
        StartStn2;
    
    ENDPROC
    
    !This procedure welds on back side of railing
    LOCAL PROC WeldingBack()
        
        VAR wobjdata WobjN;
        VAR pose PoseOffs;
        
        PosSearchTop;
        
        SetDO doExhaustStn2,1;
    
        !Bottom first Post weld
        WobjN:= WobjNew(Odp{1},1);
        Weld_2G_H WobjN,OdP{1},CorrPB{1},"RB",t1;

        !Bottom Second Post weld up to (n1-1)th Post
        FOR i FROM 2 TO n1-1 DO
            WobjN:= WobjNew(Odp{i},1);
            Weld_2G_v WobjN,OdP{i},CorrPT{i},"RT", t1;
            Weld_2G_v WobjN,OdP{i},CorrPT{i},"LT", t1;
        ENDFOR

        !Bottom last Post weld
        WobjN:= WobjNew(Odp{n1},2);
        Weld_2G_v WobjN,OdP{n1},CorrPT{n1},"LT", t1;

        !Bottom side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},5);
            Weld_ARC_N WobjN,OdB{i},CorrBT{i},0;
        ENDFOR                

        SetDO doExhaustStn2,0;
        
        PosSearchBottom;

        SetDO doExhaustStn2,1;
            
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

        MoveJ Offs(overSt2,0,h/2,0), v1000, z50, tWeldGun\WObj:=wRot2;            

        !top side of Balusters welding
        FOR i FROM 1 TO n2 DO
            WobjN:= WobjNew(OdB{i},6);
            Weld_ARC_S WobjN,OdB{i},CorrBB{i},0;
        ENDFOR

        !Move to other side
        MoveJ safeSt2_0, v1000, z50, tWeldGun;    
    
        
        SetDO doExhaustStn2,0;
    
        Cleaning;
        StartStn2;
    
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
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
            
        ELSEIF cornerPositionNumber=5 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_V WobjN,OdP,CorrP,"LB", t1;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z-t1;
            Weld_2G_V WobjN,OdP,CorrP,"LB", t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.z:=WobjN.oframe.trans.z+t1;
            Weld_3F_SW WobjN,OdP,CorrP,PosAn,w;
        
        ELSEIF cornerPositionNumber=6 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_2G_V WobjN,OdP,CorrP,"LB", t1;
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            WobjN.oframe.trans.y:=WobjN.oframe.trans.y-t1;
            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            
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
            Weld_2G_H WobjN,OdP,CorrP,"RB",t2;

        ELSEIF cornerPositionNumber=11 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_SE WobjN,OdP,CorrP,PosAn,w;
            Weld_3F_SW_L WobjN,OdP,CorrP,PosAn,w,t2;
            Weld_2G_H WobjN,OdP,CorrP,"LB",t2;

        ELSEIF cornerPositionNumber=12 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_NE_L WobjN,OdP,CorrP,PosAn,w, t2;
            Weld_2G_H WobjN,OdP,CorrP,"RB",t2;
            Weld_3F_NW WobjN,OdP,CorrP,PosAn,w;

        ELSEIF cornerPositionNumber=13 THEN
            
            WobjN:= WobjNew(OdP,sp);
            Weld_3F_NE WobjN,OdP,CorrP,PosAn,w;
            Weld_2G_H WobjN,OdP,CorrP,"LB",t2;
            Weld_3F_NW_L WobjN,OdP,CorrP,PosAn,w, t2;

        ENDIF
        !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    ENDPROC
    
    !This procedure move robot to safeSt2 and let operator to clean
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
        MoveJ HomeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
        s:=0;
        TPReadFK s, "!!!Take care, Station is turning to UnloadTurn Railing?!!!",
            "Ok",
            "",
            "",
            "",
            "";       
        ELSE
        MoveJ HomeSt2,v1000,z50,tWeldGun\WObj:=wobj0;
        s:=0;
        
        TPReadFK s, "!!!!!!!!Now you can turn Railig!!!!!!",
            "Ok",
            "",
            "",
            "",
            ""; 
        MoveJ HomeSt2_0,v1000,z50,tWeldGun\WObj:=wobj0;
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
        IF RobAtStation() = 1 THEN
            StartStn1;
        ELSE
            StartStn2;
        ENDIF
        
        MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;            
        
         s:=0;
        TPErase;
        TPReadFK s, "Check TCP (15mm)",
            "Ok",
            "",
            "",
            "",
            "";   

        SetWobjUse wobjSt2 ,0,0,0;
        
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
        IF RobAtStation() = 1 THEN
            StartStn1;
        ELSE
            StartStn2;
        ENDIF

        MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;            
        
         s:=0;
        TPErase;
        TPReadFK s, "Check TCP (15mm)",
            "Ok",
            "",
            "",
            "",
            "";   

        SetWobjUse wobjSt2 ,0,0,0;

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
        !MoveJ Offs(overSt2,0,0,0), v1000, z50, tWeldGun\WObj:=wRot2;        
        
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
            myY:=RTSy.trans.y;
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
            Movel Offs(RT0,50,20,0),v1000,z50,tWeldGun\WObj:=wobjUse; 
            Search_1D RTSx ,Offs(RT0,(w-t3)/2-15,20,2) , Offs(RT0,-15,20,2), v200, tWeldGun\WObj:=wobjUse;  
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

        SetWobjUse wobjSt2, 0,0,0;

        IF SP=1 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt2.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt2.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjSt2.oframe.trans.z+myPosition;
            
        ELSEIF SP=2 THEN !For SP refer to page 24 of sotware analysis handbook
        
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt2.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt2.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjSt2.oframe.trans.z+(myPosition);
            
        ELSEIF SP=3 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt2.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt2.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt2.oframe.trans.z+myPosition;
            
        ELSEIF SP=4 THEN !For SP refer to page 24 of sotware analysis handbook
            
            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt2.oframe.trans.x;
            wobjUse.oframe.trans.y:=wobjSt2.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt2.oframe.trans.z+(myPosition);
        
        ELSEIF SP=5 THEN !For SP refer to page 24 of sotware analysis handbook

            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt2.oframe.trans.x-(w-t3)/2;
            wobjUse.oframe.trans.y:=wobjSt2.oframe.trans.y+(h-2*t1);
            wobjUse.oframe.trans.z:=wobjSt2.oframe.trans.z+myPosition-t1+t3;            
        ELSEIF SP=6 THEN !For SP refer to page 24 of sotware analysis handbook

            !correct the workObject to corrected points and move safely out of search teritory
            wobjUse.oframe.trans.x:=wobjSt2.oframe.trans.x-(w-t3)/2;
            wobjUse.oframe.trans.y:=wobjSt2.oframe.trans.y;
            wobjUse.oframe.trans.z:=wobjSt2.oframe.trans.z+myPosition-t1+t3;
        ENDIF
        
        Cwobj:=wobjUse;


        RETURN Cwobj;
        
    ENDFUNC    

ENDMODULE