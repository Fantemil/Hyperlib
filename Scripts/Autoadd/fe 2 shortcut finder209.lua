getgenv().keys = {"r","y","k"} -- 3rd key for refreshing
getgenv().parts = {}
getgenv().partsdata = {}
getgenv().touchparts = {}
changed = false
local wcolors = {Color3.fromRGB(163, 162, 165),Color3.fromRGB(135, 134, 137),Color3.fromRGB(112, 111, 114),Color3.fromRGB(93, 92, 95),Color3.fromRGB(77, 76, 79),Color3.fromRGB(64, 63, 66)}
local mcolors = {Color3.fromRGB(0, 255, 0),Color3.fromRGB(184, 255, 0),Color3.fromRGB(65, 80, 70),Color3.fromRGB(138, 233, 124),Color3.fromRGB(26, 55, 21),Color3.fromRGB(65, 108, 70)}
local lp = game.Players.LocalPlayer
local mouse = lp:GetMouse()
--saves all parts and their data
for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("BasePart") and game.Players:FindFirstChild(v.Parent.Name) == nil then
        table.insert(parts,v)
        table.insert(partsdata,{v.Color,v.Transparency})
    elseif v.Name == "TouchInterest" then
        table.insert(touchparts,{v.Parent,1})
    elseif v.Name == "ClickDetector" then
        table.insert(touchparts,{v.Parent,0})
    end
end

mouse.KeyDown:Connect(function(key)
    if key == keys[1] and changed == false then
        for i,v in pairs(parts) do
             v.Transparency = 0
            if v.ClassName ~= "UnionOperation" and v.CanCollide == true then
                v.Color = wcolors[math.random(1,6)]
            elseif v:IsA'UnionOperation' and v.CanCollide == true then
                v.Color = Color3.fromRGB(0, 255, 255)
            elseif v:IsA'MeshPart' or v:IsA"CylinderMesh" or v:IsA"SpecialMesh" and v.CanCollide == true then
                v.Color = mcolors[math.random(1,6)]
            elseif v.CanCollide == false then
                v.Transparency = 1
            end
        end
        for i,v in pairs(touchparts) do
            if v[2] == 1 then
                v[1].Color = Color3.fromRGB(255,255,0)
                v[1].Transparency = 0.2
            else
                print(v[1]:GetFullName())
                v[1].Color = Color3.fromRGB(255,127,80)
                v[1].Transparency = 0.2
            end
        end
        changed = true
    elseif key == keys[1] and changed == true then
        --reset parts
        for i,v in pairs(partsdata) do
            parts[i].Color = v[1]
            parts[i].Transparency = v[2]
        end
        changed = false
    elseif key == keys[2] and changed == true then
        for i,v in pairs(parts) do
            if v:IsA"BasePart" and v.CanCollide == true then
                if v.Size.X < 0.6 or v.Size.Z < 0.6 then
                    v.Color = Color3.fromRGB(0, 255, 0)
                end
                if (v.Size.X > 0.6 and v.Size.X <= 1) or (v.Size.Z > 0.6 and v.Size.Z <= 1 ) then
                    v.Color = Color3.fromRGB(255, 0, 0)
                end
            end
        end
    elseif key == "k" then --refresh
        for i,v in pairs(partsdata) do
            parts[i].Color = v[1]
            parts[i].Transparency = v[2]
        end
        for i,v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") and v.Parent ~= lp.Character then
                table.insert(parts,v)
                table.insert(partsdata,{v.Color,v.Transparency})
            end
        end
        changed = false
    end
end)