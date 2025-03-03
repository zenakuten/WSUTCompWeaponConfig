class BioConfigInfo extends ReplicationInfo;

var bool bModifyBioRifle;
var float BioPrimary_FireRate;
var float BioPrimary_AmmoPerFire;
var float BioSecondary_FireRate;
var float BioSecondary_GoopUpRate;
var float BioSecondary_MaxGoopLoad;
var int Bio_ProjBaseDamage;
var float Bio_ProjGloblingSpeed;
var float Bio_ProjRestTime;
var float Bio_ProjTouchDetinationDelay;
var float Bio_ProjDripTime;
var int Bio_ProjMaxGoopLevel;
var bool Bio_ProjMergeGlobs;

var float BioRifle_PutDownTime;
var float BioRifle_BringUpTime;
var float BioRifle_MinReloadPct;

replication
{
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifyBioRifle, 
        BioPrimary_FireRate, BioPrimary_AmmoPerFire, BioSecondary_FireRate, BioSecondary_GoopUpRate,
        BioSecondary_MaxGoopLoad, Bio_ProjBaseDamage, Bio_ProjGloblingSpeed,
        Bio_ProjRestTime, Bio_ProjTouchDetinationDelay, Bio_ProjDripTime, Bio_ProjMaxGoopLevel, Bio_ProjMergeGlobs,
        BioRifle_BringUpTime, BioRifle_PutDownTime, BioRifle_MinReloadPct;
}

defaultproperties
{
    bModifyBioRifle=false
    BioRifle_BringUpTime=0.33
    BioRifle_PutDownTime=0.33
    BioRifle_MinReloadPct=0.5
    BioPrimary_FireRate=0.33
    BioPrimary_AmmoPerFire=1
    BioSecondary_FireRate=0.33
    BioSecondary_GoopUpRate=0.25
    BioSecondary_MaxGoopLoad=10
    Bio_ProjBaseDamage=20.0
    Bio_ProjGloblingSpeed=200.0
    Bio_ProjRestTime=2.25
    Bio_ProjTouchDetinationDelay=0.15
    Bio_ProjDripTime=1.8
    Bio_ProjMaxGoopLevel=5
    Bio_ProjMergeGlobs=true

}