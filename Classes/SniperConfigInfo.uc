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