MODULE A_LinearWeld
    LOCAL PERS num hashem:=0; !Just for Spacing, Also this is my signature in all my project!

    !**************************************************************************************************************    
    !****************************************   Project dimentions    *********************************************    
    !**************************************************************************************************************    
    
    LOCAL PERS num t1:=10;

    LOCAL PERS num OdY{4}:=[-95,130,320,350];
    LOCAL PERS num OdZ{4}:=[0,-880,-985,-1103];

    LOCAL PERS num Counter:=17;
    
    !**************************************************************************************************************    
    !********************************************   Robtargets    *************************************************    
    !**************************************************************************************************************    
   
    !******************************************  Search robtargets    *****************************************    

    LOCAL PERS robtarget RTS0 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[600,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RTS1 := [[0,0,0],[0.7,0.7,0,0],[0,-1,1,0],[1800.93,9E+09,9E+09,9E+09,0.000926984,9E+09]];!wobjUse\ using for Weld_3G_E
    
    !******************************************  2G welding robtargets    *****************************************    
    
    LOCAL PERS robtarget RT2G1 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[1810,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    
    !******************************************  2F welding robtargets    *****************************************    
    
    LOCAL PERS robtarget RT2F1 := [[3010.91,1346.64,392.77],[0.20,-0.23,0.90,-0.32],[0,-2,1,0],[1800.01,9E+09,9E+09,9E+09,0.00894448,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT2F2 := [[3011.75,1394.21,394.76],[0.20,0.23,0.90,0.32],[0,-1,1,0],[1800.03,9E+09,9E+09,9E+09,0.010337,9E+09]];!wobjUse\ using for Weld_3G_W
    
    LOCAL PERS robtarget RT2F3 := [[3010.91,1346.64,500],[-0.23,0.20,-0.32,0.90],[0,-2,1,0],[1800,9E+09,9E+09,9E+09,0.00421838,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT2F4 := [[3010.91,1346.64,500],[-0.23,-0.20,-0.32,-0.90],[0,-2,1,0],[1800,9E+09,9E+09,9E+09,0.00978842,9E+09]];!wobjUse\ using for Weld_3G_W

    !**************************************************************************************************************    
    !********************************************   WorkObjects   *************************************************    
    !**************************************************************************************************************    
    
    LOCAL PERS robtarget WO1 := [[-2.88,-301.43,1683.58],[0.492088,-0.551424,-0.441028,0.50919],[1,-2,1,0],[1867.58,9E+09,9E+09,9E+09,0.00155994,9E+09]];
    VAR robtarget P11:=[[4013.66,117.22,1420.34],[0.385703,-0.197413,0.890129,-0.141182],[0,1,-2,0],[1208.89,9E+09,9E+09,9E+09,0.0326172,9E+09]];!wobjUse position
  
    PROC A_LinearWeld_Main()
        
        VAR robtarget P1;
        VAR robtarget P2;
        
        VAR num i;
        
        StartStn2;

        MoveJ safeSt2_0, v1000, z50, tWeldGun\WObj:=wobj0;
        GunClean;
        Stop;

        SetDO doExhaustStn2,1;
                Stop;
        !WeldBySegments RT2F1, RT2F2;
        SetDO doExhaustStn2,0;
        Stop;
!        Stop;
!        Stop;
!        Stop;
            ArcLStart RT2F1, v200, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobj0;
            ArcLEnd offs (rt2f1,0,0,-45), v200, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobj0;
            Stop;
            ArcLStart RT2F2, v200, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobj0;
            ArcLEnd offs (rt2f2,0,0,-42), v200, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobj0;
            Stop;
            MoveJ offs (RT2F1,0,0,500), v1000, z50, tWeldGun\WObj:=wobj0;
            ArcLStart offs (rt2f3,0,0,300), v200, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobj0;
            ArcLEnd offs (rt2f3,0,0,-42), v200, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobj0;
            Stop;
            ArcLStart RT2F4, v200, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobj0;
            ArcLEnd offs (rt2f4,0,0,-42), v200, smUse, weld_4F_1, fine, tWeldGun\WObj:=wobj0;
            Stop;
            !MoveJ Offs (RT2F2 ,0,0,150), v1000, z50, tWeldGun\WObj:=wobj0;
            ArcLStart RT2F3, v200, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobj0;
            ArcLEnd RT2F4, v200, smUse, weld_2F2G_a3, fine, tWeldGun\WObj:=wobj0;
            !MoveJ Offs (RT2F2 ,100,0,0), v1000, z50, tWeldGun\WObj:=wobj0;
            Stop;
            PDispSet [[0,0,0], [1,0,0,0]];
        SetDO doExhaustStn2,0;

        Stop;
        MoveJ safeSt2_0, v1000, z50, tWeldGun\WObj:=wobj0;
        MoveJ HomeSt2_0, v1000, z50, tWeldGun\WObj:=wobj0;
        Stop;
                        
                        
            p1:=RT2F1;
            p2:=RT2F2;
            i:=1;
        
        !teach start and end welding point north
        SetDO doExhaustStn2,1;

            
            p1.trans.x:=RT2F1.trans.x-50;
            p1.extax.eax_a:=RT2F1.extax.eax_a-150;
            ArcLStart RT2F1, v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobj0;
            ArcLEnd P1, v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobj0;
            PDispSet [[-150,0,0], [1,0,0,0]];     
            
            WHILE i<>100 DO
                
            p1.trans.x:=RT2F1.trans.x-50*i;
            p1.extax.eax_a:=RT2F1.extax.eax_a-150*i;
            p2.trans.x:=p1.trans.x-50;
            p2.extax.eax_a:=RT2F1.extax.eax_a-150*i;
            ArcLStart P1, v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobj0;
            ArcLEnd P2, v200, smUse, weld_2F2G_a4, fine, tWeldGun\WObj:=wobj0;
            PDispSet [[-150*i,0,0], [1,0,0,0]];     
            i:=i+1;

            ENDWHILE

        SetDO doExhaustStn2,0;
        
        Stop;
        MoveJ HomeSt2, v200, z50, tWeldGun\WObj:=wobj0;
            
        !wobjUse move
        PDispSet [[0,0,0], [1,0,0,0]];     
        
        SetDO doExhaustStn2,1;
        SetDO doExhaustStn2,0;

        
    ENDPROC
    
PROC WeldBySegments(robtarget pStart, robtarget pEnd)

    VAR num dx;
    VAR num dy;
    VAR num dz;
    VAR num PathLength;
    VAR num NumWelds;
    VAR num Gap;
    VAR num MyStep;
    VAR num i;

    ! Calculate coordinate differences
    dx := pEnd.trans.x - pStart.trans.x;
    dy := pEnd.trans.y - pStart.trans.y;
    dz := pEnd.trans.z - pStart.trans.z;

    ! Calculate total path length
    PathLength := Sqrt(dx*dx + dy*dy + dz*dz);

    ! Check minimum path length
    IF PathLength <= 150 THEN
        TPWrite "Path too short";
        RETURN;
    ENDIF

    ! Calculate number of weld segments
    NumWelds := 2;

    WHILE (PathLength - NumWelds*50) /
            (NumWelds-1) > 100 DO

        NumWelds := NumWelds + 1;

    ENDWHILE

    ! Calculate gap between weld segments
    Gap := (PathLength - NumWelds*50) /
           (NumWelds-1);

    ! Distance between starts of consecutive welds
    MyStep := 50 + Gap;

    FOR i FROM 1 TO NumWelds DO

        ! Weld segment
        ArcLStart Offs(pStart,
            dx * ((i-1)*Mystep) / PathLength,
            dy * ((i-1)*Mystep) / PathLength,
            dz * ((i-1)*Mystep) / PathLength), v200, smUse, weld_2F2G_a8, fine, tWeldGun\WObj:=wobj0;

        ArcLEnd Offs(pStart,
            dx * ((i-1)*Mystep + 50) / PathLength,
            dy * ((i-1)*Mystep + 50) / PathLength,
            dz * ((i-1)*Mystep + 50) / PathLength), v200, smUse, weld_2F2G_a8, fine, tWeldGun\WObj:=wobj0;
        !Stop;

    ENDFOR

ENDPROC    
    
ENDMODULE