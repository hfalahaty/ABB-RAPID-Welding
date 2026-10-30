MODULE AAA_Code_Test
    
    
    !Number of Posts
    LOCAL PERS num n1:=2;
    
    !Number of Balusters in each section
    LOCAL PERS num n2:=1;
    
    !Distance Between first baluster and inside edge of railing
    LOCAL PERS num d1:=20;

    !Distance between balusters
    LOCAL PERS num d2:=85;
    
    !Fltbars thickness (Top rail, Bottom rail, Posts)
    LOCAL PERS num t1:=10;

    !Vinkel plate thickness
    LOCAL PERS num t2:=5;
    
    !Balusters thickness (Roundbar diameter, Pipe width)
    LOCAL PERS num t3:=12;
    
    !Final width of railing (Normally width of top rail)
    LOCAL PERS num w:=50;
    
    !Height of railing (From backside of top rail to backside of bottom rail)
    LOCAL PERS num h:=1000;
    
    !Total lengh of railing (back to back)
    LOCAL PERS num l:=690;
      
    !Selector for Search types (page 24 of Railing Document)
    LOCAL VAR num SP;
    
    !local variables for counting loops
    LOCAL VAR num i;
    LOCAL VAR num j;
    LOCAL PERS num c:=3; !counter
    LOCAL VAR num s; !for TPReadFK selector
    
    !Local variable for data entry
    LOCAL VAR num de;
    
    !Station number
    !it could be 1 or 2
    !it used to describe witch station I used
    !at the begigning of code I ask operator to choose working station
    !I prefer to use just one station for every project, so I ask to choose on main procedure, befor main loop
    !If in the future decided to use bothh Stations for one project, it is possible to ask this at inside main loop
    LOCAL PERS num St:=1;
    
    !I take this variables from old program, still doesn't have any idea about them
    !Maybe in the future try to change them!!!!
    !timeSFRJ2Sr for svejse tid.
    local var num time2SFRJ2S_1;
    local VAR clock TT3;
    local PERS num time2SFRJ2s_2:=0;
    local VAR clock TT4;
    
    
    LOCAL VAR pose RTSx;
    LOCAL VAR pose RTSy;
    LOCAL VAR pose RTSz;
    LOCAL VAR robtarget myTest;
    
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    !!!!!!!!!!!!!!!!!!!!!!!!!!!new variables
    
    LOCAL PERS wobjdata myWobj:=[FALSE,FALSE,"STN2",[[0,0,0],[1,0,0,0]],[[50,478.654,945.955],[1,0,0,0]]];
    LOCAL PERS num hashem1:=0;
    
    !Reference Robtarget shows Down, inside part of frame (Abreviated as RefT page 25 of <<Sotware analysis handbook>> )
    LOCAL PERS robtarget RefT:= [[75,-590,1971],[0.5,-0.5,-0.5,0.5],[1,-2,1,0],[370,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT:= [[0,0,0],[0.5,-0.5,-0.5,0.5],[0,0,-1,0],[950,9E+09,9E+09,9E+09,0,9E+09]];!wRot1
    
    LOCAL PERS robtarget RT0 := [[0,0,0],[0.5,-0.5,-0.5,0.5],[1,-1,0,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for search positions and Weld_2G_H and Weld_2G_V
    LOCAL PERS robtarget RT1 := [[0,0,0],[0.95,0.04,-0.17,0.25],[1,-1,-1,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_E
    LOCAL PERS robtarget RT2 := [[0,0,0],[0.45,-0.76,-0.47,0.09],[0,-2,1,1],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SW and Weld_3F_SW_L
    LOCAL PERS robtarget Rt3 := [[0,0,0],[0.76,-0.45,-0.09,0.47],[1,-1,-1,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_SE and Weld_3F_SE_L
    LOCAL PERS robtarget RT4 := [[0,0,0],[0.22,-0.59,-0.76,0.19],[0,-2,1,1],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3G_W
    LOCAL PERS robtarget RT5 := [[0,0,0],[0.45,0.76,-0.47,-0.09],[1,-1,1,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_NW and Weld_3F_NW_L
    LOCAL PERS robtarget RT6 := [[0,0,0],[0.76,0.45,-0.09,-0.47],[0,0,-2,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for Weld_3F_NE and Weld_3F_NE_L

    LOCAL PERS robtarget RB1 := [[0,3,3],[0.54,-0.75,-0.28,0.21],[1,-1,-1,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for  Weld_ARC_N
    LOCAL PERS robtarget RB2 := [[0,7,0],[0.75,0.54,-0.21,-0.28],[0,-1,-2,0],[1800,9E+09,9E+09,9E+09,0,9E+09]];!wobjUse\ using for  Weld_ARC_S
       
    PROC MainTest()
        
        StartStn2;
    
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