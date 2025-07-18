# WSUTComp Weapon Config

Mutator to allow you to modify all of the weapon parameters of each weapon, like fire rate, damage, etc. 
## Main Menu
![image](pics/MainMenu.png)

The first item `Modify Weapons (false)` must be set `true` for any weapon modifications to take effect.  This is here so you can globally toggle on/off weapon config. In addition to the global toggle, each individual weapon config can be enabled.  Here I am enabling weapon config, and only for the shield gun.   

You can also cause the players to spawn with the weapon by checking the `Give <weapon> to Player` box, and adjust the ammo values.  

For each configured weapon, there is a page to modify values

![image](pics/ShieldGun.png)

## Usage with WS3SPN / TAM

Because WS3SPN also does some weapon modifications, there are some caveats:

* If you use the give weapon feature to give a weapon already given by WS3SPN (e.g. shock), it is unknown which ammo value will take precidence (WS3SPN also configures ammo amounts).
* WS3SPN has an option to "modify the shield gun" which changes the shield jump.  WS3SPN's settings will override the ShieldGun config values SelfForceScale, SelfDamageScale, MinSelfDamage. WS3SPN also has these settings.   


<br />

## List of all Options
## Shield Gun
| Property | Default Value |
|----------|---------------|
| Modify the Shield Gun  | false |
| Shield Gun Put Down Time  | 0.33 |
| Shield Gun Bring Up Time  | 0.33 |
| Shield Gun MinReloadPct  | 0.5 |
| Shield Primary Fire Rate  | 0.6 |
| Shield Primary Ammo Per Fire  | 0 |
| Shield Primary Shield Range  | 112.0 |
| Shield Primary Min Hold Time  | 0.4 |
| Shield Primary Min Force  | 65000.0 |
| Shield Primary Max Force  | 100000.0 |
| Shield Primary Self Force Scale  | 1.0 |
| Shield Primary Self Damage Scale  | 0.3 |
| Shield Primary Min Self Damage  | 8 |
| Shield Primary Auto Fire Test Frequency  | 0.15 |
| Shield Primary Fully Charged Time  | 2.5 |
| Shield Primary Charging Sound Volume  | 200 |
| Shield Secondary Fire Rate  | 1.0 |
| Shield Secondary Ammo Per Fire  | 15 |
| Shield Secondary Ammo Regen Time  | 0.2 |
| Shield Secondary Chargeup Time  | 3.0 |
| Shield Secondary Shield Sound Volume  | 220 |

<br />
<br />
<br />

## Assault Rifle
| Property | Default Value |
|----------|---------------|
| Modify the Assault Rifle  | false |
| Assault Rifle Put Down Time  | 0.33 |
| Assault Rifle Bring Up Time  | 0.33 |
| Assault Rifle MinReloadPct  | 0.5 |
| Assault Rifle Dual Mode  | false |
| Assault Primary Trace Range  | 10000 |
| Assault Primary Momentum  | 0.0 |
| Assault Primary Ammo Per Fire  | 1 |
| Assault Primary Damage Min  | 7 |
| Assault Primary Damage Max  | 7 |
| Assault Primary Fire Rate  | 0.16 |
| Assault Primary Aim Error  | 800 |
| Assault Primary Spread  | 0.02 |
| Assault Secondary Damage Atten  | 1.0 |
| Assault Secondary mScale  | 1.0 |
| Assault Secondary mScaleMultiplier  | 0.9 |
| Assault Secondary mSpeedMin  | 250 |
| Assault Secondary mSpeedMax  | 3000 |
| Assault Secondary mHoldSpeedMin  | 850.0 |
| Assault Secondary mHoldSpeedMax  | 3000.0 |
| Assault Secondary mHoldSpeedGainPerSec  | 750.0 |
| Assault Secondary mWaitTime  | 0.5 |
| Assault Grenade Explode Timer  | 2.0 |
| Assault Grenade Dampen Factor  | 0.5 |
| Assault Grenade Dampen Factor Parallel  | 0.8 |
| Assault Grenade TossZ  | 0.0 |
| Assault Grenade Damage  | 70.0 |
| Assault Grenade Damage Radius  | 220.0 |
| Assault Grenade Momentum Transfer  | 75000.0 |

<br />
<br />
<br />

## Bio Rifle
| Property | Default Value |
|----------|---------------|
| Modify the Bio Rifle  | false | 
| Bio Rifle Put Down Time  | 0.33 |
| Bio Rifle Bring Up Time  | 0.33 |
| Bio Rifle MinReloadPct  | 0.5 |
| Bio Primary Fire Rate  | 0.33 | 
| Bio Primary Ammo Per Fire  | 1 | 
| Bio Secondary Fire Rate   | 0.33 | 
| Bio Secondary Goop Up Rate  | 0.25 | 
| Bio Secondary Max Goop Load  | 10 | 
| Bio Projectile Base Damage  | 20.0 | 
| Bio Projectile Globling Speed  | 200.0 | 
| Bio Projectile Rest Time  | 2.25 | 
| Bio Projectile Touch Detination Delay  | 0.15 | 
| Bio Projectile Drip Time  | 1.8 | 
| Bio Projectile Max Goop Level  | 5 | 
| Bio Projectile Merg Globs  | true | 

<br />
<br />
<br />

## Shock Rifle
| Property | Default Value |
|----------|---------------|
| Modify the Shock Rifle  | false |
| Shock Rifle Put Down Time  | 0.33 |
| Shock Rifle Bring Up Time  | 0.33 |
| Shock Rifle MinReloadPct  | 0.5 |
| Shock primary trace range  | 17000 |
| Shock Primary Momentum  | 60000.0 |
| Shock Primary Ammo Per Fire  | 1 |
| Shock Primary Damage Min  | 45 |
| Shock Primary Damage Max  | 45 |
| Shock Primary Fire Rate  | 0.7 |
| Shock Secondary Ammo Per Fire  | 1 |
| Shock Secondary Fire Rate  | 0.6 |
| Shock Secondary Projectile Speed  | 1150 |
| Shock Secondary Projectile Max Speed  | 1150 |
| Shock Secondary Damage  | 45 |
| Shock Secondary Damage Radius  | 150 |
| Shock Secondary Momentum Transfer  | 70000 |
| Shock Combo Damage  | 200 |
| Shock Combo Damage Radius  | 275 |
| Shock Combo Momentum Transfer  | 150000 |
| Shock Secondary Projectile Lifespan  | 10.0 |
| Shock Combo Ammo Cost  | 3 |
| Shock Projectile Force Scale  | 5.0 |
| Shock Projectile Force Radius  | 40.0 |
| Shock Projectile Sound Radius  | 100 |
| Shock Projectile Sound Volume  | 50 |

<br />
<br />
<br />

## Link Gun
| Property | Default Value |
|----------|---------------|
| Modify the Link Gun  | false |
| Link Primary Ammo Per Fire  | 2 |
| Link Primary Fire Rate  | 0.12 |
| Link Projectile Damage  | 30 |
| Link Projectile Damage Radius  | 0.0 |
| Link Projectile Speed  | 1000.0 |
| Link Projectile Max Speed  | 4000.0 |
| Link Projectile Momentum Transfer  | 0.0 |
| Link Projectile Life Span  | 3.0 |
| Link Projectile Cull Distance  | 3500.0 |
| Link Secondary Trace Range  | 1100.0 |
| Link Secondary Momentum Transfer | 2000.0 |
| Link Secondary Ammo Per Fire  | 1 |
| Link Secondary Damage  | 9 |
| Link Secondary Fire Rate  | 0.2 |
| Link Secondary Link Flexibility  | 0.64 |
| Link Secondary Link Break Delay  | 0.5 |
| Link Gun Put Down Time  | 0.33 |
| Link Gun Bring Up Time  | 0.33 |
| Link Gun MinReloadPct  | 0.5 |

<br />
<br />
<br />

## Minigun
| Property | Default Value |
|----------|---------------|
| Modify the Minigun | false | 
| Minigun Put Down Time | 0.33 | 
| Minigun Bring Up Time | 0.33 | 
| Minigun MinReloadPct | 0.5 | 
| Minigun Primary Damage Min | 7 | 
| Minigun Primary Damage Max | 8 | 
| Minigun Primary Trace Range | 10000.0 | 
| Minigun Primary Momentum | 0.0 | 
| Minigun Primary Ammo Per Fire | 1 | 
| Minigun Primary Rounds Per Rotation | 5 | 
| Minigun Primary Barrel Rotations Per Sec | 3.0 | 
| Minigun Primary Aim Error | 900 | 
| Minigun Primary Spread | 0.08 | 
| Minigun Primary Pre Fire Time | 0.27 | 
| Minigun Primary Windup Time | 0.27 | 
| Minigun Secondary Damage Min | 14 | 
| Minigun Secondary Damage Max | 16 | 
| Minigun Secondary Trace Range | 10000.0 | 
| Minigun Secondary Momentum | 0.0 | 
| Minigun Secondary Ammo Per Fire | 1 | 
| Minigun Secondary Rounds Per Rotation | 5 | 
| Minigun Secondary Barrel Rotations Per Sec | 1.0 | 
| Minigun Secondary Aim Error | 900 | 
| Minigun Secondary Spread | 0.03 | 
| Minigun Secondary Pre Fire Time | 0.15 | 
| Minigun Secondary Windup Time | 0.15 | 

<br />
<br />
<br />

## Flak Cannon
| Property | Default Value |
|----------|---------------|
|Modify the Flak Cannon | false |
|Flak Primary Ammo Per Fire | 1 |
|Flak Primary Fire Rate | 0.95 |
|Flak Primary Projectiles Per Fire | 9 |
|Flak Primary Spread | 1400 |
|Flak Chunk Bounces | 1 |
|Flak Chunk Damage Atten | 0.5 |
|Flak Chunk Speed | 2500 |
|Flak Chunk Max Speed | 2700 |
|Flak Chunk Damage | 13 |
|Flak Chunk Momentum Transfer | 10000.0 |
|Flak Chunk Cull Distance | 3000.0 |
|Flak Chunk Life Span | 2.7 |
|Flak Chunk Bounce | true |
|Flak Secondary Ammo Per Fire | 1 |
|Flak Secondary Fire Rate | 1.11 |
|Flak Secondary Projectiles Per Fire | 1 |
|Flak Secondary Spread | 0 |
|Flak Shell Toss Z | 225.0 |
|Flak Shell Speed | 1200.0 |
|Flak Shell Max Speed | 1200.0 |
|Flak Shell Damage | 90 |
|Flak Shell Damage Radius | 220.0 |
|Flak Shell Momentum Transfer | 75000.0 |
|Flak Shell Cull Distance | 4000.0 |
|Flak Shell Life Span | 6.0 |

<br />
<br />
<br />

## Rocket Launcher
| Property | Default Value |
|----------|---------------|
| Modify the Rocket Launcher | false | 
| Rocket Launcher Put Down Time | 0.33 | 
| Rocket Launcher Bring Up Time | 0.33 | 
| Rocket Launcher MinReloadPct | 0.5 | 
| Rocket Launcher Seek Check Freq | 0.5 | 
| Rocket Launcher Seek Range | 8000.0 | 
| Rocket Launcher Lock Required Time | 1.25 | 
| Rocket Launcher Unlock Required Time | 0.5 | 
| Rocket Launcher Lock Aim | 0.996 | 
| Rocket Primary Fire Rate | 0.9 | 
| Rocket Primary Ammo Per Fire | 1 | 
| Rocket Secondary Fire Rate | 0.95 | 
| Rocket Secondary Ammo Per Fire | 1 | 
| Rocket Secondary Tight Spread | 300.0 | 
| Rocket Secondary Loose Spread | 1000.0 | 
| Rocket Secondary Max Load | 3 | 
| Rocket Secondary Max Hold Time | 2.3 | 
| Rocket Projectile Speed | 1350.0 | 
| Rocket Projectile Max Speed | 1350.0 | 
| Rocket Projectile Damage | 90 | 
| Rocket Projectile Damage Radius | 220.0 | 
| Rocket Projectile Momentum Transfer | 50000.0 | 
| Rocket Projectile Lifespan | 8.0 | 
| Rocket Projectile Flock Radius | 12.0 | 
| Rocket Projectile Flock Stiffness | 40.0 | 
| Rocket Projectile Flock Max Force | 600.0 | 
| Rocket Projectile Flock Curl Force | 450.0 | 

<br />
<br />
<br />

## Lightning Gun
| Property | Default Value |
|----------|---------------|
| Modify the Lightning Gun  | false |
| Lightning Gun Put Down Time  | 0.33 |
| Lightning Gun Bring Up Time  | 0.36 |
| Lightning Gun MinReloadPct  | 0.25 |
| Lightning Gun Ammo Per Fire  | 1 |
| Lightning Gun Damage Min  | 70 |
| Lightning Gun Damage Max  | 70 |
| Lightning Gun Trace Range  | 17000 |
| Lightning Gun Fire Rate  | 1.6 |
| Lightning Gun Num Arcs  | 3 |
| Lightning Gun Arc Damage Multiplier  | 0.5 |
| Lightning Gun Arc Trace Distance  | 300 |
| Lightning Gun Headshot Multiplier  | 2.0 |

<br />
<br />
<br />

## Sniper Rifle
| Property | Default Value |
|----------|---------------|
| Modify the Sniper Rifle  | false |
| Sniper Rifle Put Down Time  | 0.6 |
| Sniper Rifle Bring Up Time  | 0.58 |
| Sniper Rifle MinReloadPct  | 0.5 |
| Sniper Rifle Ammo Per Fire  | 1 |
| Sniper Rifle Damage Min  | 60 |
| Sniper Rifle Damage Max  | 60 |
| Sniper Rifle Trace Range  | 17000 |
| Sniper Rifle Fire Rate  | 1.33 |
| Sniper Rifle Headshot Multiplier  | 2.0 |

<br />
<br />
<br />

## Super Shock Rifle
| Property | Default Value |
|----------|---------------|
| Modify the Super Shock Rifle  | false |
| Super Shock Rifle Put Down Time  | 0.33 |
| Super Shock Rifle Bring Up Time  | 0.33 |
| Super Shock Rifle MinReloadPct  | 0.5 |
| Super Shock primary trace range  | 17000 |
| Super Shock Primary Momentum  | 60000.0 |
| Super Shock Primary Ammo Per Fire  | 0 |
| Super Shock Primary Damage Min  | 1000 |
| Super Shock Primary Damage Max  | 1000 |
| Super Shock Primary Fire Rate  | 1.1 |

<br />
<br />
<br />

## Grenade Launcher
| Property | Default Value |
|----------|---------------|
| Modify the Grenade Launcher  | false |
| Grenade Launcher Put Down Time  | 0.33 |
| Grenade Launcher Bring Up Time  | 0.33 |
| Grenade Launcher MinReloadPct  | 0.5 |
| Grenade Launcher Primary Fire Rate  | 0.65 |
| Grenade Launcher Ammo Per Fire | 1 |
| Grenade Projectile Speed  | 1200.0 |
| Grenade Projectile Max Speed  | 1200.0 |
| Grenade Projectile Toss Z  | 0.0 |
| Grenade Projectile Damage  | 100.0 |
| Grenade Projectile Damage Radius | 175.0 |
| Grenade Projectile Momentum Transfer | 50000.0 |
| Grenade Projectile Cull Distance | 5000.0 |
| Grenade Projectile Life Span | 0.0 |
| Grenade Projectile Dampen Factor | 0.5 |
| Grenade Projectile Dampen Factor Parallel | 0.8 |

<br />
<br />
<br />

## Avril
| Property | Default Value |
|----------|---------------|
| Modify the Avril  | false |
| Avril Put Down Time  | 0.33 |
| Avril Bring Up Time  | 0.45 |
| Avril MinReloadPct  | 0.5 |
| Avril Lock Check Freq  | 0.2 |
| Avril Max Lock Range  | 15000.0 |
| Avril Lock Aim  | 0.996 |
| Avril Ammo Per Fire  | 1 |
| Avril Fire Rate  | 4.0 |
| Avril Kick Momentum  | (X=-350.0,Z=175.0) |
| Avril Rocket Lead Target Delay | 1.0 |
| Avril Rocket Proj Target | true |
| Avril Rocket Speed  | 550.0 |
| Avril Rocket Max Speed  | 2800.0 |
| Avril Rocket Damage  | 125.0 |
| Avril Rocket Damage Radius | 150.0 |
| Avril Rocket Momentum Transfer | 50000.0 |
| Avril Rocket Life Span | 7.0 |

<br />
<br />
<br />

## Mine Layer
| Property | Default Value |
|----------|---------------|
| Modify the Mine Layer  | false |
| Mine Layer Reload Delay | 0.4 |
| Mine Layer Max Mines | 8 |
| Mine Layer Put Down Time  | 0.40 |
| Mine Layer Bring Up Time  | 0.35 |
| Mine Layer MinReloadPct  | 0.5 |
| Mine Layer Ammo Per Fire  | 1 |
| Mine Layer Fire Rate  | 1.1 |
| Mine Detection Timer | 0.5 |
| Mine Scurry Speed | 525.0 |
| Mine Scurry Anim Rate | 4.1 |
| Mine Target Loc Fuzz | 250 |
| Mine Speed  | 800.0 |
| Mine Max Speed  | 800.0 |
| Mine Damage  | 95.0 |
| Mine Damage Radius | 250.0 |
| Mine Momentum Transfer | 50000.0 |
| Mine Cull Distance | 6000.0 |
| Mine Life Span | 7.0 |

<br />
<br />
<br />




