class LinkConfigInfo extends ReplicationInfo;

var bool bModifyLinkGun;
var int LinkPrimary_AmmoPerFire;
var float LinkPrimary_FireRate;
var float LinkProj_Damage;
var float LinkProj_DamageRadius;
var float LinkProj_Speed;
var float LinkProj_MaxSpeed;
var float LinkProj_MomentumTransfer;
var float LinkProj_LifeSpan;
var float LinkProj_CullDistance;
var int LinkSecondary_TraceRange;
var float LinkSecondary_MomentumTransfer;
var int LinkSecondary_AmmoPerFire;
var int LinkSecondary_Damage;
var float LinkSecondary_FireRate;
var float LinkSecondary_LinkFlexibility;
var float LinkSecondary_LinkBreakDelay;
var float LinkGun_PutDownTime;
var float LinkGun_BringUpTime;
var float LinkGun_MinReloadPct;

replication
{
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifyLinkGun,
        LinkPrimary_AmmoPerFire, LinkPrimary_FireRate, LinkProj_Damage, LinkProj_DamageRadius,
        LinkProj_Speed, LinkProj_MaxSpeed, LinkProj_MomentumTransfer, LinkProj_LifeSpan,
        LinkProj_CullDistance, LinkSecondary_TraceRange, LinkSecondary_MomentumTransfer, LinkSecondary_AmmoPerFire,
        LinkSecondary_Damage, LinkSecondary_FireRate, LinkSecondary_LinkFlexibility, LinkSecondary_LinkBreakDelay,
        LinkGun_PutDownTime, LinkGun_BringUpTime, LinkGun_MinReloadPct;
}

function LoadFrom(MutWeaponConfig config)
{
    bModifyLinkGun = config.bModifyLinkGun;
    LinkPrimary_AmmoPerFire = config.LinkPrimary_AmmoPerFire;
    LinkPrimary_FireRate = config.LinkPrimary_FireRate;
    LinkProj_Damage = config.LinkProj_Damage;
    LinkProj_DamageRadius = config.LinkProj_DamageRadius;
    LinkProj_Speed = config.LinkProj_Speed;
    LinkProj_MaxSpeed = config.LinkProj_MaxSpeed;
    LinkProj_MomentumTransfer = config.LinkProj_MomentumTransfer;
    LinkProj_LifeSpan = config.LinkProj_LifeSpan;
    LinkProj_CullDistance = config.LinkProj_CullDistance;
    LinkSecondary_TraceRange = config.LinkSecondary_TraceRange;
    LinkSecondary_MomentumTransfer = config.LinkSecondary_MomentumTransfer;
    LinkSecondary_AmmoPerFire = config.LinkSecondary_AmmoPerFire;
    LinkSecondary_Damage = config.LinkSecondary_Damage;
    LinkSecondary_FireRate = config.LinkSecondary_FireRate;
    LinkSecondary_LinkFlexibility = config.LinkSecondary_LinkFlexibility;
    LinkSecondary_LinkBreakDelay = config.LinkSecondary_LinkBreakDelay;
    LinkGun_PutDownTime = config.LinkGun_PutDownTime;
    LinkGun_BringUpTime = config.LinkGun_BringUpTime;
    LinkGun_MinReloadPct = config.LinkGun_MinReloadPct;
}

simulated function PostNetBeginPlay()
{
    super.PostNetBeginPlay();
    // Apply on the client when our own replicated data has arrived. The parent
    // WeaponConfigInfo.PostNetBeginPlay can fire before this sub-object's reference
    // replicates, so self-applying here is what actually configures the client.
    if(Role < ROLE_Authority)
        Modify();
}

simulated function Modify()
{
    if(!bModifyLinkGun)
        return;

    // stock
    class'LinkAltFire'.default.AmmoPerFire = LinkPrimary_AmmoPerFire;
    class'LinkAltFire'.default.FireRate = LinkPrimary_FireRate;
    class'LinkProjectile'.default.Damage = LinkProj_Damage;
    class'LinkProjectile'.default.DamageRadius = LinkProj_DamageRadius;
    class'LinkProjectile'.default.Speed = LinkProj_Speed;
    class'LinkProjectile'.default.MaxSpeed = LinkProj_MaxSpeed;
    class'LinkProjectile'.default.MomentumTransfer = LinkProj_MomentumTransfer;
    class'LinkProjectile'.default.LifeSpan = LinkProj_LifeSpan;
    class'LinkProjectile'.default.CullDistance = LinkProj_CullDistance;
    class'LinkFire'.default.TraceRange = LinkSecondary_TraceRange;
    class'LinkFire'.default.MomentumTransfer = LinkSecondary_MomentumTransfer;
    class'LinkFire'.default.AmmoPerFire = LinkSecondary_AmmoPerFire;
    class'LinkFire'.default.Damage = LinkSecondary_Damage;
    class'LinkFire'.default.FireRate = LinkSecondary_FireRate;
    class'LinkFire'.default.LinkFlexibility = LinkSecondary_LinkFlexibility;
    class'LinkFire'.default.LinkBreakDelay = LinkSecondary_LinkBreakDelay;
    class'LinkGun'.default.PutDownTime = LinkGun_PutDownTime;
    class'LinkGun'.default.BringUpTime = LinkGun_BringUpTime;
    class'LinkGun'.default.MinReloadPct = LinkGun_MinReloadPct;

    class'LinkGun'.default.PutDownAnimRate = class'LinkGun'.default.PutDownAnimRate / (LinkGun_PutDownTime / default.LinkGun_PutDownTime);
    class'LinkGun'.default.SelectAnimRate = class'LinkGun'.default.SelectAnimRate / (LinkGun_BringUpTime / default.LinkGun_BringUpTime);

    // utcomp
    class'UTComp_LinkAltFire'.default.AmmoPerFire = LinkPrimary_AmmoPerFire;
    class'UTComp_LinkAltFire'.default.FireRate = LinkPrimary_FireRate;
    class'UTComp_LinkFire'.default.TraceRange = LinkSecondary_TraceRange;
    class'UTComp_LinkFire'.default.MomentumTransfer = LinkSecondary_MomentumTransfer;
    class'UTComp_LinkFire'.default.AmmoPerFire = LinkSecondary_AmmoPerFire;
    class'UTComp_LinkFire'.default.Damage = LinkSecondary_Damage;
    class'UTComp_LinkFire'.default.FireRate = LinkSecondary_FireRate;
    class'UTComp_LinkFire'.default.LinkFlexibility = LinkSecondary_LinkFlexibility;
    class'UTComp_LinkFire'.default.LinkBreakDelay = LinkSecondary_LinkBreakDelay;
    class'UTComp_LinkGun'.default.PutDownTime = LinkGun_PutDownTime;
    class'UTComp_LinkGun'.default.BringUpTime = LinkGun_BringUpTime;
    class'UTComp_LinkGun'.default.MinReloadPct = LinkGun_MinReloadPct;

    class'UTComp_LinkGun'.default.PutDownAnimRate = class'LinkGun'.default.PutDownAnimRate / (LinkGun_PutDownTime / default.LinkGun_PutDownTime);
    class'UTComp_LinkGun'.default.SelectAnimRate = class'LinkGun'.default.SelectAnimRate / (LinkGun_BringUpTime / default.LinkGun_BringUpTime);

    // newnet
    class'NewNet_LinkAltFire'.default.AmmoPerFire = LinkPrimary_AmmoPerFire;
    class'NewNet_LinkAltFire'.default.FireRate = LinkPrimary_FireRate;
    class'NewNet_LinkFire'.default.TraceRange = LinkSecondary_TraceRange;
    class'NewNet_LinkFire'.default.MomentumTransfer = LinkSecondary_MomentumTransfer;
    class'NewNet_LinkFire'.default.AmmoPerFire = LinkSecondary_AmmoPerFire;
    class'NewNet_LinkFire'.default.Damage = LinkSecondary_Damage;
    class'NewNet_LinkFire'.default.FireRate = LinkSecondary_FireRate;
    class'NewNet_LinkFire'.default.LinkFlexibility = LinkSecondary_LinkFlexibility;
    class'NewNet_LinkFire'.default.LinkBreakDelay = LinkSecondary_LinkBreakDelay;
    class'NewNet_LinkGun'.default.PutDownTime = LinkGun_PutDownTime;
    class'NewNet_LinkGun'.default.BringUpTime = LinkGun_BringUpTime;
    class'NewNet_LinkGun'.default.MinReloadPct = LinkGun_MinReloadPct;
    class'NewNet_LinkProjectile'.default.Damage = LinkProj_Damage;
    class'NewNet_LinkProjectile'.default.DamageRadius = LinkProj_DamageRadius;
    class'NewNet_LinkProjectile'.default.Speed = LinkProj_Speed;
    class'NewNet_LinkProjectile'.default.MaxSpeed = LinkProj_MaxSpeed;
    class'NewNet_LinkProjectile'.default.MomentumTransfer = LinkProj_MomentumTransfer;
    class'NewNet_LinkProjectile'.default.LifeSpan = LinkProj_LifeSpan;
    class'NewNet_LinkProjectile'.default.CullDistance = LinkProj_CullDistance;

    class'NewNet_LinkGun'.default.PutDownAnimRate = class'LinkGun'.default.PutDownAnimRate / (LinkGun_PutDownTime / default.LinkGun_PutDownTime);
    class'NewNet_LinkGun'.default.SelectAnimRate = class'LinkGun'.default.SelectAnimRate / (LinkGun_BringUpTime / default.LinkGun_BringUpTime);
}

defaultproperties
{
    bModifyLinkGun=false
    LinkPrimary_AmmoPerFire=2
    LinkPrimary_FireRate=0.2
    LinkProj_Damage=30
    LinkProj_DamageRadius=0.0
    LinkProj_Speed=1000.0
    LinkProj_MaxSpeed=4000.0
    LinkProj_MomentumTransfer=0
    LinkProj_LifeSpan=3
    LinkProj_CullDistance=+3500.0
    LinkSecondary_TraceRange=1100.0
    LinkSecondary_MomentumTransfer=2000.0
    LinkSecondary_AmmoPerFire=1
    LinkSecondary_Damage=9
    LinkSecondary_FireRate=0.12
    LinkSecondary_LinkFlexibility=0.64
    LinkSecondary_LinkBreakDelay=0.5
    LinkGun_PutDownTime=0.33
    LinkGun_BringUpTime=0.33
    LinkGun_MinReloadPct=0.5    
}
