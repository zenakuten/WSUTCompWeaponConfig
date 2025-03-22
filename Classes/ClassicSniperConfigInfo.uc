class ClassicSniperConfigInfo extends ReplicationInfo;

var bool bModifyClassicSniperRifle;
var int ClassicSniperPrimary_AmmoPerFire;
var int ClassicSniperPrimary_DamageMin;
var int ClassicSniperPrimary_DamageMax;
var int ClassicSniperPrimary_TraceRange;
var float ClassicSniperPrimary_FireRate;
var float ClassicSniperPrimary_HeadshotDamageMult;
var float ClassicSniperRifle_PutDownTime;
var float ClassicSniperRifle_BringUpTime;
var float ClassicSniperRifle_MinReloadPct;

replication
{
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifyClassicSniperRifle,
        ClassicSniperPrimary_AmmoPerFire, ClassicSniperPrimary_DamageMin, ClassicSniperPrimary_DamageMax,
        ClassicSniperPrimary_TraceRange, ClassicSniperPrimary_FireRate, ClassicSniperPrimary_HeadshotDamageMult,
        ClassicSniperRifle_BringUpTime, ClassicSniperRifle_PutDownTime, ClassicSniperRifle_MinReloadPct;
}

function LoadFrom(MutWeaponConfig config)
{
    bModifyClassicSniperRifle = config.bModifyClassicSniperRifle;
    ClassicSniperPrimary_AmmoPerFire = config.ClassicSniperPrimary_AmmoPerFire;
    ClassicSniperPrimary_DamageMin = config.ClassicSniperPrimary_DamageMin;
    ClassicSniperPrimary_DamageMax = config.ClassicSniperPrimary_DamageMax;
    ClassicSniperPrimary_TraceRange = config.ClassicSniperPrimary_TraceRange;
    ClassicSniperPrimary_FireRate = config.ClassicSniperPrimary_FireRate;
    ClassicSniperPrimary_HeadshotDamageMult = config.ClassicSniperPrimary_HeadshotDamageMult;
    ClassicSniperRifle_PutDownTime = config.ClassicSniperRifle_PutDownTime;
    ClassicSniperRifle_BringUpTime = config.ClassicSniperRifle_BringUpTime;
    ClassicSniperRifle_MinReloadPct = config.ClassicSniperRifle_MinReloadPct;    
}

simulated function Modify()
{
    if(!bModifyClassicSniperRifle)
        return;

    //stock
    class'ClassicSniperFire'.default.AmmoPerFire = ClassicSniperPrimary_AmmoPerFire;
    class'ClassicSniperFire'.default.DamageMin = ClassicSniperPrimary_DamageMin;
    class'ClassicSniperFire'.default.DamageMax = ClassicSniperPrimary_DamageMax;
    class'ClassicSniperFire'.default.TraceRange = ClassicSniperPrimary_TraceRange;
    class'ClassicSniperFire'.default.FireRate = ClassicSniperPrimary_FireRate;
    class'ClassicSniperFire'.default.HeadshotDamageMult = ClassicSniperPrimary_HeadshotDamageMult;
    class'ClassicSniperRifle'.default.PutDownTime = ClassicSniperRifle_PutDownTime;
    class'ClassicSniperRifle'.default.BringUpTime = ClassicSniperRifle_BringUpTime;
    class'ClassicSniperRifle'.default.MinReloadPct = ClassicSniperRifle_MinReloadPct;
    class'ClassicSniperRifle'.default.PutDownAnimRate = class'ClassicSniperRifle'.default.PutDownAnimRate / (ClassicSniperRifle_PutDownTime / default.ClassicSniperRifle_PutDownTime);
    class'ClassicSniperRifle'.default.SelectAnimRate = class'ClassicSniperRifle'.default.SelectAnimRate / (ClassicSniperRifle_BringUpTime / default.ClassicSniperRifle_BringUpTime);

    //utcomp
    class'UTComp_ClassicSniperFire'.default.AmmoPerFire = ClassicSniperPrimary_AmmoPerFire;
    class'UTComp_ClassicSniperFire'.default.DamageMin = ClassicSniperPrimary_DamageMin;
    class'UTComp_ClassicSniperFire'.default.DamageMax = ClassicSniperPrimary_DamageMax;
    class'UTComp_ClassicSniperFire'.default.TraceRange = ClassicSniperPrimary_TraceRange;
    class'UTComp_ClassicSniperFire'.default.FireRate = ClassicSniperPrimary_FireRate;
    class'UTComp_ClassicSniperFire'.default.HeadshotDamageMult = ClassicSniperPrimary_HeadshotDamageMult;
    class'UTComp_ClassicSniperRifle'.default.PutDownTime = ClassicSniperRifle_PutDownTime;
    class'UTComp_ClassicSniperRifle'.default.BringUpTime = ClassicSniperRifle_BringUpTime;
    class'UTComp_ClassicSniperRifle'.default.MinReloadPct = ClassicSniperRifle_MinReloadPct;
    class'UTComp_ClassicSniperRifle'.default.PutDownAnimRate = class'UTComp_ClassicSniperRifle'.default.PutDownAnimRate / (ClassicSniperRifle_PutDownTime / default.ClassicSniperRifle_PutDownTime);
    class'UTComp_ClassicSniperRifle'.default.SelectAnimRate = class'UTComp_ClassicSniperRifle'.default.SelectAnimRate / (ClassicSniperRifle_BringUpTime / default.ClassicSniperRifle_BringUpTime);

    //newnet
    class'NewNet_ClassicSniperFire'.default.AmmoPerFire = ClassicSniperPrimary_AmmoPerFire;
    class'NewNet_ClassicSniperFire'.default.DamageMin = ClassicSniperPrimary_DamageMin;
    class'NewNet_ClassicSniperFire'.default.DamageMax = ClassicSniperPrimary_DamageMax;
    class'NewNet_ClassicSniperFire'.default.TraceRange = ClassicSniperPrimary_TraceRange;
    class'NewNet_ClassicSniperFire'.default.FireRate = ClassicSniperPrimary_FireRate;
    class'NewNet_ClassicSniperFire'.default.HeadshotDamageMult = ClassicSniperPrimary_HeadshotDamageMult;
    class'NewNet_ClassicSniperRifle'.default.PutDownTime = ClassicSniperRifle_PutDownTime;
    class'NewNet_ClassicSniperRifle'.default.BringUpTime = ClassicSniperRifle_BringUpTime;
    class'NewNet_ClassicSniperRifle'.default.MinReloadPct = ClassicSniperRifle_MinReloadPct;
    class'NewNet_ClassicSniperRifle'.default.PutDownAnimRate = class'NewNet_ClassicSniperRifle'.default.PutDownAnimRate / (ClassicSniperRifle_PutDownTime / default.ClassicSniperRifle_PutDownTime);
    class'NewNet_ClassicSniperRifle'.default.SelectAnimRate = class'NewNet_ClassicSniperRifle'.default.SelectAnimRate / (ClassicSniperRifle_BringUpTime / default.ClassicSniperRifle_BringUpTime);
}

defaultproperties
{
    bModifyClassicSniperRifle=false
    ClassicSniperRifle_BringUpTime=0.6
    ClassicSniperRifle_PutDownTime=0.58
    ClassicSniperRifle_MinReloadPct=0.5
    ClassicSniperPrimary_AmmoPerFire=1
    ClassicSniperPrimary_DamageMin=60
    ClassicSniperPrimary_DamageMax=60
    ClassicSniperPrimary_TraceRange=17000
    ClassicSniperPrimary_FireRate=1.33
    ClassicSniperPrimary_HeadshotDamageMult=2.0
}