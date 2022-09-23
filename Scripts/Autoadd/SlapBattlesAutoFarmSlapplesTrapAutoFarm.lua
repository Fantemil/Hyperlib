local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Cloud Hub (SB)", HidePremium = true, SaveConfig = false, ConfigFolder = "CloudHub"})

local Tab = Window:MakeTab({
 Name = "Main",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
--Slapples farm
Tab:AddButton({
 Name = "Autofarm slapples (Golden one too)",
 Callback = function()
        while true do
    wait(0.5)
spawn(function()
for i, v in pairs(game:GetService("Workspace").Arena.island5.Slapples:GetDescendants()) do
  if v:IsA("TouchTransmitter") then
    firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
    task.wait()
    firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
  end
 end
end)
end
   end    
})

--Megarock farm
Tab:AddButton({
 Name = "Autofarm MegaRock (Keep game running)",
 Callback = function()
        local function customtwn(input, studspersecond, offset)
   local char = game:GetService("Players").LocalPlayer.Character;
   local input = input or error("input is nil");
   local studspersecond = studspersecond or 1000;
   local offset = offset or CFrame.new(0,0,0);
   local vec3, cframe;

   if typeof(input) == "table" then
       vec3 = Vector3.new(unpack(input)); cframe = CFrame.new(unpack(input));
   elseif typeof(input) ~= "Instance" then
       return error("wrong format used");
   end;
   
   Time = (char.HumanoidRootPart.Position - (vec3 or input.Position)).magnitude/studspersecond;
   local twn = game.TweenService:Create(char.HumanoidRootPart, TweenInfo.new(Time,Enum.EasingStyle.Linear), {CFrame = (cframe or input.CFrame) * offset});
   twn:Play();
   twn.Completed:Wait();
end;




local e = Instance.new("Part")
e.Parent = game:GetService"Workspace"
e.Size = Vector3.new(50,50,50)
e.Position = Vector3.new(9000,9000,9000)
e.Anchored = true
lplr = game.Players.LocalPlayer.Character

if lplr.isInArena == false then
     fireclickdetector(game.Workspace.Lobby.DiamondGlove.ClickDetector)
     wait(1)
     firetouchinterest(lplr.Head, game:GetService("Workspace").Lobby.Teleport1, 0)
     wait(.5)
     customtwn({9000, 9100, 9000}, 100000)
     task.wait(3)
     keypress(0x45)
     task.wait(.5)
     keyrelease(0x45)
     else
         lplr.Humanoid.Health = 0
         wait(5)
         fireclickdetector(game.Workspace.Lobby.DiamondGlove.ClickDetector)
         wait(3)
         customtwn({-368.266, 328.214, 3.93014}, 100)
         wait(1)
         customtwn({9000, 9100, 9000}, 100000)
         task.wait(3)
         keypress(0x45)
         task.wait(.5)
         keyrelease(0x45)
   end end
})

Tab:AddButton({
 Name = "Trap Autofarm (Keep game running)",
 Callback = function()
        local function customtwn(input, studspersecond, offset)
   local char = game:GetService("Players").LocalPlayer.Character;
   local input = input or error("input is nil");
   local studspersecond = studspersecond or 1000;
   local offset = offset or CFrame.new(0,0,0);
   local vec3, cframe;

   if typeof(input) == "table" then
       vec3 = Vector3.new(unpack(input)); cframe = CFrame.new(unpack(input));
   elseif typeof(input) ~= "Instance" then
       return error("wrong format used");
   end;
   
   Time = (char.HumanoidRootPart.Position - (vec3 or input.Position)).magnitude/studspersecond;
   local twn = game.TweenService:Create(char.HumanoidRootPart, TweenInfo.new(Time,Enum.EasingStyle.Linear), {CFrame = (cframe or input.CFrame) * offset});
   twn:Play();
   twn.Completed:Wait();
end;




local e = Instance.new("Part")
e.Parent = game:GetService"Workspace"
e.Size = Vector3.new(50,50,50)
e.Position = Vector3.new(9000,9000,9000)
e.Anchored = true

lplr = game.Players.LocalPlayer.Character
if lplr.isInArena == false then
fireclickdetector(game:GetService("Workspace").Lobby.Brick.ClickDetector)
wait(.5)
firetouchinterest(lplr.Head, game.Workspace.Lobby.Teleport1, 0)
wait(.5)
customtwn({9000, 9100, 9000}, 100000)
task.wait(1)
while game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text > 1000 and wait(.5) do
    keypress(0x45)
    task.wait(.5)
    keyrelease(0x45)
    end
    else
        lplr.Humanoid.Health = 0
        wait(5)
        fireclickdetector(game:GetService("Workspace").Lobby.Brick.ClickDetector)
        wait(.5)
        customtwn({-368.266, 328.214, 3.93014}, 100)
        wait(2)
        customtwn({9000, 9100, 9000}, 100000)
        task.wait(1)
        while tonumber(game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text) < 1000 and wait(.5) do
            keypress(0x45)
            wait(1)
            keyrelease(0x45)
            end

   end end})