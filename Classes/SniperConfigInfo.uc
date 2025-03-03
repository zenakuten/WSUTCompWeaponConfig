class SniperConfigInfo extends ReplicationInfo;

var bool bModifySniperRifle;
var int SniperPrimary_AmmoPerFire;
var int SniperPrimary_DamageMin;
var int SniperPrimary_DamageMax;
var int SniperPrimary_TraceRange;
var float SniperPrimary_FireRate;
var int SniperPrimary_NumArcs;
var float SniperPrimary_SecDamageMult;
var int SniperPrimary_SecTraceDist;
var float SniperPrimary_HeadshotDamageMult;

var float SniperRifle_PutDownTime;
var float SniperRifle_BringUpTime;
var float SniperRifle_MinReloadPct;

replication
{
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifySniperRifle,
        SniperPrimary_AmmoPerFire, SniperPrimary_DamageMin, SniperPrimary_DamageMax,
        SniperPrimary_TraceRange, SniperPrimary_FireRate, SniperPrimary_NumArcs, SniperPrimary_SecDamageMult,
        SniperPrimary_SecTraceDist, SniperPrimary_HeadshotDamageMult,
        SniperRifle_BringUpTime, SniperRifle_PutDownTime, SniperRifle_MinReloadPct;
}

function LoadFrom(MutWeaponConfig config)
{
    bModifySniperRifle = config.bModifySniperRifle;
    SniperPrimary_AmmoPerFire = config.SniperPrimary_AmmoPerFire;
    SniperPrimary_DamageMin = config.SniperPrimary_DamageMin;
    SniperPrimary_DamageMax = config.SniperPrimary_DamageMax;
    SniperPrimary_TraceRange = config.SniperPrimary_TraceRange;
    SniperPrimary_FireRate = config.SniperPrimary_FireRate;
    SniperPrimary_NumArcs = config.SniperPrimary_NumArcs;
    SniperPrimary_SecDamageMult = config.SniperPrimary_SecDamageMult;
    SniperPrimary_SecTraceDist = config.SniperPrimary_SecTraceDist;
    SniperPrimary_HeadshotDamageMult = config.SniperPrimary_HeadshotDamageMult;
    SniperRifle_PutDownTime = config.SniperRifle_PutDownTime;
    SniperRifle_BringUpTime = config.SniperRifle_BringUpTime;
    SniperRifle_MinReloadPct = config.SniperRifle_MinReloadPct;    
}

simulated function Modify()
{
    if(!bModifySniperRifle)
        return;

    //stock
    class'SniperFire'.default.AmmoPerFire = SniperPrimary_AmmoPerFire;
    class'SniperFire'.default.DamageMin = SniperPrimary_DamageMin;
    class'SniperFire'.default.DamageMax = SniperPrimary_DamageMax;
    class'SniperFire'.default.TraceRange = SniperPrimary_TraceRange;
    class'SniperFire'.default.FireRate = SniperPrimary_FireRate;
    class'SniperFire'.default.NumArcs = SniperPrimary_NumArcs;
    class'SniperFire'.default.SecDamageMult = SniperPrimary_SecDamageMult;
    class'SniperFire'.default.SecTraceDist = SniperPrimary_SecTraceDist;
    class'SniperFire'.default.HeadshotDamageMult = SniperPrimary_HeadshotDamageMult;

    class'SniperRifle'.default.PutDownTime = SniperRifle_PutDownTime;
    class'SniperRifle'.default.BringUpTime = SniperRifle_BringUpTime;
    class'SniperRifle'.default.MinReloadPct = SniperRifle_MinReloadPct;

    class'SniperRifle'.default.PutDownAnimRate = class'SniperRifle'.default.PutDownAnimRate / (SniperRifle_PutDownTime / default.SniperRifle_PutDownTime);
    class'SniperRifle'.default.SelectAnimRate = class'SniperRifle'.default.SelectAnimRate / (SniperRifle_BringUpTime / default.SniperRifle_BringUpTime);

    //utcomp
    class'UTComp_SniperFire'.default.AmmoPerFire = SniperPrimary_AmmoPerFire;
    class'UTComp_SniperFire'.default.DamageMin = SniperPrimary_DamageMin;
    class'UTComp_SniperFire'.default.DamageMax = SniperPrimary_DamageMax;
    class'UTComp_SniperFire'.default.TraceRange = SniperPrimary_TraceRange;
    class'UTComp_SniperFire'.default.FireRate = SniperPrimary_FireRate;
    class'UTComp_SniperFire'.default.NumArcs = SniperPrimary_NumArcs;
    class'UTComp_SniperFire'.default.SecDamageMult = SniperPrimary_SecDamageMult;
    class'UTComp_SniperFire'.default.SecTraceDist = SniperPrimary_SecTraceDist;
    class'UTComp_SniperFire'.default.HeadshotDamageMult = SniperPrimary_HeadshotDamageMult;

    class'UTComp_SniperRifle'.default.PutDownTime = SniperRifle_PutDownTime;
    class'UTComp_SniperRifle'.default.BringUpTime = SniperRifle_BringUpTime;
    class'UTComp_SniperRifle'.default.MinReloadPct = SniperRifle_MinReloadPct;

    class'UTComp_SniperRifle'.default.PutDownAnimRate = class'UTComp_SniperRifle'.default.PutDownAnimRate / (SniperRifle_PutDownTime / default.SniperRifle_PutDownTime);
    class'UTComp_SniperRifle'.default.SelectAnimRate = class'UTComp_SniperRifle'.default.SelectAnimRate / (SniperRifle_BringUpTime / default.SniperRifle_BringUpTime);

    //newnet
    class'NewNet_SniperFire'.default.AmmoPerFire = SniperPrimary_AmmoPerFire;
    class'NewNet_SniperFire'.default.DamageMin = SniperPrimary_DamageMin;
    class'NewNet_SniperFire'.default.DamageMax = SniperPrimary_DamageMax;
    class'NewNet_SniperFire'.default.TraceRange = SniperPrimary_TraceRange;
    class'NewNet_SniperFire'.default.FireRate = SniperPrimary_FireRate;
    class'NewNet_SniperFire'.default.NumArcs = SniperPrimary_NumArcs;
    class'NewNet_SniperFire'.default.SecDamageMult = SniperPrimary_SecDamageMult;
    class'NewNet_SniperFire'.default.SecTraceDist = SniperPrimary_SecTraceDist;
    class'NewNet_SniperFire'.default.HeadshotDamageMult = SniperPrimary_HeadshotDamageMult;

    class'NewNet_SniperRifle'.default.PutDownTime = SniperRifle_PutDownTime;
    class'NewNet_SniperRifle'.default.BringUpTime = SniperRifle_BringUpTime;
    class'NewNet_SniperRifle'.default.MinReloadPct = SniperRifle_MinReloadPct;

    class'NewNet_SniperRifle'.default.PutDownAnimRate = class'NewNet_SniperRifle'.default.PutDownAnimRate / (SniperRifle_PutDownTime / default.SniperRifle_PutDownTime);
    class'NewNet_SniperRifle'.default.SelectAnimRate = class'NewNet_SniperRifle'.default.SelectAnimRate / (SniperRifle_BringUpTime / default.SniperRifle_BringUpTime);
}

defaultproperties
{
    bModifySniperRifle=false
    SniperRifle_BringUpTime=0.36
    SniperRifle_PutDownTime=0.33
    SniperRifle_MinReloadPct=0.25
    SniperPrimary_AmmoPerFire=1
    SniperPrimary_DamageMin=70
    SniperPrimary_DamageMax=70
    SniperPrimary_TraceRange=17000
    SniperPrimary_FireRate=1.6
    SniperPrimary_NumArcs=3
    SniperPrimary_SecDamageMult=0.5
    SniperPrimary_SecTraceDist=300
    SniperPrimary_HeadshotDamageMult=2.0
}