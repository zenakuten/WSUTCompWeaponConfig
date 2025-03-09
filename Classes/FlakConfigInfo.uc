class FlakConfigInfo extends ReplicationInfo;

var bool bModifyFlakCannon;
var float FlakCannon_BringUpTime;
var float FlakCannon_PutDownTime;
var float FlakCannon_MinReloadPct;
var int FlakPrimary_AmmoPerFire;
var float FlakPrimary_FireRate;
var int FlakPrimary_ProjPerFire;
var float FlakPrimary_Spread;
var byte FlakChunk_Bounces;
var float FlakChunk_DamageAtten;
var float FlakChunk_Speed;
var float FlakChunk_MaxSpeed;
var float FlakChunk_Damage;
var float FlakChunk_MomentumTransfer;
var float FlakChunk_CullDistance;
var float FlakChunk_LifeSpan;
var bool FlakChunk_Bounce;
var int FlakSecondary_AmmoPerFire;
var float FlakSecondary_FireRate;
var int FlakSecondary_ProjPerFire;
var float FlakSecondary_Spread;
var float FlakShell_TossZ;
var float FlakShell_Speed;
var float FlakShell_MaxSpeed;
var float FlakShell_Damage;
var float FlakShell_DamageRadius;
var float FlakShell_MomentumTransfer;
var float FlakShell_CullDistance;
var float FlakShell_LifeSpan;

replication
{
    reliable if(Role == ROLE_Authority && bNetInitial)
        bModifyFlakCannon, FlakCannon_BringUpTime, FlakCannon_PutDownTime, FlakCannon_MinReloadPct,
        FlakPrimary_AmmoPerFire, FlakPrimary_FireRate, FlakPrimary_ProjPerFire, FlakPrimary_Spread,
        FlakChunk_Bounces, FlakChunk_DamageAtten, FlakChunk_Speed, FlakChunk_MaxSpeed,
        FlakChunk_Damage, FlakChunk_MomentumTransfer, FlakChunk_CullDistance, FlakChunk_LifeSpan,
        FlakChunk_Bounce, FlakSecondary_AmmoPerFire, FlakSecondary_FireRate, FlakSecondary_ProjPerFire,
        FlakSecondary_Spread, FlakShell_TossZ, FlakShell_Speed, FlakShell_MaxSpeed,
        FlakShell_Damage, FlakShell_DamageRadius, FlakShell_MomentumTransfer, FlakShell_CullDistance,
        FlakShell_LifeSpan;
}

function LoadFrom(MutWeaponConfig config)
{
    bModifyFlakCannon = config.bModifyFlakCannon;
    FlakCannon_BringUpTime = config.FlakCannon_BringUpTime;
    FlakCannon_PutDownTime = config.FlakCannon_PutDownTime;
    FlakCannon_MinReloadPct = config.FlakCannon_MinReloadPct;
    FlakPrimary_AmmoPerFire = config.FlakPrimary_AmmoPerFire;
    FlakPrimary_FireRate = config.FlakPrimary_FireRate;
    FlakPrimary_ProjPerFire = config.FlakPrimary_ProjPerFire;
    FlakPrimary_Spread = config.FlakPrimary_Spread;
    FlakChunk_Bounces = config.FlakChunk_Bounces;
    FlakChunk_DamageAtten = config.FlakChunk_DamageAtten;
    FlakChunk_Speed = config.FlakChunk_Speed;
    FlakChunk_MaxSpeed = config.FlakChunk_MaxSpeed;
    FlakChunk_Damage = config.FlakChunk_Damage;
    FlakChunk_MomentumTransfer = config.FlakChunk_MomentumTransfer;
    FlakChunk_CullDistance = config.FlakChunk_CullDistance;
    FlakChunk_LifeSpan = config.FlakChunk_LifeSpan;
    FlakChunk_Bounce = config.FlakChunk_Bounce;
    FlakSecondary_AmmoPerFire = config.FlakSecondary_AmmoPerFire;
    FlakSecondary_FireRate = config.FlakSecondary_FireRate;
    FlakSecondary_ProjPerFire = config.FlakSecondary_ProjPerFire;
    FlakSecondary_Spread = config.FlakSecondary_Spread;
    FlakShell_TossZ = config.FlakShell_TossZ;
    FlakShell_Speed = config.FlakShell_Speed;
    FlakShell_MaxSpeed = config.FlakShell_MaxSpeed;
    FlakShell_Damage = config.FlakShell_Damage;
    FlakShell_DamageRadius = config.FlakShell_DamageRadius;
    FlakShell_MomentumTransfer = config.FlakShell_MomentumTransfer;
    FlakShell_CullDistance = config.FlakShell_CullDistance;
    FlakShell_LifeSpan = config.FlakShell_LifeSpan;
}

simulated function Modify()
{
    if(!bModifyFlakCannon)
        return;

    //default
    class'FlakCannon'.default.BringUpTime = FlakCannon_BringUpTime;
    class'FlakCannon'.default.PutDownTime = FlakCannon_PutDownTime;
    class'FlakCannon'.default.MinReloadPct = FlakCannon_MinReloadPct;
    class'FlakFire'.default.AmmoPerFire = FlakPrimary_AmmoPerFire;
    class'FlakFire'.default.FireRate = FlakPrimary_FireRate;
    class'FlakFire'.default.ProjPerFire = FlakPrimary_ProjPerFire;
    class'FlakFire'.default.Spread = FlakPrimary_Spread;
    class'FlakChunk'.default.Bounces = FlakChunk_Bounces;
    class'FlakChunk'.default.DamageAtten = FlakChunk_DamageAtten;
    class'FlakChunk'.default.Speed = FlakChunk_Speed;
    class'FlakChunk'.default.MaxSpeed = FlakChunk_MaxSpeed;
    class'FlakChunk'.default.Damage = FlakChunk_Damage;
    class'FlakChunk'.default.MomentumTransfer = FlakChunk_MomentumTransfer;
    class'FlakChunk'.default.CullDistance = FlakChunk_CullDistance;
    class'FlakChunk'.default.LifeSpan = FlakChunk_LifeSpan;
    class'FlakChunk'.default.bBounce = FlakChunk_Bounce;
    class'FlakAltFire'.default.AmmoPerFire = FlakSecondary_AmmoPerFire;
    class'FlakAltFire'.default.FireRate = FlakSecondary_FireRate;
    class'FlakAltFire'.default.ProjPerFire = FlakSecondary_ProjPerFire;
    class'FlakAltFire'.default.Spread = FlakSecondary_Spread;
    class'FlakShell'.default.TossZ = FlakShell_TossZ;
    class'FlakShell'.default.Speed = FlakShell_Speed;
    class'FlakShell'.default.MaxSpeed = FlakShell_MaxSpeed;
    class'FlakShell'.default.Damage = FlakShell_Damage;
    class'FlakShell'.default.MomentumTransfer = FlakShell_MomentumTransfer;
    class'FlakShell'.default.CullDistance = FlakShell_CullDistance;
    class'FlakShell'.default.LifeSpan = FlakShell_LifeSpan;

    class'FlakCannon'.default.PutDownAnimRate = class'FlakCannon'.default.PutDownAnimRate / (FlakCannon_PutDownTime / default.FlakCannon_PutDownTime);
    class'FlakCannon'.default.SelectAnimRate = class'FlakCannon'.default.SelectAnimRate / (FlakCannon_BringUpTime / default.FlakCannon_BringUpTime);    

    //utcomp
    class'UTComp_FlakCannon'.default.BringUpTime = FlakCannon_BringUpTime;
    class'UTComp_FlakCannon'.default.PutDownTime = FlakCannon_PutDownTime;
    class'UTComp_FlakCannon'.default.MinReloadPct = FlakCannon_MinReloadPct;
    class'UTComp_FlakFire'.default.AmmoPerFire = FlakPrimary_AmmoPerFire;
    class'UTComp_FlakFire'.default.FireRate = FlakPrimary_FireRate;
    class'UTComp_FlakFire'.default.ProjPerFire = FlakPrimary_ProjPerFire;
    class'UTComp_FlakFire'.default.Spread = FlakPrimary_Spread;
    class'UTComp_FlakChunk'.default.Bounces = FlakChunk_Bounces;
    class'UTComp_FlakChunk'.default.DamageAtten = FlakChunk_DamageAtten;
    class'UTComp_FlakChunk'.default.Speed = FlakChunk_Speed;
    class'UTComp_FlakChunk'.default.MaxSpeed = FlakChunk_MaxSpeed;
    class'UTComp_FlakChunk'.default.Damage = FlakChunk_Damage;
    class'UTComp_FlakChunk'.default.MomentumTransfer = FlakChunk_MomentumTransfer;
    class'UTComp_FlakChunk'.default.CullDistance = FlakChunk_CullDistance;
    class'UTComp_FlakChunk'.default.LifeSpan = FlakChunk_LifeSpan;
    class'UTComp_FlakChunk'.default.bBounce = FlakChunk_Bounce;
    class'UTComp_FlakAltFire'.default.AmmoPerFire = FlakSecondary_AmmoPerFire;
    class'UTComp_FlakAltFire'.default.FireRate = FlakSecondary_FireRate;
    class'UTComp_FlakAltFire'.default.ProjPerFire = FlakSecondary_ProjPerFire;
    class'UTComp_FlakAltFire'.default.Spread = FlakSecondary_Spread;
    class'UTComp_FlakShell'.default.TossZ = FlakShell_TossZ;
    class'UTComp_FlakShell'.default.Speed = FlakShell_Speed;
    class'UTComp_FlakShell'.default.MaxSpeed = FlakShell_MaxSpeed;
    class'UTComp_FlakShell'.default.Damage = FlakShell_Damage;
    class'UTComp_FlakShell'.default.MomentumTransfer = FlakShell_MomentumTransfer;
    class'UTComp_FlakShell'.default.CullDistance = FlakShell_CullDistance;
    class'UTComp_FlakShell'.default.LifeSpan = FlakShell_LifeSpan;

    class'UTComp_FlakCannon'.default.PutDownAnimRate = class'UTComp_FlakCannon'.default.PutDownAnimRate / (FlakCannon_PutDownTime / default.FlakCannon_PutDownTime);
    class'UTComp_FlakCannon'.default.SelectAnimRate = class'UTComp_FlakCannon'.default.SelectAnimRate / (FlakCannon_BringUpTime / default.FlakCannon_BringUpTime);    

    //newnet
    class'NewNet_FlakCannon'.default.BringUpTime = FlakCannon_BringUpTime;
    class'NewNet_FlakCannon'.default.PutDownTime = FlakCannon_PutDownTime;
    class'NewNet_FlakCannon'.default.MinReloadPct = FlakCannon_MinReloadPct;
    class'NewNet_FlakFire'.default.AmmoPerFire = FlakPrimary_AmmoPerFire;
    class'NewNet_FlakFire'.default.FireRate = FlakPrimary_FireRate;
    class'NewNet_FlakFire'.default.ProjPerFire = FlakPrimary_ProjPerFire;
    class'NewNet_FlakFire'.default.Spread = FlakPrimary_Spread;
    class'NewNet_FlakChunk'.default.Bounces = FlakChunk_Bounces;
    class'NewNet_FlakChunk'.default.DamageAtten = FlakChunk_DamageAtten;
    class'NewNet_FlakChunk'.default.Speed = FlakChunk_Speed;
    class'NewNet_FlakChunk'.default.MaxSpeed = FlakChunk_MaxSpeed;
    class'NewNet_FlakChunk'.default.Damage = FlakChunk_Damage;
    class'NewNet_FlakChunk'.default.MomentumTransfer = FlakChunk_MomentumTransfer;
    class'NewNet_FlakChunk'.default.CullDistance = FlakChunk_CullDistance;
    class'NewNet_FlakChunk'.default.LifeSpan = FlakChunk_LifeSpan;
    class'NewNet_FlakChunk'.default.bBounce = FlakChunk_Bounce;
    class'NewNet_FlakAltFire'.default.AmmoPerFire = FlakSecondary_AmmoPerFire;
    class'NewNet_FlakAltFire'.default.FireRate = FlakSecondary_FireRate;
    class'NewNet_FlakAltFire'.default.ProjPerFire = FlakSecondary_ProjPerFire;
    class'NewNet_FlakAltFire'.default.Spread = FlakSecondary_Spread;
    class'NewNet_FlakShell'.default.TossZ = FlakShell_TossZ;
    class'NewNet_FlakShell'.default.Speed = FlakShell_Speed;
    class'NewNet_FlakShell'.default.MaxSpeed = FlakShell_MaxSpeed;
    class'NewNet_FlakShell'.default.Damage = FlakShell_Damage;
    class'NewNet_FlakShell'.default.MomentumTransfer = FlakShell_MomentumTransfer;
    class'NewNet_FlakShell'.default.CullDistance = FlakShell_CullDistance;
    class'NewNet_FlakShell'.default.LifeSpan = FlakShell_LifeSpan;

    class'NewNet_FlakCannon'.default.PutDownAnimRate = class'NewNet_FlakCannon'.default.PutDownAnimRate / (FlakCannon_PutDownTime / default.FlakCannon_PutDownTime);
    class'NewNet_FlakCannon'.default.SelectAnimRate = class'NewNet_FlakCannon'.default.SelectAnimRate / (FlakCannon_BringUpTime / default.FlakCannon_BringUpTime);    
}

defaultproperties
{
    bModifyFlakCannon=false
    FlakCannon_BringUpTime=0.33
    FlakCannon_PutDownTime=0.33
    FlakCannon_MinReloadPct=0.5
    FlakPrimary_AmmoPerFire=1
    FlakPrimary_FireRate=0.95
    FlakPrimary_ProjPerFire=9
    FlakPrimary_Spread=1400
    FlakChunk_Bounces=1
    FlakChunk_DamageAtten=0.5
    FlakChunk_Speed=2500
    FlakChunk_MaxSpeed=2700
    FlakChunk_Damage=13
    FlakChunk_MomentumTransfer=10000.0
    FlakChunk_CullDistance=3000.0
    FlakChunk_LifeSpan=2.7
    FlakChunk_Bounce=True
    FlakSecondary_AmmoPerFire=1
    FlakSecondary_FireRate=1.11
    FlakSecondary_ProjPerFire=1
    FlakSecondary_Spread=0.0
    FlakShell_TossZ=225.0
    FlakShell_Speed=1200.0
    FlakShell_MaxSpeed=1200.0
    FlakShell_Damage=90
    FlakShell_DamageRadius=220.0
    FlakShell_MomentumTransfer=75000.0
    FlakShell_CullDistance=4000.0
    FlakShell_LifeSpan=6.0
}