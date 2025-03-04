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

function LoadFrom(MutWeaponConfig config)
{
    bModifyShockRifle = config.bModifyShockRifle;
    ShockPrimary_TraceRange = config.ShockPrimary_TraceRange;
    ShockPrimary_Momentum = config.ShockPrimary_Momentum;
    ShockPrimary_AmmoPerFire = config.ShockPrimary_AmmoPerFire;
    ShockPrimary_DamageMin = config.ShockPrimary_DamageMin;
    ShockPrimary_DamageMax = config.ShockPrimary_DamageMax;
    ShockPrimary_FireRate = config.ShockPrimary_FireRate;
    ShockSecondary_AmmoPerFire = config.ShockSecondary_AmmoPerFire;
    ShockSecondary_FireRate = config.ShockSecondary_FireRate;
    ShockSecondary_ProjSpeed = config.ShockSecondary_ProjSpeed;
    ShockSecondary_ProjMaxSpeed = config.ShockSecondary_ProjMaxSpeed;
    ShockSecondary_ProjDamage = config.ShockSecondary_ProjDamage;
    ShockSecondary_ProjDamageRadius = config.ShockSecondary_ProjDamageRadius;
    ShockSecondary_ProjMomentumTransfer = config.ShockSecondary_ProjMomentumTransfer;
    ShockSecondary_ProjComboDamage = config.ShockSecondary_ProjComboDamage;
    ShockSecondary_ProjComboRadius = config.ShockSecondary_ProjComboRadius;
    ShockSecondary_ProjComboMomentumTransfer = config.ShockSecondary_ProjComboMomentumTransfer;
    ShockSecondary_ProjLifeSpan = config.ShockSecondary_ProjLifeSpan;
    ShockSecondary_ProjComboAmmoCost = config.ShockSecondary_ProjComboAmmoCost;
    ShockSecondary_ProjForceScale = config.ShockSecondary_ProjForceScale;
    ShockSecondary_ProjForceRadius = config.ShockSecondary_ProjForceRadius;
    ShockSecondary_ProjSoundRadius = config.ShockSecondary_ProjSoundRadius;
    ShockSecondary_ProjSoundVolume = config.ShockSecondary_ProjSoundVolume;
    ShockRifle_PutDownTime = config.ShockRifle_PutDownTime;
    ShockRifle_BringUpTime = config.ShockRifle_BringUpTime;
    ShockRifle_MinReloadPct = config.ShockRifle_MinReloadPct;
}

simulated function Modify()
{
    if(!bModifyShockRifle)
        return;
    
    //stock
    class'ShockBeamFire'.default.TraceRange = ShockPrimary_TraceRange;
    class'ShockBeamFire'.default.Momentum = ShockPrimary_Momentum;
    class'ShockBeamFire'.default.AmmoPerFire = ShockPrimary_AmmoPerFire;
    class'ShockBeamFire'.default.DamageMin = ShockPrimary_DamageMin;
    class'ShockBeamFire'.default.DamageMax = ShockPrimary_DamageMax;
    class'ShockBeamFire'.default.FireRate = ShockPrimary_FireRate;
    class'ShockProjFire'.default.AmmoPerFire = ShockSecondary_AmmoPerFire;
    class'ShockProjFire'.default.FireRate = ShockSecondary_FireRate;
    class'ShockProjectile'.default.Speed = ShockSecondary_ProjSpeed;
    class'ShockProjectile'.default.MaxSpeed = ShockSecondary_ProjMaxSpeed;
    class'ShockProjectile'.default.Damage = ShockSecondary_ProjDamage;
    class'ShockProjectile'.default.DamageRadius = ShockSecondary_ProjDamageRadius;
    class'ShockProjectile'.default.MomentumTransfer = ShockSecondary_ProjMomentumTransfer;
    class'ShockProjectile'.default.ComboDamage = ShockSecondary_ProjComboDamage;
    class'ShockProjectile'.default.ComboRadius = ShockSecondary_ProjComboRadius;
    class'ShockProjectile'.default.ComboMomentumTransfer = ShockSecondary_ProjComboMomentumTransfer;
    class'ShockProjectile'.default.LifeSpan = ShockSecondary_ProjLifeSpan;
    class'ShockProjectile'.default.ComboAmmoCost = ShockSecondary_ProjComboAmmoCost;
    class'ShockProjectile'.default.ForceScale = ShockSecondary_ProjForceScale;
    class'ShockProjectile'.default.ForceRadius = ShockSecondary_ProjForceRadius;
    class'ShockProjectile'.default.SoundRadius = ShockSecondary_ProjSoundRadius;
    class'ShockProjectile'.default.SoundVolume = ShockSecondary_ProjSoundVolume;
    class'ShockRifle'.default.PutDownTime = ShockRifle_PutDownTime;
    class'ShockRifle'.default.BringUpTime = ShockRifle_BringUpTime;
    class'ShockRifle'.default.MinReloadPct = ShockRifle_MinReloadPct;

    class'ShockRifle'.default.PutDownAnimRate = class'ShockRifle'.default.PutDownAnimRate / (ShockRifle_PutDownTime / default.ShockRifle_PutDownTime);
    class'ShockRifle'.default.SelectAnimRate = class'ShockRifle'.default.SelectAnimRate / (ShockRifle_BringUpTime / default.ShockRifle_BringUpTime);

    //utcomp
    class'UTComp_ShockBeamFire'.default.TraceRange = ShockPrimary_TraceRange;
    class'UTComp_ShockBeamFire'.default.Momentum = ShockPrimary_Momentum;
    class'UTComp_ShockBeamFire'.default.AmmoPerFire = ShockPrimary_AmmoPerFire;
    class'UTComp_ShockBeamFire'.default.DamageMin = ShockPrimary_DamageMin;
    class'UTComp_ShockBeamFire'.default.DamageMax = ShockPrimary_DamageMax;
    class'UTComp_ShockBeamFire'.default.FireRate = ShockPrimary_FireRate;
    class'UTComp_ShockProjFire'.default.AmmoPerFire = ShockSecondary_AmmoPerFire;
    class'UTComp_ShockProjFire'.default.FireRate = ShockSecondary_FireRate;
    class'UTComp_ShockProjectile'.default.Speed = ShockSecondary_ProjSpeed;
    class'UTComp_ShockProjectile'.default.MaxSpeed = ShockSecondary_ProjMaxSpeed;
    class'UTComp_ShockProjectile'.default.Damage = ShockSecondary_ProjDamage;
    class'UTComp_ShockProjectile'.default.DamageRadius = ShockSecondary_ProjDamageRadius;
    class'UTComp_ShockProjectile'.default.MomentumTransfer = ShockSecondary_ProjMomentumTransfer;
    class'UTComp_ShockProjectile'.default.ComboDamage = ShockSecondary_ProjComboDamage;
    class'UTComp_ShockProjectile'.default.ComboRadius = ShockSecondary_ProjComboRadius;
    class'UTComp_ShockProjectile'.default.ComboMomentumTransfer = ShockSecondary_ProjComboMomentumTransfer;
    class'UTComp_ShockProjectile'.default.LifeSpan = ShockSecondary_ProjLifeSpan;
    class'UTComp_ShockProjectile'.default.ComboAmmoCost = ShockSecondary_ProjComboAmmoCost;
    class'UTComp_ShockProjectile'.default.ForceScale = ShockSecondary_ProjForceScale;
    class'UTComp_ShockProjectile'.default.ForceRadius = ShockSecondary_ProjForceRadius;
    class'UTComp_ShockProjectile'.default.SoundRadius = ShockSecondary_ProjSoundRadius;
    class'UTComp_ShockProjectile'.default.SoundVolume = ShockSecondary_ProjSoundVolume;
    class'UTComp_ShockRifle'.default.PutDownTime = ShockRifle_PutDownTime;
    class'UTComp_ShockRifle'.default.BringUpTime = ShockRifle_BringUpTime;
    class'UTComp_ShockRifle'.default.MinReloadPct = ShockRifle_MinReloadPct;

    class'UTComp_ShockRifle'.default.PutDownAnimRate = class'UTComp_ShockRifle'.default.PutDownAnimRate / (ShockRifle_PutDownTime / default.ShockRifle_PutDownTime);
    class'UTComp_ShockRifle'.default.SelectAnimRate = class'UTComp_ShockRifle'.default.SelectAnimRate / (ShockRifle_BringUpTime / default.ShockRifle_BringUpTime);

    //newnet
    class'NewNet_ShockBeamFire'.default.TraceRange = ShockPrimary_TraceRange;
    class'NewNet_ShockBeamFire'.default.Momentum = ShockPrimary_Momentum;
    class'NewNet_ShockBeamFire'.default.AmmoPerFire = ShockPrimary_AmmoPerFire;
    class'NewNet_ShockBeamFire'.default.DamageMin = ShockPrimary_DamageMin;
    class'NewNet_ShockBeamFire'.default.DamageMax = ShockPrimary_DamageMax;
    class'NewNet_ShockBeamFire'.default.FireRate = ShockPrimary_FireRate;
    class'NewNet_ShockProjFire'.default.AmmoPerFire = ShockSecondary_AmmoPerFire;
    class'NewNet_ShockProjFire'.default.FireRate = ShockSecondary_FireRate;
    class'NewNet_ShockProjectile'.default.Speed = ShockSecondary_ProjSpeed;
    class'NewNet_ShockProjectile'.default.MaxSpeed = ShockSecondary_ProjMaxSpeed;
    class'NewNet_ShockProjectile'.default.Damage = ShockSecondary_ProjDamage;
    class'NewNet_ShockProjectile'.default.DamageRadius = ShockSecondary_ProjDamageRadius;
    class'NewNet_ShockProjectile'.default.MomentumTransfer = ShockSecondary_ProjMomentumTransfer;
    class'NewNet_ShockProjectile'.default.ComboDamage = ShockSecondary_ProjComboDamage;
    class'NewNet_ShockProjectile'.default.ComboRadius = ShockSecondary_ProjComboRadius;
    class'NewNet_ShockProjectile'.default.ComboMomentumTransfer = ShockSecondary_ProjComboMomentumTransfer;
    class'NewNet_ShockProjectile'.default.LifeSpan = ShockSecondary_ProjLifeSpan;
    class'NewNet_ShockProjectile'.default.ComboAmmoCost = ShockSecondary_ProjComboAmmoCost;
    class'NewNet_ShockProjectile'.default.ForceScale = ShockSecondary_ProjForceScale;
    class'NewNet_ShockProjectile'.default.ForceRadius = ShockSecondary_ProjForceRadius;
    class'NewNet_ShockProjectile'.default.SoundRadius = ShockSecondary_ProjSoundRadius;
    class'NewNet_ShockProjectile'.default.SoundVolume = ShockSecondary_ProjSoundVolume;
    class'NewNet_ShockRifle'.default.PutDownTime = ShockRifle_PutDownTime;
    class'NewNet_ShockRifle'.default.BringUpTime = ShockRifle_BringUpTime;
    class'NewNet_ShockRifle'.default.MinReloadPct = ShockRifle_MinReloadPct;

    class'NewNet_ShockRifle'.default.PutDownAnimRate = class'NewNet_ShockRifle'.default.PutDownAnimRate / (ShockRifle_PutDownTime / default.ShockRifle_PutDownTime);
    class'NewNet_ShockRifle'.default.SelectAnimRate = class'NewNet_ShockRifle'.default.SelectAnimRate / (ShockRifle_BringUpTime / default.ShockRifle_BringUpTime);
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