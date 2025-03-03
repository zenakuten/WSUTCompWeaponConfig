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