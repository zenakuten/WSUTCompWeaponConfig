class RocketConfigInfo extends ReplicationInfo;

var bool bModifyRocketLauncher;
var float RocketLauncher_PutDownTime;
var float RocketLauncher_BringUpTime;
var float RocketLauncher_MinReloadPct;
var float RocketLauncher_SeekCheckFreq;
var float RocketLauncher_SeekRange;
var float RocketLauncher_LockRequiredTime;
var float RocketLauncher_UnLockRequiredTime;
var float RocketLauncher_LockAim;
var int RocketPrimary_AmmoPerFire;
var float RocketPrimary_FireRate;
var int RocketSecondary_AmmoPerFire;
var float RocketSecondary_FireRate;
var float RocketSecondary_TightSpread;
var float RocketSecondary_LooseSpread;
var int RocketSecondary_MaxLoad;
var float RocketSecondary_MaxHoldTime;
var int RocketProj_Speed;
var int RocketProj_MaxSpeed;
var int RocketProj_Damage;
var int RocketProj_DamageRadius;
var int RocketProj_MomentumTransfer;
var int RocketProj_LifeSpan;
var float RocketProj_FlockRadius;
var float RocketProj_FlockStiffness;
var float RocketProj_FlockMaxForce;
var float RocketProj_FlockCurlForce;


replication
{
    reliable if(Role == ROLE_Authority && bNetInitial)
        bModifyRocketLauncher, RocketLauncher_BringUpTime, RocketLauncher_MinReloadPct, RocketLauncher_SeekCheckFreq,
        RocketLauncher_SeekRange, RocketLauncher_LockRequiredTime, RocketLauncher_UnLockRequiredTime, RocketLauncher_LockAim,
        RocketPrimary_AmmoPerFire, RocketPrimary_FireRate, RocketSecondary_AmmoPerFire, RocketSecondary_FireRate,
        RocketSecondary_TightSpread, RocketSecondary_LooseSpread, RocketSecondary_MaxLoad, RocketSecondary_MaxHoldTime,
        RocketProj_Speed, RocketProj_MaxSpeed, RocketProj_Damage, RocketProj_DamageRadius,
        RocketProj_MomentumTransfer, RocketProj_LifeSpan, RocketProj_FlockRadius, RocketProj_FlockStiffness,
        RocketProj_FlockMaxForce, RocketProj_FlockCurlForce;

}

function LoadFrom(MutWeaponConfig config)
{
    bModifyRocketLauncher = config.bModifyRocketLauncher;
    RocketLauncher_PutDownTime = config.RocketLauncher_PutDownTime;
    RocketLauncher_BringUpTime = config.RocketLauncher_BringUpTime;
    RocketLauncher_MinReloadPct = config.RocketLauncher_MinReloadPct;
    RocketLauncher_SeekCheckFreq = config.RocketLauncher_SeekCheckFreq;
    RocketLauncher_SeekRange = config.RocketLauncher_SeekRange;
    RocketLauncher_LockRequiredTime = config.RocketLauncher_LockRequiredTime;
    RocketLauncher_UnLockRequiredTime = config.RocketLauncher_UnLockRequiredTime;
    RocketLauncher_LockAim = config.RocketLauncher_LockAim;
    RocketPrimary_AmmoPerFire = config.RocketPrimary_AmmoPerFire;
    RocketPrimary_FireRate = config.RocketPrimary_FireRate;
    RocketSecondary_AmmoPerFire = config.RocketSecondary_AmmoPerFire;
    RocketSecondary_FireRate = config.RocketSecondary_FireRate;
    RocketSecondary_TightSpread = config.RocketSecondary_TightSpread;
    RocketSecondary_LooseSpread = config.RocketSecondary_LooseSpread;
    RocketSecondary_MaxLoad = config.RocketSecondary_MaxLoad;
    RocketSecondary_MaxHoldTime = config.RocketSecondary_MaxHoldTime;
    RocketProj_Speed = config.RocketProj_Speed;
    RocketProj_MaxSpeed = config.RocketProj_MaxSpeed;
    RocketProj_Damage = config.RocketProj_Damage;
    RocketProj_DamageRadius = config.RocketProj_DamageRadius;
    RocketProj_MomentumTransfer = config.RocketProj_MomentumTransfer;
    RocketProj_LifeSpan = config.RocketProj_LifeSpan;
    RocketProj_FlockRadius = config.RocketProj_FlockRadius;
    RocketProj_FlockStiffness = config.RocketProj_FlockStiffness;
    RocketProj_FlockMaxForce = config.RocketProj_FlockMaxForce;
    RocketProj_FlockCurlForce = config.RocketProj_FlockCurlForce;
}

simulated function Modify()
{
    if(!bModifyRocketLauncher)
        return;

    // default
    class'RocketLauncher'.default.PutDownTime = RocketLauncher_PutDownTime;
    class'RocketLauncher'.default.BringUpTime = RocketLauncher_BringUpTime;
    class'RocketLauncher'.default.MinReloadPct = RocketLauncher_MinReloadPct;
    class'RocketLauncher'.default.SeekCheckFreq = RocketLauncher_SeekCheckFreq;
    class'RocketLauncher'.default.SeekRange = RocketLauncher_SeekRange;
    class'RocketLauncher'.default.LockRequiredTime = RocketLauncher_LockRequiredTime;
    class'RocketLauncher'.default.UnLockRequiredTime = RocketLauncher_UnLockRequiredTime;
    class'RocketLauncher'.default.LockAim = RocketLauncher_LockAim;
    class'RocketFire'.default.AmmoPerFire = RocketPrimary_AmmoPerFire;
    class'RocketFire'.default.FireRate = RocketPrimary_FireRate;
    class'RocketMultiFire'.default.AmmoPerFire = RocketSecondary_AmmoPerFire;
    class'RocketMultiFire'.default.FireRate = RocketSecondary_FireRate;
    class'RocketMultiFire'.default.TightSpread = RocketSecondary_TightSpread;
    class'RocketMultiFire'.default.LooseSpread = RocketSecondary_LooseSpread;
    class'RocketMultiFire'.default.MaxLoad = RocketSecondary_MaxLoad;
    class'RocketMultiFire'.default.MaxHoldTime = RocketSecondary_MaxHoldTime;
    class'RocketProj'.default.Speed = RocketProj_Speed;
    class'RocketProj'.default.MaxSpeed = RocketProj_MaxSpeed;
    class'RocketProj'.default.Damage = RocketProj_Damage;
    class'RocketProj'.default.DamageRadius = RocketProj_DamageRadius;
    class'RocketProj'.default.MomentumTransfer = RocketProj_MomentumTransfer;
    class'RocketProj'.default.LifeSpan = RocketProj_LifeSpan;
    class'RocketProj'.default.FlockRadius = RocketProj_FlockRadius;
    class'RocketProj'.default.FlockStiffness = RocketProj_FlockStiffness;
    class'RocketProj'.default.FlockMaxForce = RocketProj_FlockMaxForce;
    class'RocketProj'.default.FlockCurlForce = RocketProj_FlockCurlForce;

    // utcomp
    class'UTComp_RocketLauncher'.default.PutDownTime = RocketLauncher_PutDownTime;
    class'UTComp_RocketLauncher'.default.BringUpTime = RocketLauncher_BringUpTime;
    class'UTComp_RocketLauncher'.default.MinReloadPct = RocketLauncher_MinReloadPct;
    class'UTComp_RocketLauncher'.default.SeekCheckFreq = RocketLauncher_SeekCheckFreq;
    class'UTComp_RocketLauncher'.default.SeekRange = RocketLauncher_SeekRange;
    class'UTComp_RocketLauncher'.default.LockRequiredTime = RocketLauncher_LockRequiredTime;
    class'UTComp_RocketLauncher'.default.UnLockRequiredTime = RocketLauncher_UnLockRequiredTime;
    class'UTComp_RocketLauncher'.default.LockAim = RocketLauncher_LockAim;
    class'UTComp_RocketFire'.default.AmmoPerFire = RocketPrimary_AmmoPerFire;
    class'UTComp_RocketFire'.default.FireRate = RocketPrimary_FireRate;
    class'UTComp_RocketMultiFire'.default.AmmoPerFire = RocketSecondary_AmmoPerFire;
    class'UTComp_RocketMultiFire'.default.FireRate = RocketSecondary_FireRate;
    class'UTComp_RocketMultiFire'.default.TightSpread = RocketSecondary_TightSpread;
    class'UTComp_RocketMultiFire'.default.LooseSpread = RocketSecondary_LooseSpread;
    class'UTComp_RocketMultiFire'.default.MaxLoad = RocketSecondary_MaxLoad;
    class'UTComp_RocketMultiFire'.default.MaxHoldTime = RocketSecondary_MaxHoldTime;
    class'UTComp_RocketProj'.default.Speed = RocketProj_Speed;
    class'UTComp_RocketProj'.default.MaxSpeed = RocketProj_MaxSpeed;
    class'UTComp_RocketProj'.default.Damage = RocketProj_Damage;
    class'UTComp_RocketProj'.default.DamageRadius = RocketProj_DamageRadius;
    class'UTComp_RocketProj'.default.MomentumTransfer = RocketProj_MomentumTransfer;
    class'UTComp_RocketProj'.default.LifeSpan = RocketProj_LifeSpan;
    class'UTComp_RocketProj'.default.FlockRadius = RocketProj_FlockRadius;
    class'UTComp_RocketProj'.default.FlockStiffness = RocketProj_FlockStiffness;
    class'UTComp_RocketProj'.default.FlockMaxForce = RocketProj_FlockMaxForce;
    class'UTComp_RocketProj'.default.FlockCurlForce = RocketProj_FlockCurlForce;

    // newnet
    class'NewNet_RocketLauncher'.default.PutDownTime = RocketLauncher_PutDownTime;
    class'NewNet_RocketLauncher'.default.BringUpTime = RocketLauncher_BringUpTime;
    class'NewNet_RocketLauncher'.default.MinReloadPct = RocketLauncher_MinReloadPct;
    class'NewNet_RocketLauncher'.default.SeekCheckFreq = RocketLauncher_SeekCheckFreq;
    class'NewNet_RocketLauncher'.default.SeekRange = RocketLauncher_SeekRange;
    class'NewNet_RocketLauncher'.default.LockRequiredTime = RocketLauncher_LockRequiredTime;
    class'NewNet_RocketLauncher'.default.UnLockRequiredTime = RocketLauncher_UnLockRequiredTime;
    class'NewNet_RocketLauncher'.default.LockAim = RocketLauncher_LockAim;
    class'NewNet_RocketFire'.default.AmmoPerFire = RocketPrimary_AmmoPerFire;
    class'NewNet_RocketFire'.default.FireRate = RocketPrimary_FireRate;
    class'NewNet_RocketMultiFire'.default.AmmoPerFire = RocketSecondary_AmmoPerFire;
    class'NewNet_RocketMultiFire'.default.FireRate = RocketSecondary_FireRate;
    class'NewNet_RocketMultiFire'.default.TightSpread = RocketSecondary_TightSpread;
    class'NewNet_RocketMultiFire'.default.LooseSpread = RocketSecondary_LooseSpread;
    class'NewNet_RocketMultiFire'.default.MaxLoad = RocketSecondary_MaxLoad;
    class'NewNet_RocketMultiFire'.default.MaxHoldTime = RocketSecondary_MaxHoldTime;
    class'NewNet_RocketProj'.default.Speed = RocketProj_Speed;
    class'NewNet_RocketProj'.default.MaxSpeed = RocketProj_MaxSpeed;
    class'NewNet_RocketProj'.default.Damage = RocketProj_Damage;
    class'NewNet_RocketProj'.default.DamageRadius = RocketProj_DamageRadius;
    class'NewNet_RocketProj'.default.MomentumTransfer = RocketProj_MomentumTransfer;
    class'NewNet_RocketProj'.default.LifeSpan = RocketProj_LifeSpan;
    class'NewNet_RocketProj'.default.FlockRadius = RocketProj_FlockRadius;
    class'NewNet_RocketProj'.default.FlockStiffness = RocketProj_FlockStiffness;
    class'NewNet_RocketProj'.default.FlockMaxForce = RocketProj_FlockMaxForce;
    class'NewNet_RocketProj'.default.FlockCurlForce = RocketProj_FlockCurlForce;
}

defaultproperties
{
    bModifyRocketLauncher=false
    RocketLauncher_PutDownTime=0.33
    RocketLauncher_BringUpTime=0.33
    RocketLauncher_MinReloadPct=0.5
    RocketLauncher_SeekCheckFreq=0.5
    RocketLauncher_SeekRange=8000.0
    RocketLauncher_LockRequiredTime=1.25
    RocketLauncher_UnLockRequiredTime=0.5
    RocketLauncher_LockAim=0.996
    RocketPrimary_AmmoPerFire=1
    RocketPrimary_FireRate=0.9
    RocketSecondary_AmmoPerFire=1
    RocketSecondary_FireRate=0.95
    RocketSecondary_TightSpread=300.0
    RocketSecondary_LooseSpread=1000.0
    RocketSecondary_MaxLoad=3
    RocketSecondary_MaxHoldTime=2.3
    RocketProj_Speed=1350.0
    RocketProj_MaxSpeed=1350.0
    RocketProj_Damage=90.0
    RocketProj_DamageRadius=220.0
    RocketProj_MomentumTransfer=50000.0
    RocketProj_LifeSpan=8.0
    RocketProj_FlockRadius=12.0
    RocketProj_FlockStiffness=40.0
    RocketProj_FlockMaxForce=600.0
    RocketProj_FlockCurlForce=450.0
}