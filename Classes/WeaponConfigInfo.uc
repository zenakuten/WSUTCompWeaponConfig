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

replication
{
    reliable if(Role == ROLE_Authority && bNetDirty)
        ShieldConfig, AssaultConfig, BioConfig, ShockConfig, LinkConfig, 
        MiniConfig, FlakConfig, RocketConfig, SniperConfig, ClassicSniperConfig;
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

    super.Destroyed();
}

defaultproperties
{
}