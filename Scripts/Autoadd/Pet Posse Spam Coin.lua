local plr = game.Players.LocalPlayer
local things = workspace.__THINGS
local remote = things.__REMOTES.clickedButton

while task.wait() do
    local world = plr.Leaderstats.currentWorld.Value
    
    local pets = {};
    for i,v in pairs(things.Pets:FindFirstChild(plr.Name):GetChildren()) do
        table.insert(pets, v.Name)
    end
        
    local coins = {}; 
    for i,v in pairs(workspace.__THINGS.Coins[world]:GetChildren()) do
        for z,x in pairs(v:GetDescendants()) do
            if table.find(pets, x.Name) then
                table.insert(coins, v)
            end
        end
    end

    for i,v in pairs(coins) do
        remote:FireServer(v.Coin, v)
    end
end