-- execute when u want to serverhop

 local Players = game:GetService("Players")
 local TeleportService = game:GetService("TeleportService")
  
 local placeId = 4111023553 -- 
 
 TeleportService:Teleport(placeId)



-- place me in autoexe

repeat wait() until game:IsLoaded()

if game.PlaceId ~= 4111023553 then return end

local args = {
    [1] = "A",
    [2] = {
        ["PrivateTest"] = false
    }
}

game:GetService("ReplicatedStorage").Requests.StartMenu.Start:FireServer(unpack(args))