// Base for the per-weapon config infos. One set is spawned for the whole server and is
// always relevant, so each client opens one channel per modified weapon, independent of
// player count.
class WeaponConfigSubInfo extends ReplicationInfo
    abstract;

simulated function PostNetBeginPlay()
{
    super.PostNetBeginPlay();
    // a sub-info fits in its first bunch, so all replicated fields have arrived
    if(Role < ROLE_Authority)
        Modify();
}

simulated function Modify();

// class defaults outlive the map, so the server puts the stock values back before travelling.
// a sub-info that never loaded config holds them in its defaultproperties; it is destroyed in
// the same frame, so it never replicates
function RestoreStock()
{
    local WeaponConfigSubInfo Stock;

    Stock = Spawn(Class);
    Stock.Modify();
    Stock.Destroy();
}

// Sets the switch times and scales the anim rates by old/new time, so rate * time stays
// constant and re-applying (map change, reconnect, listen server) never compounds.
static final function SetSwitchTimes(class<Weapon> W, float PutDownTime, float BringUpTime)
{
    if(PutDownTime > 0)
    {
        W.default.PutDownAnimRate = W.default.PutDownAnimRate * W.default.PutDownTime / PutDownTime;
        W.default.PutDownTime = PutDownTime;
    }
    if(BringUpTime > 0)
    {
        W.default.SelectAnimRate = W.default.SelectAnimRate * W.default.BringUpTime / BringUpTime;
        W.default.BringUpTime = BringUpTime;
    }
}

defaultproperties
{
    // ahead of Weapon (3.0) so a joining client applies config before its first weapons copy the defaults
    NetPriority=4.0
    // considered every server tick (Info uses 10); bOnlyDirtyReplication keeps the idle cost to a channel lookup
    NetUpdateFrequency=100
}
