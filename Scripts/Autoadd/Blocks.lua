--BLOCKS auto trap all by Terry Davis on v3rmillion.net
-- please like the thread if you found it useful
-- https://v3rmillion.net/showthread.php?tid=1084626

lp = game.Players.LocalPlayer
char = lp.Character
boxSize = 6

--I RECOMMEND MAKING THE BLOCKS TRANSPARENT SO YOU CAN SEE OUTSIDE OF THE boxes
--MAKING THEM FULLY TRANSPARENT WILL ANNOY PEOPLE MORE
--CHANGE TRANSPARENCY IN THE NORMAL INGAME GUI or in the script below

--gets your ingame block settings
color,b,transparency,reflectance = game.ReplicatedStorage.GetBlockData:InvokeServer()

function placeBlock(x,y,z)
    char.Place.Build:FireServer(
        Vector3.new(x, y, z), --position as specified by parameters x,y,z
        color,
        true, -- not sure what this does
        b or "SmoothPlastic", --material
        transparency, --overide transparency here (0 is opaque, 1 is transparent)
        reflectance
    )
end


function equip()
    --equips tool - tool has to be equipped to place blocks
    if lp.Backpack:FindFirstChild("Place") then
        char.Humanoid:EquipTool(lp.Backpack:FindFirstChild("Place"))
    end
end


function makeBox(player,size)
    size = size/2
    char.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
    pos = player.Character.HumanoidRootPart.Position
    equip() -- equips Place tool
    wait(0.1)
    --Make floor
    for i2 = -size,size do
        for i = -size,size do
            placeBlock(pos.X+3*i,pos.Y-size*1.5-3,pos.Z+3*i2)
        end
    end
    --Make walls
    for i2 = 0,size do
        for i = -size,size do
            placeBlock(pos.X+3*i,pos.Y-size*1.5+i2*3,pos.Z+size*3)
            placeBlock(pos.X+3*i,pos.Y-size*1.5+i2*3,pos.Z-size*3)
            placeBlock(pos.X-size*3,pos.Y-size*1.5+i2*3,pos.Z+3*i)
            placeBlock(pos.X+size*3,pos.Y-size*1.5+i2*3,pos.Z+3*i)
        end
    end
    --Make roof
    for i2 = -size,size do
        for i = -size,size do
            placeBlock(pos.X+3*i,pos.Y+size*1.5+3,pos.Z+3*i2)
        end
    end
end

--function for boxing new players
function onJoin(player)
    player:WaitForChild("HumanoidRootPart")
    makeBox(game.Players:FindFirstChild(player.Name),boxSize)
end
    
-- hooks Autobox function to box new players
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(onJoin)
end)

for i,v in pairs(game.Workspace.Spawns:GetChildren()) do
    --boxes spawns
    char.HumanoidRootPart.CFrame = v.CFrame
    wait(0.1)
    makeBox(lp,15)
    wait(1.5)
end

for i,v in pairs(game.Workspace.Spawns:GetChildren()) do
    --boxes spawns above so that people don't respawn above and escape
    char.HumanoidRootPart.CFrame = v.CFrame+Vector3.new(0,35,0)
    wait(0.1)
    makeBox(lp,15)
    wait(1.5)
end


-- boxes all players currently in game
for i,v in pairs(game.Players:GetChildren()) do
    if v.Name ~= lp.Name then -- checks if selected player is you / localplayer
        makeBox(v,boxSize)
        -- autoboxes player when they respawn
        if v ~= nil then v.CharacterAdded:Connect(onJoin) end
        wait(1)
    end
end