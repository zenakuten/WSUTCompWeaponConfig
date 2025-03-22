class ONSAvrilConfigInfo extends ReplicationInfo;

var config bool bModifyONSAvril;
var config float ONSAvril_LockCheckFreq;
var config float ONSAvril_MaxLockRange;
var config float ONSAvril_LockAim;
var config float ONSAvril_PutDownTime;
var config float ONSAvril_BringUpTime;
var config float ONSAvril_MinReloadPct;
var config int ONSAvrilPrimary_AmmoPerFire;
var config float ONSAvrilPrimary_FireRate;
var config vector ONSAvrilPrimary_KickMomentum;
var config float ONSAvrilProj_LeadTargetDelay;
var config bool ONSAvrilProj_bProjTarget;
var config float ONSAvrilProj_Speed;
var config float ONSAvrilProj_MaxSpeed;
var config float ONSAvrilProj_Damage;
var config float ONSAvrilProj_DamageRadius;
var config float ONSAvrilProj_MomentumTransfer;
var config float ONSAvrilProj_LifeSpan;

replication
{
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifyONSAvril,
        ONSAvril_LockCheckFreq, ONSAvril_MaxLockRange, ONSAvril_LockAim, ONSAvril_PutDownTime,
        ONSAvril_BringUpTime, ONSAvril_MinReloadPct, ONSAvrilPrimary_AmmoPerFire, ONSAvrilPrimary_FireRate,
        ONSAvrilPrimary_KickMomentum, ONSAvrilProj_LeadTargetDelay, ONSAvrilProj_bProjTarget, ONSAvrilProj_Speed,
        ONSAvrilProj_MaxSpeed, ONSAvrilProj_Damage, ONSAvrilProj_DamageRadius, ONSAvrilProj_MomentumTransfer,
        ONSAvrilProj_LifeSpan;

}

function LoadFrom(MutWeaponConfig config)
{
    bModifyONSAvril = config.bModifyONSAvril;
    ONSAvril_LockCheckFreq = config.ONSAvril_LockCheckFreq;
    ONSAvril_MaxLockRange = config.ONSAvril_MaxLockRange;
    ONSAvril_LockAim = config.ONSAvril_LockAim;
    ONSAvril_PutDownTime = config.ONSAvril_PutDownTime;
    ONSAvril_BringUpTime = config.ONSAvril_BringUpTime;
    ONSAvril_MinReloadPct = config.ONSAvril_MinReloadPct;
    ONSAvrilPrimary_AmmoPerFire = config.ONSAvrilPrimary_AmmoPerFire;
    ONSAvrilPrimary_FireRate = config.ONSAvrilPrimary_FireRate;
    ONSAvrilPrimary_KickMomentum = config.ONSAvrilPrimary_KickMomentum;
    ONSAvrilProj_LeadTargetDelay = config.ONSAvrilProj_LeadTargetDelay;
    ONSAvrilProj_bProjTarget = config.ONSAvrilProj_bProjTarget;
    ONSAvrilProj_Speed = config.ONSAvrilProj_Speed;
    ONSAvrilProj_MaxSpeed = config.ONSAvrilProj_MaxSpeed;
    ONSAvrilProj_Damage = config.ONSAvrilProj_Damage;
    ONSAvrilProj_DamageRadius = config.ONSAvrilProj_DamageRadius;
    ONSAvrilProj_MomentumTransfer = config.ONSAvrilProj_MomentumTransfer;
    ONSAvrilProj_LifeSpan = config.ONSAvrilProj_LifeSpan;
}

simulated function Modify()
{
    if(!bModifyONSAvril)
        return;

    //default
    class'ONSAvril'.default.LockCheckFreq = ONSAvril_LockCheckFreq;
    class'ONSAvril'.default.MaxLockRange = ONSAvril_MaxLockRange;
    class'ONSAvril'.default.LockAim = ONSAvril_LockAim;
    class'ONSAvril'.default.PutDownTime = ONSAvril_PutDownTime;
    class'ONSAvril'.default.BringUpTime = ONSAvril_BringUpTime;
    class'ONSAvril'.default.MinReloadPct = ONSAvril_MinReloadPct;
    class'ONSAvrilFire'.default.AmmoPerFire = ONSAvrilPrimary_AmmoPerFire;
    class'ONSAvrilFire'.default.FireRate = ONSAvrilPrimary_FireRate;
    class'ONSAvrilFire'.default.KickMomentum = ONSAvrilPrimary_KickMomentum;
    class'ONSAvrilRocket'.default.LeadTargetDelay = ONSAvrilProj_LeadTargetDelay;
    class'ONSAvrilRocket'.default.bProjTarget = ONSAvrilProj_bProjTarget;
    class'ONSAvrilRocket'.default.Speed = ONSAvrilProj_Speed;
    class'ONSAvrilRocket'.default.MaxSpeed = ONSAvrilProj_MaxSpeed;
    class'ONSAvrilRocket'.default.Damage = ONSAvrilProj_Damage;
    class'ONSAvrilRocket'.default.DamageRadius = ONSAvrilProj_DamageRadius;
    class'ONSAvrilRocket'.default.MomentumTransfer = ONSAvrilProj_MomentumTransfer;
    class'ONSAvrilRocket'.default.LifeSpan = ONSAvrilProj_LifeSpan;

    //utcomp
    class'UTComp_ONSAvril'.default.LockCheckFreq = ONSAvril_LockCheckFreq;
    class'UTComp_ONSAvril'.default.MaxLockRange = ONSAvril_MaxLockRange;
    class'UTComp_ONSAvril'.default.LockAim = ONSAvril_LockAim;
    class'UTComp_ONSAvril'.default.PutDownTime = ONSAvril_PutDownTime;
    class'UTComp_ONSAvril'.default.BringUpTime = ONSAvril_BringUpTime;
    class'UTComp_ONSAvril'.default.MinReloadPct = ONSAvril_MinReloadPct;
    class'UTComp_ONSAvrilFire'.default.AmmoPerFire = ONSAvrilPrimary_AmmoPerFire;
    class'UTComp_ONSAvrilFire'.default.FireRate = ONSAvrilPrimary_FireRate;
    class'UTComp_ONSAvrilFire'.default.KickMomentum = ONSAvrilPrimary_KickMomentum;

    //newnet
    class'NewNet_ONSAvril'.default.LockCheckFreq = ONSAvril_LockCheckFreq;
    class'NewNet_ONSAvril'.default.MaxLockRange = ONSAvril_MaxLockRange;
    class'NewNet_ONSAvril'.default.LockAim = ONSAvril_LockAim;
    class'NewNet_ONSAvril'.default.PutDownTime = ONSAvril_PutDownTime;
    class'NewNet_ONSAvril'.default.BringUpTime = ONSAvril_BringUpTime;
    class'NewNet_ONSAvril'.default.MinReloadPct = ONSAvril_MinReloadPct;
}

defaultproperties
{
    bModifyONSAvril=false
    ONSAvril_LockCheckFreq=0.2
    ONSAvril_MaxLockRange=15000.0
    ONSAvril_LockAim=0.996
    ONSAvril_PutDownTime=0.33
    ONSAvril_BringUpTime=0.45
    ONSAvril_MinReloadPct=0.5
    ONSAvrilPrimary_AmmoPerFire=1
    ONSAvrilPrimary_FireRate=4.0
    ONSAvrilPrimary_KickMomentum=(X=-350.0,Z=175.0)
    ONSAvrilProj_LeadTargetDelay=1.0
    ONSAvrilProj_bProjTarget=true
    ONSAvrilProj_Speed=550.0
    ONSAvrilProj_MaxSpeed=2800.0
    ONSAvrilProj_Damage=125.0
    ONSAvrilProj_DamageRadius=150.0
    ONSAvrilProj_MomentumTransfer=50000.0
    ONSAvrilProj_LifeSpan=7.0
}