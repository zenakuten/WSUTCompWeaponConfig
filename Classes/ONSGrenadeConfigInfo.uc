class ONSGrenadeConfigInfo extends ReplicationInfo;

var bool bModifyONSGrenadeLauncher;
var int ONSGrenadePrimary_AmmoPerFire;
var float ONSGrenadePrimary_FireRate;
var bool ONSGrenadeProj_bBounce;
var float ONSGrenadeProj_Speed;
var float ONSGrenadeProj_MaxSpeed;
var float ONSGrenadeProj_TossZ;
var float ONSGrenadeProj_Damage;
var float ONSGrenadeProj_DamageRadius;
var float ONSGrenadeProj_MomentumTransfer;
var float ONSGrenadeProj_CullDistance;
var float ONSGrenadeProj_LifeSpan;
var float ONSGrenadeProj_DampenFactor;
var float ONSGrenadeProj_DampenFactorParallel;
var float ONSGrenadeLauncher_PutDownTime;
var float ONSGrenadeLauncher_BringUpTime;
var float ONSGrenadeLauncher_MinReloadPct;

replication
{
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifyONSGrenadeLauncher,
        ONSGrenadePrimary_AmmoPerFire, ONSGrenadePrimary_FireRate, ONSGrenadeProj_bBounce, ONSGrenadeProj_Speed,
        ONSGrenadeProj_MaxSpeed, ONSGrenadeProj_TossZ, ONSGrenadeProj_Damage, ONSGrenadeProj_DamageRadius,
        ONSGrenadeProj_MomentumTransfer, ONSGrenadeProj_CullDistance, ONSGrenadeProj_LifeSpan, ONSGrenadeProj_DampenFactor,
        ONSGrenadeProj_DampenFactorParallel, ONSGrenadeLauncher_PutDownTime, ONSGrenadeLauncher_BringUpTime, ONSGrenadeLauncher_MinReloadPct;

}

function LoadFrom(MutWeaponConfig config)
{
    ONSGrenadePrimary_AmmoPerFire = config.ONSGrenadePrimary_AmmoPerFire;
    ONSGrenadePrimary_FireRate = config.ONSGrenadePrimary_FireRate;
    ONSGrenadeProj_bBounce = config.ONSGrenadeProj_bBounce;
    ONSGrenadeProj_Speed = config.ONSGrenadeProj_Speed;
    ONSGrenadeProj_MaxSpeed = config.ONSGrenadeProj_MaxSpeed;
    ONSGrenadeProj_TossZ = config.ONSGrenadeProj_TossZ;
    ONSGrenadeProj_Damage = config.ONSGrenadeProj_Damage;
    ONSGrenadeProj_DamageRadius = config.ONSGrenadeProj_DamageRadius;
    ONSGrenadeProj_MomentumTransfer = config.ONSGrenadeProj_MomentumTransfer;
    ONSGrenadeProj_CullDistance = config.ONSGrenadeProj_CullDistance;
    ONSGrenadeProj_LifeSpan = config.ONSGrenadeProj_LifeSpan;
    ONSGrenadeProj_DampenFactor = config.ONSGrenadeProj_DampenFactor;
    ONSGrenadeProj_DampenFactorParallel = config.ONSGrenadeProj_DampenFactorParallel;
    ONSGrenadeLauncher_PutDownTime = config.ONSGrenadeLauncher_PutDownTime;
    ONSGrenadeLauncher_BringUpTime = config.ONSGrenadeLauncher_BringUpTime;
    ONSGrenadeLauncher_MinReloadPct = config.ONSGrenadeLauncher_MinReloadPct;
}

simulated function Modify()
{
    if(!bModifyONSGrenadeLauncher)
        return;

    // stock
    class'ONSGrenadeFire'.default.AmmoPerFire = ONSGrenadePrimary_AmmoPerFire;
    class'ONSGrenadeFire'.default.FireRate = ONSGrenadePrimary_FireRate;
    class'ONSGrenadeProjectile'.default.bBounce = ONSGrenadeProj_bBounce;
    class'ONSGrenadeProjectile'.default.Speed = ONSGrenadeProj_Speed;
    class'ONSGrenadeProjectile'.default.MaxSpeed = ONSGrenadeProj_MaxSpeed;
    class'ONSGrenadeProjectile'.default.TossZ = ONSGrenadeProj_TossZ;
    class'ONSGrenadeProjectile'.default.Damage = ONSGrenadeProj_Damage;
    class'ONSGrenadeProjectile'.default.DamageRadius = ONSGrenadeProj_DamageRadius;
    class'ONSGrenadeProjectile'.default.MomentumTransfer = ONSGrenadeProj_MomentumTransfer;
    class'ONSGrenadeProjectile'.default.CullDistance = ONSGrenadeProj_CullDistance;
    class'ONSGrenadeProjectile'.default.LifeSpan = ONSGrenadeProj_LifeSpan;
    class'ONSGrenadeProjectile'.default.DampenFactor = ONSGrenadeProj_DampenFactor;
    class'ONSGrenadeProjectile'.default.DampenFactorParallel = ONSGrenadeProj_DampenFactorParallel;
    class'ONSGrenadeLauncher'.default.PutDownTime = ONSGrenadeLauncher_PutDownTime;
    class'ONSGrenadeLauncher'.default.BringUpTime = ONSGrenadeLauncher_BringUpTime;
    class'ONSGrenadeLauncher'.default.MinReloadPct = ONSGrenadeLauncher_MinReloadPct;

    // utcomp
    class'UTComp_ONSGrenadeFire'.default.AmmoPerFire = ONSGrenadePrimary_AmmoPerFire;
    class'UTComp_ONSGrenadeFire'.default.FireRate = ONSGrenadePrimary_FireRate;
    class'UTComp_ONSGrenadeLauncher'.default.PutDownTime = ONSGrenadeLauncher_PutDownTime;
    class'UTComp_ONSGrenadeLauncher'.default.BringUpTime = ONSGrenadeLauncher_BringUpTime;
    class'UTComp_ONSGrenadeLauncher'.default.MinReloadPct = ONSGrenadeLauncher_MinReloadPct;

    // newnet
    class'NewNet_ONSGrenadeLauncher'.default.PutDownTime = ONSGrenadeLauncher_PutDownTime;
    class'NewNet_ONSGrenadeLauncher'.default.BringUpTime = ONSGrenadeLauncher_BringUpTime;
    class'NewNet_ONSGrenadeLauncher'.default.MinReloadPct = ONSGrenadeLauncher_MinReloadPct;
}

defaultproperties
{
    bModifyONSGrenadeLauncher=false
    ONSGrenadePrimary_AmmoPerFire=1
    ONSGrenadePrimary_FireRate=0.65
    ONSGrenadeProj_bBounce=true
    ONSGrenadeProj_Speed=1200.0
    ONSGrenadeProj_MaxSpeed=1200.0
    ONSGrenadeProj_TossZ=0.0
    ONSGrenadeProj_Damage=100.0
    ONSGrenadeProj_DamageRadius=175.0
    ONSGrenadeProj_MomentumTransfer=50000.0
    ONSGrenadeProj_CullDistance=5000.0
    ONSGrenadeProj_LifeSpan=0.0
    ONSGrenadeProj_DampenFactor=0.5
    ONSGrenadeProj_DampenFactorParallel=0.8
    ONSGrenadeLauncher_PutDownTime=0.33
    ONSGrenadeLauncher_BringUpTime=0.33
    ONSGrenadeLauncher_MinReloadPct=0.5
}