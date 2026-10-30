class BioConfigInfo extends WeaponConfigSubInfo;

var float BioPrimary_FireRate;
var int BioPrimary_AmmoPerFire;
var float BioSecondary_FireRate;
var float BioSecondary_GoopUpRate;
var int BioSecondary_MaxGoopLoad;
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
        BioPrimary_FireRate, BioPrimary_AmmoPerFire, BioSecondary_FireRate, BioSecondary_GoopUpRate,
        BioSecondary_MaxGoopLoad, Bio_ProjBaseDamage, Bio_ProjGloblingSpeed,
        Bio_ProjRestTime, Bio_ProjTouchDetinationDelay, Bio_ProjDripTime, Bio_ProjMaxGoopLevel, Bio_ProjMergeGlobs,
        BioRifle_BringUpTime, BioRifle_PutDownTime, BioRifle_MinReloadPct;
}

function LoadFrom(MutWeaponConfig config)
{
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
    // stock
    class'BioFire'.default.FireRate = BioPrimary_FireRate;
    class'BioFire'.default.AmmoPerFire = BioPrimary_AmmoPerFire;
    class'BioChargedFire'.default.FireRate = BioSecondary_FireRate;
    class'BioChargedFire'.default.GoopUpRate = BioSecondary_GoopUpRate;
    class'BioChargedFire'.default.MaxGoopLoad = BioSecondary_MaxGoopLoad;
    SetSwitchTimes(class'BioRifle', BioRifle_PutDownTime, BioRifle_BringUpTime);
    class'BioRifle'.default.MinReloadPct = BioRifle_MinReloadPct;

    // utcomp (no netcode)
    class'UTComp_BioFire'.default.FireRate = BioPrimary_FireRate;
    class'UTComp_BioFire'.default.AmmoPerFire = BioPrimary_AmmoPerFire;
    class'UTComp_BioChargedFire'.default.FireRate = BioSecondary_FireRate;
    class'UTComp_BioChargedFire'.default.GoopUpRate = BioSecondary_GoopUpRate;
    class'UTComp_BioChargedFire'.default.MaxGoopLoad = BioSecondary_MaxGoopLoad;
    SetSwitchTimes(class'UTComp_BioRifle', BioRifle_PutDownTime, BioRifle_BringUpTime);
    class'UTComp_BioRifle'.default.MinReloadPct = BioRifle_MinReloadPct;

    // newnet
    class'NewNet_BioFire'.default.FireRate = BioPrimary_FireRate;
    class'NewNet_BioFire'.default.AmmoPerFire = BioPrimary_AmmoPerFire;
    class'NewNet_BioChargedFire'.default.FireRate = BioSecondary_FireRate;
    class'NewNet_BioChargedFire'.default.GoopUpRate = BioSecondary_GoopUpRate;
    class'NewNet_BioChargedFire'.default.MaxGoopLoad = BioSecondary_MaxGoopLoad;
    SetSwitchTimes(class'NewNet_BioRifle', BioRifle_PutDownTime, BioRifle_BringUpTime);
    class'NewNet_BioRifle'.default.MinReloadPct = BioRifle_MinReloadPct;

    // stock fire spawns BioGlob, utcomp fire and newnet alt fire spawn TeamColorBioGlob,
    // newnet primary spawns NewNet_BioGlob plus the client-side NewNet_Fake_BioGlob
    ApplyGlob(class'BioGlob');
    ApplyGlob(class'TeamColorBioGlob');
    ApplyGlob(class'NewNet_BioGlob');
    ApplyGlob(class'NewNet_Fake_BioGlob');
}

simulated final function ApplyGlob(class<BioGlob> G)
{
    G.default.BaseDamage = Bio_ProjBaseDamage;
    G.default.GloblingSpeed = Bio_ProjGloblingSpeed;
    G.default.RestTime = Bio_ProjRestTime;
    G.default.TouchDetonationDelay = Bio_ProjTouchDetinationDelay;
    G.default.DripTime = Bio_ProjDripTime;
    G.default.MaxGoopLevel = Bio_ProjMaxGoopLevel;
    G.default.bMergeGlobs = Bio_ProjMergeGlobs;
}

defaultproperties
{
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