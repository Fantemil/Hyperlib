local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(255,0,0)

local plr = game:GetService("Players").LocalPlayer

for _, v in next, getconnections(plr.Character.Humanoid.StateChanged) do
 local info = getinfo(v.Function)
 if info.what == "Lua" and info.source == "=Workspace."..plr.Name..".movementt" then
  v:Disable()
 end
end
Library:Notification({
 Text = "Disabled Jump Cooldown",
 Duration = 10
})