class WeaponConfigRules extends GameRules;

var MutWeaponConfig Config;

// The mutator system does not have a hook for when a new playercontroller is created.
// ModifyLogin is called before the controller is spawned.
// ModifyPlayer is called after inventory is given, we need to modify default weapon properties before they are spawned.
// CheckReplacement is called before PlayerReplicationInfo is spawned.
// So we resort to adding GameRules which override FindPlayerStart.  FindPlayerStart is called 
// 1) after the controller is spawned
// 2) before the pawn is spawned
// this is a good time to modify weapon defaults
function NavigationPoint FindPlayerStart( Controller Player, optional byte InTeam, optional string incomingName )
{
    if(PlayerController(Player) != None)
        AddRepInfo(Player);

    return super.FindPlayerStart(Player, InTeam, incomingName);
}

// add our custom replication info
// do nothing if already added
function AddRepInfo(Controller C)
{
    local LinkedReplicationInfo LRI;
    local WeaponConfigInfo weaponRI;
    if(C == None || C.PlayerReplicationInfo == None)
        return;

    if(C.PlayerReplicationInfo.CustomReplicationInfo == None)
    {
        // add new custom info
        weaponRI = spawn(class'WeaponConfigInfo', C.PlayerReplicationInfo.Owner);
        weaponRI.LoadFrom(Config);
        C.PlayerReplicationInfo.CustomReplicationInfo = weaponRI;
    }
    else
    {
        // or add to existing chain
        LRI = C.PlayerReplicationInfo.CustomReplicationInfo;
        while(LRI.NextReplicationInfo != None)
        {
            // don't do anything if already added
            if(LRI.IsA('WeaponConfigInfo'))
                return;

            LRI=LRI.NextReplicationInfo;
        }

        weaponRI = spawn(class'WeaponConfigInfo', C.PlayerReplicationInfo.Owner);
        weaponRI.LoadFrom(Config);
        LRI.NextReplicationInfo = weaponRI;
    }
}


defaultproperties
{
}