class WeaponConfigInfo extends LinkedReplicationInfo;

var ShieldConfigInfo ShieldConfig;
var AssaultConfigInfo AssaultConfig;
var BioConfigInfo BioConfig;
var ShockConfigInfo ShockConfig;
var LinkConfigInfo LinkConfig;
var SniperConfigInfo SniperConfig;

replication
{
    reliable if(Role == ROLE_Authority && bNetDirty)
        ShieldConfig, AssaultConfig, BioConfig, ShockConfig, LinkConfig, SniperConfig;
}

function PostBeginPlay()
{
    super.PostBeginPlay();
    ShieldConfig = spawn(class'ShieldConfigInfo', self.Owner);
    AssaultConfig = spawn(class'AssaultConfigInfo', self.Owner);
    BioConfig = spawn(class'BioConfigInfo', self.Owner);
    ShockConfig = spawn(class'ShockConfigInfo', self.Owner);
    LinkConfig = spawn(class'LinkConfigInfo', self.Owner);
    SniperConfig = spawn(class'SniperConfigInfo', self.Owner);
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
    SniperConfig.LoadFrom(config);
}

simulated function Modify()
{
    ShieldConfig.Modify();
    AssaultConfig.Modify();
    BioConfig.Modify();
    ShockConfig.Modify();
    LinkConfig.Modify();
    SniperConfig.Modify();
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
    if(SniperConfig != None)
        SniperConfig.Destroy();

    super.Destroyed();
}

defaultproperties
{
}