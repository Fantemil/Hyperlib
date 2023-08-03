_G.AntiFlingConfig = {
    -- this will remove your rotational velocity every frame
    disable_rotation = true;
   
    -- this slows you down if you're moving too fast, works well but can give you a low gravity effect
    limit_velocity = true;
    limit_velocity_sensitivity = 150; -- how fast you have to be moving before you get slowed down
    limit_velocity_slow = 0; -- the amount of velocity you keep; a lower number increases how much you slow down by
   
    -- stops you from ragdolling or falling over and losing control
    anti_ragdoll = true;
   
    -- completely freezes you if someone gets too close to you  
    anchor = false;
    smart_anchor = true; -- only anchors if someone is considered flinging, this likely won't detect many flings
    anchor_dist = 30; -- how close someone has to be to trigger anchor
   
    -- teleport away if someone gets too close
    teleport = false;
    smart_teleport = true; -- only teleports if someone is considered flinging, this likely won't detect many flings
    teleport_dist = 30; -- how close someone has to be to teleport you
}
-- run _G.disable() to disable the script completely

loadstring(game:HttpGet('https://raw.githubusercontent.com/topitbopit/rblx/main/extra/better_antifling.lua'))()