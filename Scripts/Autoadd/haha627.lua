repeat task.wait() until game:GetService("Players")
local players = game:GetService("Players")
repeat task.wait() until players.LocalPlayer
if game.GameId ~= 2619619496 then return end
local tpdata = game:GetService("TeleportService"):GetLocalPlayerTeleportData()
if tpdata and tpdata.customMatch then return end
local suc,res
repeat  
    task.wait()
    suc, res = pcall(function()
        local Client = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client
        return Client:Get("PlayerConnect")
    end)
until suc and res
local clientstore = require(players.LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
if game.PlaceId ~= 6872265039 then
    local Client = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client
    local ConnectController = require(players.LocalPlayer.PlayerScripts.TS.controllers.global.connect["connect-controller"]).ConnectController
    local old = ConnectController.KnitStart
    ConnectController.KnitStart = function() end
    clientstore:dispatch({
        type = "GameSetQueueType", 
        queueType = tpdata.match.queueType
    })
    local Flamework = require(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@flamework"].core.out).Flamework
    repeat task.wait() until Flamework.isInitialized
    local NotificationController =  Flamework.resolveDependency("@easy-games/game-core:client/controllers/notification-controller@NotificationController")
    Client:WaitFor("BedwarsBedBreak"):andThen(function(p13)
		p13:Connect(function(p14)
			local plr = players:GetPlayerByUserId(p14.player.UserId)
			if plr and plr.Neutral then
				NotificationController:sendInfoNotification({
					image = "rbxassetid://6830860982",
					message = '<font color="#AAAAAA"><b>'..(plr.DisplayName or plr.Name)..'</b></font> destroyed <font color="#'..string.format("%x", p14.brokenBedTeam.colorHex)..'"><b>Team '..p14.brokenBedTeam.displayName..'</b></font>\'s bed! They will no longer respawn.'
				})
			end
		end)
	end)
end