local plrname = game:GetService("Players").LocalPlayer.Name
local plrchara = game:GetService("Players").LocalPlayer.Character
local function getrootpart(char)
 local rootpart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
 return rootpart
end
if workspace:FindFirstChild("biggestplayermoveeveraxdwtmadethis") then
    print("it exist")
    else
    local part = Instance.new("Part",workspace)
    part.Name = "biggestplayermoveeveraxdwtmadethis"
    part.Transparency = 0.80
    part.CanCollide = false
    part.Size = Vector3.new(11,0.001,11)
end
game:GetService("RunService").RenderStepped:Connect(function()
    workspace:FindFirstChild("biggestplayermoveeveraxdwtmadethis").Position = Vector3.new(getrootpart(plrchara).Position.X,getrootpart(plrchara).Position.Y,getrootpart(plrchara).Position.Z)
    wait(0.00000000000000000000000000000000000001)
end)
workspace:FindFirstChild("biggestplayermoveeveraxdwtmadethis").Touched:Connect(function(otherPart)
    if otherPart.Parent.Name == plrname then
        
    else
        if game:GetService("Players"):FindFirstChild(otherPart.Parent.Name) then
            getrootpart(plrchara).CFrame = CFrame.lookAt(getrootpart(plrchara).Position,Vector3.new(getrootpart(otherPart.Parent).Position.X,getrootpart(plrchara).Position.Y,getrootpart(otherPart.Parent).Position.Z))           
        end
    end
    wait(0.00000000000000000000000000000000000001)
end)