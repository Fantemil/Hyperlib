_G.AttackKey = "E" -- default is "E"
local OldNameCall = "yourmom"

OldNameCall = hookmetamethod(game, "__namecall", function(self, ...)
    local Args = {...}
    if getnamecallmethod() == "FireServer" and Args[1] == "Flip" then
        return "flop"
    end
    return OldNameCall(self, ...)
end)

local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Name = "hrpp"
local newhrp = hrp:Clone()
newhrp.Parent = hrp.Parent
newhrp.Name = "HumanoidRootPart"

function swap()
if hrp.Name == "HumanoidRootPart" then
_G.off = false
local curpos = hrp.CFrame
spawn(function()
repeat newhrp.CFrame = CFrame.new(curpos.x, curpos.y, curpos.z) wait() until _G.off
end)
wait(0.1)
hrp.CFrame = game:GetService("Workspace").Map.YellowDecals.Part.CFrame * CFrame.new(0, 0, -8)
wait(0.05)
hrp.Name = "hrpp"
newhrp.Name = "HumanoidRootPart"
wait()
_G.off = true
elseif newhrp.Name == "HumanoidRootPart" then
newhrp.Name = "hrppp"
hrp.Name = "HumanoidRootPart"
end
end

swap()
swap()

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode[_G.AttackKey] then
        swap()
        wait(0.3)
        mouse1click()
        swap()
    end
end)