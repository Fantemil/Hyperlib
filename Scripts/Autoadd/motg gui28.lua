local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
local Window = Flux:Window("MOTG", "Press N to open/close", Color3.fromRGB(255, 110, 48), Enum.KeyCode.N)
local lp = game.Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")
local Remotes = RS.Resources.Remotes

function getPlayer(str, players) -- https://v3rmillion.net/showthread.php?tid=1074885
  local p
  local tbl = players or game:GetService('Players'):GetPlayers()

  for _, v in next, tbl do
    if (str:lower() == v.Name:lower()) then return v end
  end

  for i = str:len(), 2, -1 do
    for _, v in next, tbl do
      p = v.Name:lower()
      if (str:lower():sub(1, i) == p:sub(1, i)) then return v end
    end
  end

  for _, v in next, tbl do
    p = v.Name:lower()
    if (string.match(p, str:lower())) then return v end
  end

  return nil
end

function drink()
    for i,v in pairs(game.Workspace.Buildings:GetChildren()) do
        if v.Name == "Well" then
            Remotes.DrinkFromWell:FireServer(v)
        end
    end
end

function use(v, x)
    for i=1, x, 1 do
        spawn(function()
            Remotes.InteractItem:FireServer("Use", v)
        end)
        task.wait(.01)
    end
end

local Tab1 = Window:Tab("Misc", "http://www.roblox.com/asset/?id=6023426915")
Tab1:Button("Drink", "drinks from wells", function()
    drink()
end)
Tab1:Button("Revive Self", "revives yourself in case you die", function()
    Remotes.Spawn:FireServer(lp)
end)
Tab1:Button("Raise island", "raises the island", function()
    for i=1, 100,1 do
        Remotes.RaiseIsland:FireServer()
    end
end)
Tab1:Button("Chop All Trees", "attempts to chop all trees", function()
    for _, tree in pairs(game.Workspace.Plants:GetChildren()) do
        if type(string.find(tree.Name, "Tree")) or type(string.find(tree.Name, "Palm")) == "number" then
            Remotes.ChopTree:FireServer(tree)
        end
    end
end)
Tab1:Button("Break All Rocks", "attempts to break all rocks", function()
    for _, rock in pairs(game.Workspace.Rocks:GetChildren()) do
        Remotes.BreakRock:FireServer(rock)
    end
end)
Tab1:Button("Kill All Animals", "kills all animals with their drops", function()
    for _, animal in pairs(game.Workspace.Animals:GetChildren()) do
        Remotes.DamageAnimal:FireServer(animal, 9999999)
    end
end)
Tab1:Button("Remove all Items", "removes all items on the map", function()
    for i, v in pairs(workspace.Items:GetChildren()) do
        Remotes.DestroyItem:FireServer(v)
    end
end)
Tab1:Button("End Season", "ends current season", function()
    Remotes.EndSeason:FireServer()
end)
Tab1:Button("Disable Destroy Function", "destroy function used to destroy stuff after being used will be disabled", function()
    local mt = getrawmetatable(game)
    make_writeable(mt)
    
    local namecall = mt.__namecall
    
    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        local args = {...}
    
        if method == "FireServer" and self == Remotes.InteractItem and args[1] == "Destroy" then
            return wait(9e9)
        end
        return namecall(self, ...)
    end)
end)
Tab1:Button('Destroy this GUI', "boom", function()
    game:GetService("CoreGui").FluxLib:Destroy()
end)

local touse = ""
local amounttouse = 0
local tobring = ""
local Tab2 = Window:Tab("Use", "http://www.roblox.com/asset/?id=6023426915")
Tab2:Textbox("Object To Use", "Name Here", true, function(output)
    touse = tostring(output)
end)
Tab2:Textbox("Amount of Times", "Amount Here", true, function(output)
    amounttouse = tonumber(output)
end)
Tab2:Button("Use", "uses the item inf amount of times without it being destroyed", function()
    use(lp.Character[touse], amounttouse)
end)
Tab2:Textbox("Object To Bring", "Name Here", true, function(output)
    tobring = tostring(output)
end)
Tab2:Button("Bring", "brings the item if they are on the map", function()
    if game.Workspace.Items:FindFirstChild(tobring) then
        for i,v in pairs(game.Workspace.Items:GetChildren()) do
            if v.Name == tobring then
                Remotes.InteractItem:FireServer("Take", v)
                task.wait(.1)
                Remotes.InteractItem:FireServer("Drop", lp.Character:WaitForChild(tobring))
                task.wait(.1)
            end
        end
    end
end)

local fishtosummon = ""
local Tab3 = Window:Tab("Fish", "http://www.roblox.com/asset/?id=6023426915")
Tab3:Textbox("Fish To Spawn", "Name Here", true, function(output)
    fishtosummon = tostring(output)
end)
Tab3:Button("Spawn", "spawns the fish, requires you to have fishing rod out", function()
    Remotes.MakeFish:FireServer(fishtosummon, lp.Character.HumanoidRootPart.Position)
end)

local playertoaction = ""
local Tab4 = Window:Tab("Other Players", "http://www.roblox.com/asset/?id=6023426915")
Tab4:Label("you can use the start of a player name instead of full names")
Tab4:Textbox("Player to do Action", "Name Here", true, function(output)
    playertoaction = getPlayer(tostring(output))
end)
Tab4:Button("Respawn Player", "respawns the chosen player", function()
    Remotes.Spawn:FireServer(playertoaction)
end)
Tab4:Button("Kill Player", "kills the chosen player", function()
    Remotes.DamagePlayer:FireServer(playertoaction, 9999999)
end)