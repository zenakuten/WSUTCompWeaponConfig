class LinkConfigInfo extends WeaponConfigSubInfo;

var int LinkPrimary_AmmoPerFire;
var float LinkPrimary_FireRate;
var float LinkProj_Damage;
var float LinkProj_DamageRadius;
var float LinkProj_Speed;
var float LinkProj_MaxSpeed;
var float LinkProj_MomentumTransfer;
var float LinkProj_LifeSpan;
var float LinkProj_CullDistance;
var float LinkSecondary_TraceRange;
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
        LinkPrimary_AmmoPerFire, LinkPrimary_FireRate, LinkProj_Damage, LinkProj_DamageRadius,
        LinkProj_Speed, LinkProj_MaxSpeed, LinkProj_MomentumTransfer, LinkProj_LifeSpan,
        LinkProj_CullDistance, LinkSecondary_TraceRange, LinkSecondary_MomentumTransfer, LinkSecondary_AmmoPerFire,
        LinkSecondary_Damage, LinkSecondary_FireRate, LinkSecondary_LinkFlexibility, LinkSecondary_LinkBreakDelay,
        LinkGun_PutDownTime, LinkGun_BringUpTime, LinkGun_MinReloadPct;
}

function LoadFrom(MutWeaponConfig config)
{
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

simulated function Modify()
{
    // stock
    class'LinkAltFire'.default.AmmoPerFire = LinkPrimary_AmmoPerFire;
    class'LinkAltFire'.default.FireRate = LinkPrimary_FireRate;
    class'LinkFire'.default.TraceRange = LinkSecondary_TraceRange;
    class'LinkFire'.default.MomentumTransfer = LinkSecondary_MomentumTransfer;
    class'LinkFire'.default.AmmoPerFire = LinkSecondary_AmmoPerFire;
    class'LinkFire'.default.Damage = LinkSecondary_Damage;
    class'LinkFire'.default.FireRate = LinkSecondary_FireRate;
    class'LinkFire'.default.LinkFlexibility = LinkSecondary_LinkFlexibility;
    class'LinkFire'.default.LinkBreakDelay = LinkSecondary_LinkBreakDelay;
    SetSwitchTimes(class'LinkGun', LinkGun_PutDownTime, LinkGun_BringUpTime);
    class'LinkGun'.default.MinReloadPct = LinkGun_MinReloadPct;

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
    SetSwitchTimes(class'UTComp_LinkGun', LinkGun_PutDownTime, LinkGun_BringUpTime);
    class'UTComp_LinkGun'.default.MinReloadPct = LinkGun_MinReloadPct;

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
    SetSwitchTimes(class'NewNet_LinkGun', LinkGun_PutDownTime, LinkGun_BringUpTime);
    class'NewNet_LinkGun'.default.MinReloadPct = LinkGun_MinReloadPct;

    // stock and utcomp fire LinkProjectile, newnet fires NewNet_LinkProjectile and predicts
    // it client side with NewNet_Fake_LinkProjectile, which must fly like the real one
    ApplyLinkProj(class'LinkProjectile');
    ApplyLinkProj(class'NewNet_LinkProjectile');
    ApplyLinkProj(class'NewNet_Fake_LinkProjectile');
}

simulated final function ApplyLinkProj(class<LinkProjectile> P)
{
    P.default.Damage = LinkProj_Damage;
    P.default.DamageRadius = LinkProj_DamageRadius;
    P.default.Speed = LinkProj_Speed;
    P.default.MaxSpeed = LinkProj_MaxSpeed;
    P.default.MomentumTransfer = LinkProj_MomentumTransfer;
    P.default.LifeSpan = LinkProj_LifeSpan;
    P.default.CullDistance = LinkProj_CullDistance;
}

defaultproperties
{
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
