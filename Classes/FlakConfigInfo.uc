class FlakConfigInfo extends WeaponConfigSubInfo;

var bool bModifyFlakCannon;
var float FlakCannon_BringUpTime;
var float FlakCannon_PutDownTime;
var float FlakCannon_MinReloadPct;
var int FlakPrimary_AmmoPerFire;
var float FlakPrimary_FireRate;
var int FlakPrimary_ProjPerFire;
var float FlakPrimary_Spread;
var byte FlakPrimary_SpreadStyle;
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
        FlakPrimary_SpreadStyle, FlakChunk_DamageAtten, FlakChunk_Speed, FlakChunk_MaxSpeed,
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
    FlakPrimary_SpreadStyle = config.FlakPrimary_SpreadStyle;
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
    SetSwitchTimes(class'FlakCannon', FlakCannon_PutDownTime, FlakCannon_BringUpTime);
    class'FlakCannon'.default.MinReloadPct = FlakCannon_MinReloadPct;
    class'FlakFire'.default.AmmoPerFire = FlakPrimary_AmmoPerFire;
    class'FlakFire'.default.FireRate = FlakPrimary_FireRate;
    class'FlakFire'.default.ProjPerFire = FlakPrimary_ProjPerFire;
    class'FlakFire'.default.Spread = FlakPrimary_Spread;
    class'FlakFire'.default.SpreadStyle = ESpreadStyle(FlakPrimary_SpreadStyle);
    class'FlakAltFire'.default.AmmoPerFire = FlakSecondary_AmmoPerFire;
    class'FlakAltFire'.default.FireRate = FlakSecondary_FireRate;
    class'FlakAltFire'.default.ProjPerFire = FlakSecondary_ProjPerFire;
    class'FlakAltFire'.default.Spread = FlakSecondary_Spread;

    //utcomp
    SetSwitchTimes(class'UTComp_FlakCannon', FlakCannon_PutDownTime, FlakCannon_BringUpTime);
    class'UTComp_FlakCannon'.default.MinReloadPct = FlakCannon_MinReloadPct;
    class'UTComp_FlakFire'.default.AmmoPerFire = FlakPrimary_AmmoPerFire;
    class'UTComp_FlakFire'.default.FireRate = FlakPrimary_FireRate;
    class'UTComp_FlakFire'.default.ProjPerFire = FlakPrimary_ProjPerFire;
    class'UTComp_FlakFire'.default.Spread = FlakPrimary_Spread;
    class'UTComp_FlakFire'.default.SpreadStyle = ESpreadStyle(FlakPrimary_SpreadStyle);
    class'UTComp_FlakAltFire'.default.AmmoPerFire = FlakSecondary_AmmoPerFire;
    class'UTComp_FlakAltFire'.default.FireRate = FlakSecondary_FireRate;
    class'UTComp_FlakAltFire'.default.ProjPerFire = FlakSecondary_ProjPerFire;
    class'UTComp_FlakAltFire'.default.Spread = FlakSecondary_Spread;

    //newnet
    SetSwitchTimes(class'NewNet_FlakCannon', FlakCannon_PutDownTime, FlakCannon_BringUpTime);
    class'NewNet_FlakCannon'.default.MinReloadPct = FlakCannon_MinReloadPct;
    class'NewNet_FlakFire'.default.AmmoPerFire = FlakPrimary_AmmoPerFire;
    class'NewNet_FlakFire'.default.FireRate = FlakPrimary_FireRate;
    class'NewNet_FlakFire'.default.ProjPerFire = FlakPrimary_ProjPerFire;
    class'NewNet_FlakFire'.default.Spread = FlakPrimary_Spread;
    class'NewNet_FlakFire'.default.SpreadStyle = ESpreadStyle(FlakPrimary_SpreadStyle);
    class'NewNet_FlakAltFire'.default.AmmoPerFire = FlakSecondary_AmmoPerFire;
    class'NewNet_FlakAltFire'.default.FireRate = FlakSecondary_FireRate;
    class'NewNet_FlakAltFire'.default.ProjPerFire = FlakSecondary_ProjPerFire;
    class'NewNet_FlakAltFire'.default.Spread = FlakSecondary_Spread;

    // stock fires FlakChunk/FlakShell, utcomp and newnet fire their own subclasses, and the
    // TeamColorFlakShell that newnet shells derive from bursts into TeamColorFlakChunk.
    // The client-side predicted fakes must use the same physics as the real projectiles,
    // or they fly at a different speed/trajectory and the fake->real handoff is visible.
    ApplyChunk(class'FlakChunk');
    ApplyChunk(class'TeamColorFlakChunk');
    ApplyChunk(class'UTComp_FlakChunk');
    ApplyChunk(class'NewNet_FlakChunk');
    ApplyChunk(class'NewNet_Fake_FlakChunk');
    // stock FlakShell.Explode hard-codes a 220 radius, the others read DamageRadius
    ApplyShell(class'FlakShell');
    ApplyShell(class'TeamColorFlakShell');
    ApplyShell(class'UTComp_FlakShell');
    ApplyShell(class'NewNet_FlakShell');
    ApplyShell(class'NewNet_Fake_FlakShell');
}

simulated final function ApplyChunk(class<FlakChunk> C)
{
    C.default.DamageAtten = FlakChunk_DamageAtten;
    C.default.Speed = FlakChunk_Speed;
    C.default.MaxSpeed = FlakChunk_MaxSpeed;
    C.default.Damage = FlakChunk_Damage;
    C.default.MomentumTransfer = FlakChunk_MomentumTransfer;
    C.default.CullDistance = FlakChunk_CullDistance;
    C.default.LifeSpan = FlakChunk_LifeSpan;
    C.default.bBounce = FlakChunk_Bounce;
}

simulated final function ApplyShell(class<FlakShell> S)
{
    S.default.TossZ = FlakShell_TossZ;
    S.default.Speed = FlakShell_Speed;
    S.default.MaxSpeed = FlakShell_MaxSpeed;
    S.default.Damage = FlakShell_Damage;
    S.default.DamageRadius = FlakShell_DamageRadius;
    S.default.MomentumTransfer = FlakShell_MomentumTransfer;
    S.default.CullDistance = FlakShell_CullDistance;
    S.default.LifeSpan = FlakShell_LifeSpan;
}

defaultproperties
{
    bModifyFlakCannon=false
    FlakCannon_BringUpTime=0.33
    FlakCannon_PutDownTime=0.33
    FlakCannon_MinReloadPct=0.5
    FlakPrimary_AmmoPerFire=1
    FlakPrimary_FireRate=0.8947
    FlakPrimary_ProjPerFire=9
    FlakPrimary_Spread=1400
    FlakPrimary_SpreadStyle=1
    FlakChunk_DamageAtten=5.0
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
    FlakShell_MaxSpeed=2000.0
    FlakShell_Damage=90
    FlakShell_DamageRadius=220.0
    FlakShell_MomentumTransfer=75000.0
    FlakShell_CullDistance=4000.0
    FlakShell_LifeSpan=6.0
}