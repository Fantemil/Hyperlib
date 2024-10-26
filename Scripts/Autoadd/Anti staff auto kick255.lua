local StaffRank = {"Staff", "High Staff", "Admin", "Developer [ Drag Project ]", "Developer [ The Ride ]", "Owner"}

local Id = 33138186



local function Verify(player)
  if player:IsInGroup(Id) then
        local role = player:GetRoleInGroup(Id)
        for _, staffRole in ipairs(StaffRank) do
            if role == staffRole then
                game.Players.LocalPlayer:Kick("STAFF IN GAME ["..player.name.." Is Staff")
            else
              print(player.name.." Not" ..role.. "[ Safe ]")
              
            end
          
        end
  else
    print(player.name.." not in group")
  end
end

for _, BB in game.Players:GetPlayers() do
  
  Verify(BB)
end

game.Players.PlayerAdded:Connect(function(player)
  Verify(player)
end)