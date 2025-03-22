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
    reliable if(Role == ROLE_Authority && bNetDirty)
        ShieldConfig, AssaultConfig, BioConfig, ShockConfig, LinkConfig, 
        MiniConfig, FlakConfig, RocketConfig, SniperConfig, ClassicSniperConfig, 
        SuperShockConfig, ONSGrenadeConfig, ONSAvrilConfig, ONSMineLayerConfig;
}

function PostBeginPlay()
{
    super.PostBeginPlay();
    ShieldConfig = spawn(class'ShieldConfigInfo', self.Owner);
    AssaultConfig = spawn(class'AssaultConfigInfo', self.Owner);
    BioConfig = spawn(class'BioConfigInfo', self.Owner);
    ShockConfig = spawn(class'ShockConfigInfo', self.Owner);
    LinkConfig = spawn(class'LinkConfigInfo', self.Owner);
    MiniConfig = spawn(class'MiniConfigInfo', self.Owner);
    FlakConfig = spawn(class'FlakConfigInfo', self.Owner);
    RocketConfig = spawn(class'RocketConfigInfo', self.Owner);
    SniperConfig = spawn(class'SniperConfigInfo', self.Owner);
    ClassicSniperConfig = spawn(class'ClassicSniperConfigInfo', self.Owner);
    SuperShockConfig = spawn(class'SuperShockConfigInfo', self.Owner);
    ONSGrenadeConfig = spawn(class'ONSGrenadeConfigInfo', self.Owner);
    ONSAvrilConfig = spawn(class'ONSAvrilConfigInfo', self.Owner);
    ONSMineLayerConfig = spawn(class'ONSMineLayerConfigInfo', self.Owner);
}

simulated function PostNetBeginPlay()
{
    super.PostNetBeginPlay();
    if(Role < ROLE_Authority)
    {
        Modify();
    }
}

function LoadFrom(MutWeaponConfig config)
{
    ShieldConfig.LoadFrom(config);
    AssaultConfig.LoadFrom(config);
    BioConfig.LoadFrom(config);
    ShockConfig.LoadFrom(config);
    LinkConfig.LoadFrom(config);
    MiniConfig.LoadFrom(config);
    FlakConfig.LoadFrom(config);
    RocketConfig.LoadFrom(config);
    SniperConfig.LoadFrom(config);
    ClassicSniperConfig.LoadFrom(config);
    SuperShockConfig.LoadFrom(config);
    ONSGrenadeConfig.LoadFrom(config);
    ONSAvrilConfig.LoadFrom(config);
    ONSMineLayerConfig.LoadFrom(config);
}

simulated function Modify()
{
    ShieldConfig.Modify();
    AssaultConfig.Modify();
    BioConfig.Modify();
    ShockConfig.Modify();
    LinkConfig.Modify();
    MiniConfig.Modify();
    FlakConfig.Modify();
    RocketConfig.Modify();
    SniperConfig.Modify();
    ClassicSniperConfig.Modify();
    SuperShockConfig.Modify();
    ONSGrenadeConfig.Modify();
    ONSAvrilConfig.Modify();
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