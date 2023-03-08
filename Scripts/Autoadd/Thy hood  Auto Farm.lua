_G.Pounds = "5 Pounds"
_G.Shillings = "5 Shillings"
_G.Pence = "5 Pence"
_G.Farthings = "5 Farthings"



game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
   prompt.HoldDuration = prompt, -1
end)

for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v:IsA("Part") and v.Name == ("trashcore") then
wait()

wait(3.5)
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(v.Position)
    wait(0.3)
    keypress(0x45)
    wait(0.4)
    keyrelease(0x45)
    wait(0.3)
    keypress(0x51)
    wait(0.3)
    keyrelease(0x51)
    wait()
local teleport_table = {
    location1 = Vector3.new(-702.2596435546875, 7.141429424285889, 96.21521759033203)
}

local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function bypass_teleport(v)
    if lp.Character and 
    lp.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
        a:Play()
    end
end

bypass_teleport(teleport_table.location1)
if
    game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
break
else
if game:GetService("Players").LocalPlayer.PlayerGui.money.pounds.Text == _G.Pounds then
break
elseif game:GetService("Players").LocalPlayer.PlayerGui.money.shillings.Text == _G.Shillings then
break
elseif
game:GetService("Players").LocalPlayer.PlayerGui.money.pence.Text == _G.Pence then
break
elseif
game:GetService("Players").LocalPlayer.PlayerGui.money.farthings.Text == _G.Farthings then
break
end
end
end
end