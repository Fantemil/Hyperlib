game.Workspace.Gravity = 196.2

local uis = game:GetService("UserInputService")
local holdingw = false

function boost()
 for i, v in pairs(game:GetService("Workspace").Cars:GetChildren()) do
        if tostring(v.Owner.Value) == game:GetService("Players").LocalPlayer.Name then 
            v.Main.DragForce.Force = v.Main.CFrame.LookVector * 10000
        end
    end
end


uis.InputBegan:Connect(function(inpt)
 if inpt.KeyCode == Enum.KeyCode.W then
     print("started w")
  holdingw = true
 end
end)

uis.InputEnded:Connect(function(inpt)
 if inpt.KeyCode == Enum.KeyCode.W then
  holdingw = false
 end
end)

while wait() do 
 if holdingw then
  boost()
 end
end