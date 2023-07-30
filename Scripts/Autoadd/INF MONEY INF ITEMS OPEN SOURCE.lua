local args = {
    [1] = "Main",
    [2] = -9999999999999 -- You get the point ( dont go too high itll bug you )
}

game:GetService("ReplicatedStorage").RemoteFunctions.OpenCrate:InvokeServer(unpack(args))


inf bobux crates:

Code:
local args = {
    [1] = "Deluxe",
    [2] = -1
}

game:GetService("ReplicatedStorage").RemoteFunctions.OpenCrate:InvokeServer(unpack(args))


inf bobux capsules:

Code:
local args = {
    [1] = "Deluxe",
    [2] = 1
}

game:GetService("ReplicatedStorage").RemoteFunctions.OpenCapsule:InvokeServer(unpack(args))


delete all capsules besides best one:
Code:
for i,v in pairs(game:GetService("Players").LocalPlayer.Fishers:GetChildren()) do
    if v.Name ~= 'Aureus' then
        local args = {
            [1] = {
                [1] = v
            }
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.DeleteFishers:FireServer(unpack(args))
     end
end


delete all cages besides best one: 

Code:
for i,v in pairs(game:GetService("Players").LocalPlayer.Cages:GetChildren()) do
    if v.Name ~= 'AureusDominusCage' then
        local args = {
            [1] = {
                [1] = v
            }
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.DeleteCages:FireServer(unpack(args))
     end
end


Code:
generate best shiny in game: -- you need atleast one normal or shiny of it

local args = {
    [1] = 10,
    [2] = "AureusDominusCage"
}

game:GetService("ReplicatedStorage").RemoteFunctions.FuseNeon:InvokeServer(unpack(args))