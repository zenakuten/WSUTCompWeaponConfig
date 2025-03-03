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

function LoadFrom(MutWeaponConfig config)
{
    bModifyBioRifle = config.bModifyBioRifle;
    BioPrimary_FireRate = config.BioPrimary_FireRate;
    BioPrimary_AmmoPerFire = config.BioPrimary_AmmoPerFire;
    BioSecondary_FireRate = config.BioSecondary_FireRate;
    BioSecondary_GoopUpRate = config.BioSecondary_GoopUpRate;
    BioSecondary_MaxGoopLoad = config.BioSecondary_MaxGoopLoad;
    Bio_ProjBaseDamage = config.Bio_ProjBaseDamage;
    Bio_ProjGloblingSpeed = config.Bio_ProjGloblingSpeed;
    Bio_ProjRestTime = config.Bio_ProjRestTime;
    Bio_ProjTouchDetinationDelay = config.Bio_ProjTouchDetinationDelay;
    Bio_ProjDripTime = config.Bio_ProjDripTime;
    Bio_ProjMaxGoopLevel = config.Bio_ProjMaxGoopLevel;
    Bio_ProjMergeGlobs = config.Bio_ProjMergeGlobs;
    BioRifle_PutDownTime = config.BioRifle_PutDownTime;
    BioRifle_BringUpTime = config.BioRifle_BringUpTime;
    BioRifle_MinReloadPct = config.BioRifle_MinReloadPct;
}

simulated function Modify()
{
    if(!bModifyBioRifle)
        return;

    // stock
    class'BioFire'.default.FireRate = BioPrimary_FireRate;
    class'BioFire'.default.AmmoPerFire = BioPrimary_AmmoPerFire;
    class'BioChargedFire'.default.FireRate = BioSecondary_FireRate;
    class'BioChargedFire'.default.GoopUpRate = BioSecondary_GoopUpRate;
    class'BioChargedFire'.default.MaxGoopLoad = BioSecondary_MaxGoopLoad;
    class'BioGlob'.default.BaseDamage = Bio_ProjBaseDamage;
    class'BioGlob'.default.GloblingSpeed = Bio_ProjGloblingSpeed;
    class'BioGlob'.default.RestTime = Bio_ProjRestTime;
    class'BioGlob'.default.TouchDetonationDelay = Bio_ProjTouchDetinationDelay;
    class'BioGlob'.default.DripTime = Bio_ProjDripTime;
    class'BioGlob'.default.MaxGoopLevel = Bio_ProjMaxGoopLevel;
    class'BioGlob'.default.bMergeGlobs = Bio_ProjMergeGlobs;

    class'BioRifle'.default.PutDownTime = BioRifle_PutDownTime;
    class'BioRifle'.default.BringUpTime = BioRifle_BringUpTime;
    class'BioRifle'.default.MinReloadPct = BioRifle_MinReloadPct;

    class'BioRifle'.default.PutDownAnimRate = class'BioRifle'.default.PutDownAnimRate / (BioRifle_PutDownTime / default.BioRifle_PutDownTime);
    class'BioRifle'.default.SelectAnimRate = class'BioRifle'.default.SelectAnimRate / (BioRifle_BringUpTime / default.BioRifle_BringUpTime);

    // utcomp (no netcode)
    class'UTComp_BioFire'.default.FireRate = BioPrimary_FireRate;
    class'UTComp_BioFire'.default.AmmoPerFire = BioPrimary_AmmoPerFire;
    class'UTComp_BioChargedFire'.default.FireRate = BioSecondary_FireRate;
    class'UTComp_BioChargedFire'.default.GoopUpRate = BioSecondary_GoopUpRate;
    class'UTComp_BioChargedFire'.default.MaxGoopLoad = BioSecondary_MaxGoopLoad;
    class'BioGlob'.default.BaseDamage = Bio_ProjBaseDamage;
    class'BioGlob'.default.GloblingSpeed = Bio_ProjGloblingSpeed;
    class'BioGlob'.default.RestTime = Bio_ProjRestTime;
    class'BioGlob'.default.TouchDetonationDelay = Bio_ProjTouchDetinationDelay;
    class'BioGlob'.default.DripTime = Bio_ProjDripTime;
    class'BioGlob'.default.MaxGoopLevel = Bio_ProjMaxGoopLevel;
    class'BioGlob'.default.bMergeGlobs = Bio_ProjMergeGlobs;

    class'UTComp_BioRifle'.default.PutDownTime = BioRifle_PutDownTime;
    class'UTComp_BioRifle'.default.BringUpTime = BioRifle_BringUpTime;
    class'UTComp_BioRifle'.default.MinReloadPct = BioRifle_MinReloadPct;

    class'UTComp_BioRifle'.default.PutDownAnimRate = class'UTComp_BioRifle'.default.PutDownAnimRate / (BioRifle_PutDownTime / default.BioRifle_PutDownTime);
    class'UTComp_BioRifle'.default.SelectAnimRate = class'UTComp_BioRifle'.default.SelectAnimRate / (BioRifle_BringUpTime / default.BioRifle_BringUpTime);

    // newnet
    class'NewNet_BioFire'.default.FireRate = BioPrimary_FireRate;
    class'NewNet_BioFire'.default.AmmoPerFire = BioPrimary_AmmoPerFire;
    class'NewNet_BioChargedFire'.default.FireRate = BioSecondary_FireRate;
    class'NewNet_BioChargedFire'.default.GoopUpRate = BioSecondary_GoopUpRate;
    class'NewNet_BioChargedFire'.default.MaxGoopLoad = BioSecondary_MaxGoopLoad;
    class'NewNet_BioGlob'.default.BaseDamage = Bio_ProjBaseDamage;
    class'NewNet_BioGlob'.default.GloblingSpeed = Bio_ProjGloblingSpeed;
    class'NewNet_BioGlob'.default.RestTime = Bio_ProjRestTime;
    class'NewNet_BioGlob'.default.TouchDetonationDelay = Bio_ProjTouchDetinationDelay;
    class'NewNet_BioGlob'.default.DripTime = Bio_ProjDripTime;
    class'NewNet_BioGlob'.default.MaxGoopLevel = Bio_ProjMaxGoopLevel;
    class'NewNet_BioGlob'.default.bMergeGlobs = Bio_ProjMergeGlobs;

    class'NewNet_BioRifle'.default.PutDownTime = BioRifle_PutDownTime;
    class'NewNet_BioRifle'.default.BringUpTime = BioRifle_BringUpTime;
    class'NewNet_BioRifle'.default.MinReloadPct = BioRifle_MinReloadPct;

    class'NewNet_BioRifle'.default.PutDownAnimRate = class'NewNet_BioRifle'.default.PutDownAnimRate / (BioRifle_PutDownTime / default.BioRifle_PutDownTime);
    class'NewNet_BioRifle'.default.SelectAnimRate = class'NewNet_BioRifle'.default.SelectAnimRate / (BioRifle_BringUpTime / default.BioRifle_BringUpTime);
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