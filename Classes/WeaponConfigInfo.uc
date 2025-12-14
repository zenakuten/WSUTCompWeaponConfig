class WeaponConfigInfo extends LinkedReplicationInfo;

var ShieldConfigInfo ShieldConfig;
var AssaultConfigInfo AssaultConfig;
var BioConfigInfo BioConfig;
var ShockConfigInfo ShockConfig;
var LinkConfigInfo LinkConfig;
var MiniConfigInfo MiniConfig;
var FlakConfigInfo FlakConfig;
var RocketConfigInfo RocketConfig;
var SniperConfigInfo SniperConfig;
var ClassicSniperConfigInfo ClassicSniperConfig;
var SuperShockConfigInfo SuperShockConfig;
var ONSGrenadeConfigInfo ONSGrenadeConfig;
var ONSAvrilConfigInfo ONSAvrilConfig;
var ONSMineLayerConfigInfo ONSMineLayerConfig;

replication
{
    reliable if(Role == ROLE_Authority && bNetInitial)
        ShieldConfig, AssaultConfig, BioConfig, ShockConfig, LinkConfig, 
        MiniConfig, FlakConfig, RocketConfig, SniperConfig, ClassicSniperConfig, 
        SuperShockConfig, ONSGrenadeConfig, ONSAvrilConfig, ONSMineLayerConfig;
}

simulated function PostNetBeginPlay()
{
    super.PostNetBeginPlay();
    if(Role < ROLE_Authority)
        Modify();

    bTearOff=true;
}

function LoadFrom(MutWeaponConfig config)
{
    if(config.bModifyShieldGun)
    {
        ShieldConfig = spawn(class'ShieldConfigInfo', self.Owner);
        ShieldConfig.LoadFrom(config);
    }
    if(config.bModifyAssaultRifle || config.bModifyAssaultAmmo)
    {
        AssaultConfig = spawn(class'AssaultConfigInfo', self.Owner);
        AssaultConfig.LoadFrom(config);
    }
    if(config.bModifyBioRifle)
    {
        BioConfig = spawn(class'BioConfigInfo', self.Owner);
        BioConfig.LoadFrom(config);
    }
    if(config.bModifyShockRifle)
    {
        ShockConfig = spawn(class'ShockConfigInfo', self.Owner);
        ShockConfig.LoadFrom(config);
    }
    if(config.bModifyLinkGun)
    {
        LinkConfig = spawn(class'LinkConfigInfo', self.Owner);
        LinkConfig.LoadFrom(config);
    }
    if(config.bModifyMinigun)
    {
        MiniConfig = spawn(class'MiniConfigInfo', self.Owner);
        MiniConfig.LoadFrom(config);
    }
    if(config.bModifyFlakCannon)
    {
        FlakConfig = spawn(class'FlakConfigInfo', self.Owner);
        FlakConfig.LoadFrom(config);
    }
    if(config.bModifyRocketLauncher)
    {
        RocketConfig = spawn(class'RocketConfigInfo', self.Owner);
        RocketConfig.LoadFrom(config);
    }
    if(config.bModifySniperRifle)
    {
        SniperConfig = spawn(class'SniperConfigInfo', self.Owner);
        SniperConfig.LoadFrom(config);
    }
    if(config.bModifyClassicSniperRifle)
    {
        ClassicSniperConfig = spawn(class'ClassicSniperConfigInfo', self.Owner);
        ClassicSniperConfig.LoadFrom(config);
    }
    if(config.bModifySuperShockRifle)
    {
        SuperShockConfig = spawn(class'SuperShockConfigInfo', self.Owner);
        SuperShockConfig.LoadFrom(config);
    }
    if(config.bModifyONSGrenadeLauncher)
    {
        ONSGrenadeConfig = spawn(class'ONSGrenadeConfigInfo', self.Owner);
        ONSGrenadeConfig.LoadFrom(config);
    }
    if(config.bModifyONSAvril)
    {
        ONSAvrilConfig = spawn(class'ONSAvrilConfigInfo', self.Owner);
        ONSAvrilConfig.LoadFrom(config);
    }
    if(config.bModifyONSMineLayer)
    {
        ONSMineLayerConfig = spawn(class'ONSMineLayerConfigInfo', self.Owner);
        ONSMineLayerConfig.LoadFrom(config);
    }
}

simulated function Modify()
{
    if(ShieldConfig != None)
        ShieldConfig.Modify();
    if(AssaultConfig != None)
        AssaultConfig.Modify();
    if(BioConfig != None)
        BioConfig.Modify();
    if(ShockConfig != None)
        ShockConfig.Modify();
    if(LinkConfig != None)
        LinkConfig.Modify();
    if(MiniConfig != None)
        MiniConfig.Modify();
    if(FlakConfig != None)
        FlakConfig.Modify();
    if(RocketConfig != None)
        RocketConfig.Modify();
    if(SniperConfig != None)
        SniperConfig.Modify();
    if(ClassicSniperConfig != None)
        ClassicSniperConfig.Modify();
    if(SuperShockConfig != None)
        SuperShockConfig.Modify();
    if(ONSGrenadeConfig != None)
        ONSGrenadeConfig.Modify();
    if(ONSAvrilConfig != None)
        ONSAvrilConfig.Modify();
    if(ONSMineLayerConfig != None)
        ONSMineLayerConfig.Modify();
}

simulated function Destroyed()
{
    if(ShieldConfig != None)
        ShieldConfig.Destroy();
    if(AssaultConfig != None)
        AssaultConfig.Destroy();
    if(BioConfig != None)
        BioConfig.Destroy();
    if(ShockConfig != None)
        ShockConfig.Destroy();
    if(LinkConfig != None)
        LinkConfig.Destroy();
    if(MiniConfig != None)
        MiniConfig.Destroy();
    if(FlakConfig != None)
        FlakConfig.Destroy();
    if(RocketConfig != None)
        RocketConfig.Destroy();
    if(SniperConfig != None)
        SniperConfig.Destroy();
    if(ClassicSniperConfig != None)
        ClassicSniperConfig.Destroy();
    if(SuperShockConfig != None)
        SuperShockConfig.Destroy();
    if(ONSGrenadeConfig != None)
        ONSGrenadeConfig.Destroy();
    if(ONSAvrilConfig != None)
        ONSAvrilConfig.Destroy();
    if(ONSMineLayerConfig != None)
        ONSMineLayerConfig.Destroy();

    super.Destroyed();
}

defaultproperties
{
}