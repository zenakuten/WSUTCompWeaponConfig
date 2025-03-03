class ShieldConfigInfo extends ReplicationInfo;

var bool bModifyShieldGun;

var float ShieldPrimary_FireRate;
var float ShieldPrimary_AmmoPerFire;
var float ShieldPrimary_ShieldRange;
var float ShieldPrimary_MinHoldTime;
var float ShieldPrimary_MinForce;
var float ShieldPrimary_MaxForce;
var float ShieldPrimary_MinDamage; 
var float ShieldPrimary_MaxDamage;
var float ShieldPrimary_SelfForceScale;
var float ShieldPrimary_SelfDamageScale;
var float ShieldPrimary_MinSelfDamage;
var float ShieldPrimary_AutoFireTestFreq;
var float ShieldPrimary_FullyChargedTime;
var bool ShieldPrimary_bAutoRelease;
var bool ShieldPrimary_bStartedChargingForce;
var	byte  ShieldPrimary_ChargingSoundVolume;
var float ShieldPrimary_AutoHitTime;

var float ShieldSecondary_FireRate;
var float ShieldSecondary_AmmoPerFire;
var float ShieldSecondary_AmmoRegenTime;
var float ShieldSecondary_ChargeupTime;
var byte ShieldSecondary_ShieldSoundVolume;

var float ShieldGun_PutDownTime;
var float ShieldGun_BringUpTime;
var float ShieldGun_MinReloadPct;

replication
{
    reliable if(Role == ROLE_Authority && bNetInitial)
        bModifyShieldGun,
        ShieldPrimary_FireRate, ShieldPrimary_AmmoPerFire, ShieldPrimary_ShieldRange, ShieldPrimary_MinHoldTime,
        ShieldPrimary_MinForce, ShieldPrimary_MaxForce, ShieldPrimary_MinDamage, ShieldPrimary_MaxDamage,
        ShieldPrimary_SelfForceScale, ShieldPrimary_SelfDamageScale, ShieldPrimary_MinSelfDamage,
        ShieldPrimary_AutoFireTestFreq, ShieldPrimary_FullyChargedTime, ShieldPrimary_bAutoRelease,
        ShieldPrimary_bStartedChargingForce, ShieldPrimary_ChargingSoundVolume, ShieldPrimary_AutoHitTime,
        ShieldSecondary_FireRate, ShieldSecondary_AmmoPerFire, ShieldSecondary_AmmoRegenTime,
        ShieldSecondary_ChargeupTime, ShieldSecondary_ShieldSoundVolume,
        ShieldGun_BringUpTime, ShieldGun_PutDownTime, ShieldGun_MinReloadPct;
}

function LoadFrom(MutWeaponConfig config)
{
    bModifyShieldGun = config.bModifyShieldGun;
    ShieldPrimary_FireRate = config.ShieldPrimary_FireRate;
    ShieldPrimary_AmmoPerFire = config.ShieldPrimary_AmmoPerFire;
    ShieldPrimary_ShieldRange = config.ShieldPrimary_ShieldRange;
    ShieldPrimary_MinHoldTime = config.ShieldPrimary_MinHoldTime;
    ShieldPrimary_MinForce = config.ShieldPrimary_MinForce; 
    ShieldPrimary_MaxForce = config.ShieldPrimary_MaxForce;
    ShieldPrimary_MinDamage = config.ShieldPrimary_MinDamage; 
    ShieldPrimary_MaxDamage = config.ShieldPrimary_MaxDamage;
    ShieldPrimary_SelfForceScale = config.ShieldPrimary_SelfForceScale;
    ShieldPrimary_SelfDamageScale = config.ShieldPrimary_SelfDamageScale;
    ShieldPrimary_MinSelfDamage = config.ShieldPrimary_MinSelfDamage;
    ShieldPrimary_AutoFireTestFreq = config.ShieldPrimary_AutoFireTestFreq;
    ShieldPrimary_FullyChargedTime = config.ShieldPrimary_FullyChargedTime;
    ShieldPrimary_bAutoRelease = config.ShieldPrimary_bAutoRelease;
    ShieldPrimary_bStartedChargingForce = config.ShieldPrimary_bStartedChargingForce;
    ShieldPrimary_ChargingSoundVolume = config.ShieldPrimary_ChargingSoundVolume;
    ShieldPrimary_AutoHitTime = config.ShieldPrimary_AutoHitTime;
    ShieldSecondary_FireRate = config.ShieldSecondary_FireRate;
    ShieldSecondary_AmmoPerFire = config.ShieldSecondary_AmmoPerFire;
    ShieldSecondary_AmmoRegenTime = config.ShieldSecondary_AmmoRegenTime;
    ShieldSecondary_ChargeupTime = config.ShieldSecondary_ChargeupTime;
    ShieldSecondary_ShieldSoundVolume = config.ShieldSecondary_ShieldSoundVolume;
    ShieldGun_PutDownTime = config.ShieldGun_PutDownTime;
    ShieldGun_BringUpTime = config.ShieldGun_BringUpTime;
    ShieldGun_MinReloadPct = config.ShieldGun_MinReloadPct;
}

simulated function Modify()
{
    if(!bModifyShieldGun)
        return;

    // newnet and utcomp
    class'ShieldFire'.default.FireRate = ShieldPrimary_FireRate;
    class'ShieldFire'.default.AmmoPerFire = ShieldPrimary_AmmoPerFire;

    class'ShieldFire'.default.ShieldRange = ShieldPrimary_ShieldRange;
    class'ShieldFire'.default.MinHoldTime = ShieldPrimary_MinHoldTime;
    class'ShieldFire'.default.MinForce = ShieldPrimary_MinForce;
    class'ShieldFire'.default.MaxForce = ShieldPrimary_MaxForce;
    class'ShieldFire'.default.SelfForceScale = ShieldPrimary_SelfForceScale;
    class'ShieldFire'.default.SelfDamageScale = ShieldPrimary_SelfDamageScale;
    class'ShieldFire'.default.MinSelfDamage = ShieldPrimary_MinSelfDamage;
    class'ShieldFire'.default.AutoFireTestFreq = ShieldPrimary_AutoFireTestFreq;
    class'ShieldFire'.default.FullyChargedTime = ShieldPrimary_FullyChargedTime;
    class'ShieldFire'.default.ChargingSoundVolume = ShieldPrimary_ChargingSoundVolume;

    class'ShieldAltFire'.default.FireRate = ShieldSecondary_FireRate;
    class'ShieldAltFire'.default.AmmoPerFire = ShieldSecondary_AmmoPerFire;
    class'ShieldAltFire'.default.AmmoRegenTime = ShieldSecondary_AmmoRegenTime;
    class'ShieldAltFire'.default.ChargeupTime = ShieldSecondary_ChargeupTime;
    class'ShieldAltFire'.default.ShieldSoundVolume = ShieldSecondary_ShieldSoundVolume;

    // stock
    class'ShieldGun'.default.PutDownTime = ShieldGun_PutDownTime;
    class'ShieldGun'.default.BringUpTime = ShieldGun_BringUpTime;
    class'ShieldGun'.default.MinReloadPct = ShieldGun_MinReloadPct;

    class'ShieldGun'.default.PutDownAnimRate = class'ShieldGun'.default.PutDownAnimRate / (ShieldGun_PutDownTime / default.ShieldGun_PutDownTime);
    class'ShieldGun'.default.SelectAnimRate = class'ShieldGun'.default.SelectAnimRate / (ShieldGun_BringUpTime / default.ShieldGun_BringUpTime);

    // utcomp
    class'UTComp_ShieldGun'.default.PutDownTime = ShieldGun_PutDownTime;
    class'UTComp_ShieldGun'.default.BringUpTime = ShieldGun_BringUpTime;
    class'UTComp_ShieldGun'.default.MinReloadPct = ShieldGun_MinReloadPct;

    class'UTComp_ShieldGun'.default.PutDownAnimRate = class'ShieldGun'.default.PutDownAnimRate / (ShieldGun_PutDownTime / default.ShieldGun_PutDownTime);
    class'UTComp_ShieldGun'.default.SelectAnimRate = class'ShieldGun'.default.SelectAnimRate / (ShieldGun_BringUpTime / default.ShieldGun_BringUpTime);
}

defaultproperties
{
    bModifyShieldGun=false
    ShieldGun_BringUpTime=0.33
    ShieldGun_PutDownTime=0.33
    ShieldGun_MinReloadPct=0.5
    ShieldPrimary_FireRate=0.6
    ShieldPrimary_AmmoPerFire=0
    ShieldPrimary_ShieldRange=112.0
    ShieldPrimary_MinHoldTime=0.4
    ShieldPrimary_MinForce=65000.0
    ShieldPrimary_MaxForce=100000.0
    ShieldPrimary_SelfForceScale=1.0
    ShieldPrimary_SelfDamageScale=0.3
    ShieldPrimary_MinSelfDamage=8
    ShieldPrimary_AutoFireTestFreq=0.15
    ShieldPrimary_FullyChargedTime=2.5
    ShieldPrimary_ChargingSoundVolume=200
    ShieldSecondary_FireRate=1.0
    ShieldSecondary_AmmoPerFire=15
    ShieldSecondary_AmmoRegenTime=0.2
    ShieldSecondary_ChargeupTime=3.0
    ShieldSecondary_ShieldSoundVolume=220
}