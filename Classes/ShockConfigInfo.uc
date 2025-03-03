class ShockConfigInfo extends ReplicationInfo;

var bool bModifyShockRifle;

var int ShockPrimary_TraceRange;
var float ShockPrimary_Momentum;
var int ShockPrimary_AmmoPerFire;
var int ShockPrimary_DamageMin;
var int ShockPrimary_DamageMax;
var float ShockPrimary_FireRate;

var int ShockSecondary_AmmoPerFire;
var float ShockSecondary_FireRate;
var int ShockSecondary_ProjSpeed;
var int ShockSecondary_ProjMaxSpeed;
var int ShockSecondary_ProjDamage;
var int ShockSecondary_ProjDamageRadius;
var int ShockSecondary_ProjMomentumTransfer;
var int ShockSecondary_ProjComboDamage;
var int ShockSecondary_ProjComboRadius;
var int ShockSecondary_ProjComboMomentumTransfer;
var int ShockSecondary_ProjLifeSpan;
var int ShockSecondary_ProjComboAmmoCost;
var int ShockSecondary_ProjForceScale;
var int ShockSecondary_ProjForceRadius;
var int ShockSecondary_ProjSoundRadius;
var int ShockSecondary_ProjSoundVolume;

var float ShockRifle_PutDownTime;
var float ShockRifle_BringUpTime;
var float ShockRifle_MinReloadPct;

replication
{
    reliable if(Role == ROLE_Authority && bNetInitial)
        bModifyShockRifle,
        ShockPrimary_FireRate, ShockPrimary_TraceRange, ShockPrimary_Momentum,
        ShockPrimary_AmmoPerFire, ShockPrimary_DamageMin, ShockPrimary_DamageMax, 
        ShockSecondary_AmmoPerFire, ShockSecondary_FireRate, ShockSecondary_ProjSpeed,
        ShockSecondary_ProjMaxSpeed, ShockSecondary_ProjDamage, ShockSecondary_ProjDamageRadius,
        ShockSecondary_ProjMomentumTransfer, ShockSecondary_ProjComboDamage, ShockSecondary_ProjComboRadius,
        ShockSecondary_ProjComboMomentumTransfer, ShockSecondary_ProjLifeSpan, 
        ShockSecondary_ProjComboAmmoCost, ShockSecondary_ProjForceScale, 
        ShockSecondary_ProjForceRadius, ShockSecondary_ProjSoundRadius, ShockSecondary_ProjSoundVolume,
        ShockRifle_BringUpTime, ShockRifle_PutDownTime, ShockRifle_MinReloadPct;    
}

defaultproperties
{
    bModifyShockRifle=false
    ShockRifle_BringUpTime=0.33
    ShockRifle_PutDownTime=0.33
    ShockRifle_MinReloadPct=0.5
    ShockPrimary_TraceRange=17000
    ShockPrimary_Momentum=60000.0
    ShockPrimary_AmmoPerFire=1
    ShockPrimary_DamageMin=45
    ShockPrimary_DamageMax=45
    ShockPrimary_FireRate=0.7
    ShockSecondary_AmmoPerFire=1
    ShockSecondary_FireRate=0.6
    ShockSecondary_ProjSpeed=1150
    ShockSecondary_ProjMaxSpeed=1150
    ShockSecondary_ProjDamage=45
    ShockSecondary_ProjDamageRadius=150
    ShockSecondary_ProjMomentumTransfer=70000.0
    ShockSecondary_ProjComboDamage=200
    ShockSecondary_ProjComboRadius=275
    ShockSecondary_ProjComboMomentumTransfer=150000
    ShockSecondary_ProjLifeSpan=10.0
    ShockSecondary_ProjComboAmmoCost=3
    ShockSecondary_ProjForceScale=5.0
    ShockSecondary_ProjForceRadius=40.0
    ShockSecondary_ProjSoundRadius=100
    ShockSecondary_ProjSoundVolume=50    
}