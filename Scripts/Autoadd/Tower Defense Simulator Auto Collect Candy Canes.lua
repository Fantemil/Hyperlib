getgenv().IntegrateAutoStrats = true -- enabling this will integrate this script with the output and camera of MM's AutoStrats (If you don't use AutoStrats and leave it as true it will still run normally)

--// Do not edit anything below this point \\--
repeat wait() until game:IsLoaded()
getgenv().changestate=function(path,state) for _,v in pairs(path:GetChildren()) do if v:IsA("Part") then v.Anchored=state end end end
    
    
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
    if v:IsA("BasePart") then
        v.Anchored = false
    end
end
if game.PlaceId ~= 5591597781 then return end
if getgenv().IntegrateAutoStrats == true then
   getgenv().DefaultCam = 1
end

local CandyTable = {}
for i,v in next,workspace:GetChildren() do
    if v:IsA("MeshPart") and v.Name == "CandyCane" and not table.find(CandyTable,v) then
        table.insert(CandyTable,v)
    end
end
Workspace.ChildAdded:Connect(function(Instance)
    wait(.5)
    if Instance:IsA("MeshPart") and Instance.Name == "CandyCane" and not table.find(CandyTable,Instance) then
        table.insert(CandyTable,Instance)
    end
end)
local currentpos
task.spawn(function()
    while true do
        wait()
        for current = 1,#CandyTable do
            if CandyTable[current] and CandyTable[current].CFrame.Y < 200 then
               local currentpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                getgenv().changestate(game.Players.LocalPlayer.Character,true)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CandyTable[current].CFrame
                task.wait(.2)
                getgenv().changestate(game.Players.LocalPlayer.Character,false)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentpos
                if getgenv().IntegrateAutoStrats == true then
                  getgenv().output('Picked up Candy Cane!',Color3.fromRGB(255, 0, 0))
                end 
                 
            elseif not CandyTable[current] then
                table.remove(CandyTable,current)
            end
        end
    end
end)