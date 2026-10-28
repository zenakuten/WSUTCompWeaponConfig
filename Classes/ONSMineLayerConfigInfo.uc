class ONSMineLayerConfigInfo extends WeaponConfigSubInfo;

var bool bModifyONSMineLayer;
var float ONSMineLayer_ReloadDelay;
var int ONSMineLayer_MaxMines;
var float ONSMineLayer_PutDownTime;
var float ONSMineLayer_BringUpTime;
var float ONSMineLayer_MinReloadPct;
var int ONSMineLayerPrimary_AmmoPerFire;
var float ONSMineLayerPrimary_FireRate;
var float ONSMineProjectile_DetectionTimer;
var float ONSMineProjectile_ScurrySpeed;
var float ONSMineProjectile_ScurryAnimRate;
var int ONSMineProjectile_TargetLocFuzz;
var float ONSMineProjectile_Speed;
var float ONSMineProjectile_MaxSpeed;
var float ONSMineProjectile_Damage;
var float ONSMineProjectile_DamageRadius;
var float ONSMineProjectile_CullDistance;
var float ONSMineProjectile_MomentumTransfer;
var bool ONSMineProjectile_bBounce;

replication
{
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifyONSMineLayer, ONSMineLayer_ReloadDelay, ONSMineLayer_MaxMines, ONSMineLayer_PutDownTime,
        ONSMineLayer_BringUpTime, ONSMineLayer_MinReloadPct, ONSMineLayerPrimary_AmmoPerFire, ONSMineLayerPrimary_FireRate,
        ONSMineProjectile_DetectionTimer, ONSMineProjectile_ScurrySpeed, ONSMineProjectile_ScurryAnimRate, ONSMineProjectile_TargetLocFuzz,
        ONSMineProjectile_Speed, ONSMineProjectile_MaxSpeed, ONSMineProjectile_Damage, ONSMineProjectile_DamageRadius,
        ONSMineProjectile_CullDistance, ONSMineProjectile_MomentumTransfer, ONSMineProjectile_bBounce;
}

function LoadFrom(MutWeaponConfig config)
{
    bModifyONSMineLayer  = config.bModifyONSMineLayer;
    ONSMineLayer_ReloadDelay  = config.ONSMineLayer_ReloadDelay;
    ONSMineLayer_MaxMines  = config.ONSMineLayer_MaxMines;
    ONSMineLayer_PutDownTime  = config.ONSMineLayer_PutDownTime;
    ONSMineLayer_BringUpTime  = config.ONSMineLayer_BringUpTime;
    ONSMineLayer_MinReloadPct  = config.ONSMineLayer_MinReloadPct;
    ONSMineLayerPrimary_AmmoPerFire  = config.ONSMineLayerPrimary_AmmoPerFire;
    ONSMineLayerPrimary_FireRate  = config.ONSMineLayerPrimary_FireRate;
    ONSMineProjectile_DetectionTimer  = config.ONSMineProjectile_DetectionTimer;
    ONSMineProjectile_ScurrySpeed  = config.ONSMineProjectile_ScurrySpeed;
    ONSMineProjectile_ScurryAnimRate  = config.ONSMineProjectile_ScurryAnimRate;
    ONSMineProjectile_TargetLocFuzz  = config.ONSMineProjectile_TargetLocFuzz;
    ONSMineProjectile_Speed  = config.ONSMineProjectile_Speed;
    ONSMineProjectile_MaxSpeed  = config.ONSMineProjectile_MaxSpeed;
    ONSMineProjectile_Damage  = config.ONSMineProjectile_Damage;
    ONSMineProjectile_DamageRadius  = config.ONSMineProjectile_DamageRadius;
    ONSMineProjectile_CullDistance  = config.ONSMineProjectile_CullDistance;
    ONSMineProjectile_MomentumTransfer  = config.ONSMineProjectile_MomentumTransfer;
    ONSMineProjectile_bBounce  = config.ONSMineProjectile_bBounce;
}

simulated function Modify()
{
    if(!bModifyONSMineLayer)
        return;

    //default
    class'ONSMineLayer'.default.ReloadDelay  = ONSMineLayer_ReloadDelay;
    class'ONSMineLayer'.default.MaxMines  = ONSMineLayer_MaxMines;
    SetSwitchTimes(class'ONSMineLayer', ONSMineLayer_PutDownTime, ONSMineLayer_BringUpTime);
    class'ONSMineLayer'.default.MinReloadPct  = ONSMineLayer_MinReloadPct;
    class'ONSMineThrowfire'.default.AmmoPerFire  = ONSMineLayerPrimary_AmmoPerFire;
    class'ONSMineThrowfire'.default.FireRate  = ONSMineLayerPrimary_FireRate;

    //utcomp
    class'UTComp_ONSMineLayer'.default.ReloadDelay  = ONSMineLayer_ReloadDelay;
    class'UTComp_ONSMineLayer'.default.MaxMines  = ONSMineLayer_MaxMines;
    SetSwitchTimes(class'UTComp_ONSMineLayer', ONSMineLayer_PutDownTime, ONSMineLayer_BringUpTime);
    class'UTComp_ONSMineLayer'.default.MinReloadPct  = ONSMineLayer_MinReloadPct;
    class'UTComp_ONSMineThrowfire'.default.AmmoPerFire  = ONSMineLayerPrimary_AmmoPerFire;
    class'UTComp_ONSMineThrowfire'.default.FireRate  = ONSMineLayerPrimary_FireRate;

    //newnet
    class'NewNet_ONSMineLayer'.default.ReloadDelay  = ONSMineLayer_ReloadDelay;
    class'NewNet_ONSMineLayer'.default.MaxMines  = ONSMineLayer_MaxMines;
    SetSwitchTimes(class'NewNet_ONSMineLayer', ONSMineLayer_PutDownTime, ONSMineLayer_BringUpTime);
    class'NewNet_ONSMineLayer'.default.MinReloadPct  = ONSMineLayer_MinReloadPct;

    // ONSMineThrowFire spawns the RED/BLUE subclass for team 0/1 and the base class otherwise
    ApplyMine(class'ONSMineProjectile');
    ApplyMine(class'ONSMineProjectileRED');
    ApplyMine(class'ONSMineProjectileBLUE');
}

simulated final function ApplyMine(class<ONSMineProjectile> M)
{
    M.default.DetectionTimer  = ONSMineProjectile_DetectionTimer;
    M.default.ScurrySpeed  = ONSMineProjectile_ScurrySpeed;
    M.default.ScurryAnimRate  = ONSMineProjectile_ScurryAnimRate;
    M.default.TargetLocFuzz  = ONSMineProjectile_TargetLocFuzz;
    M.default.Speed  = ONSMineProjectile_Speed;
    M.default.MaxSpeed  = ONSMineProjectile_MaxSpeed;
    M.default.Damage  = ONSMineProjectile_Damage;
    M.default.DamageRadius  = ONSMineProjectile_DamageRadius;
    M.default.CullDistance  = ONSMineProjectile_CullDistance;
    M.default.MomentumTransfer  = ONSMineProjectile_MomentumTransfer;
    M.default.bBounce  = ONSMineProjectile_bBounce;
}

defaultproperties
{
    bModifyONSMineLayer=false
    ONSMineLayer_ReloadDelay=0.4
    ONSMineLayer_MaxMines=8
    ONSMineLayer_PutDownTime=0.40
    ONSMineLayer_BringUpTime=0.35
    ONSMineLayer_MinReloadPct=0.5
    ONSMineLayerPrimary_AmmoPerFire=1
    ONSMineLayerPrimary_FireRate=1.1
    ONSMineProjectile_DetectionTimer=0.5
    ONSMineProjectile_ScurrySpeed=525.0
    ONSMineProjectile_ScurryAnimRate=4.1
    ONSMineProjectile_TargetLocFuzz=250
    ONSMineProjectile_Speed=800.0
    ONSMineProjectile_MaxSpeed=800.0
    ONSMineProjectile_Damage=95.0
    ONSMineProjectile_DamageRadius=250.0
    ONSMineProjectile_CullDistance=6000.0
    ONSMineProjectile_MomentumTransfer=50000.0
    ONSMineProjectile_bBounce=true
}