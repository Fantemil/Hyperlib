--select your script version
local scriptversion = 1  -- 1 or 2


function first()
repeat task.wait()
for _,v in pairs(game:GetService("Workspace").Creatures:GetDescendants()) do
     if v:IsA("BasePart") and v:FindFirstChild("TouchInterest") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        wait(0.1) -- delay so you don't teleport too fast
    end
end
until game.Players.LocalPlayer.Character.HumanoidRootPart.NameTag.UpperText.Text == "171"
end

function third()
getgenv().Farm = true

while getgenv().Farm do wait()
if game.Players.LocalPlayer.Character.HumanoidRootPart.NameTag.UpperText.Text == "171" then
getgenv().Farm = false
end
for _,v in pairs(game:GetService("Workspace").Creatures:GetDescendants()) do
     if v:IsA("BasePart") and v:FindFirstChild("TouchInterest") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        wait(0.1) -- delay so you don't teleport too fast
    end
end
end
end


table11 = {first(), third()}

print(table11[scriptversion])