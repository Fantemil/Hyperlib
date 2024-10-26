local ContextActionService = game:GetService("ContextActionService
  

local Players = game:GetService("Players")
  

local gameProcess = game:GetProcess()
  

local Player = Players.LocalPlayer
  

local UserId = Player.UserId
  

local ContextAction = ContextActionService:GetContextActions()
  

local ContextActionId = ContextAction.Id
  

local banId = game.ServerScriptService.BanSystemId
  

local Ban = Instance.new("MethodBinding",gameProcess)
