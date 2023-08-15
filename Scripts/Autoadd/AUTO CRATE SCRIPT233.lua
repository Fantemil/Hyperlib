getgenv().settings = {
    ['AutoCrate'] = true
}

local player = game:GetService("Players").LocalPlayer
function collectCrates()
    for _,v in next, workspace:GetChildren() do 
        if string.find(v.Name, 'Crate') and v.ClassName == 'MeshPart' then 
            v.CanCollide = false
            v.CFrame  = player.Character.PrimaryPart.CFrame
        end 
    end 
end 

while getgenv().settings.AutoCrate and task.wait() do
    collectCrates()
end