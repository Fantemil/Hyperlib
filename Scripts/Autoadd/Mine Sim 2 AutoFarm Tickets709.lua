--[[Join the discordhttps://discord.gg/pN7y37KGkd
]]
_G.FarmTicket = true

game:GetService("ReplicatedStorage").Events.SetToolHolding:FireServer("Fishing Rod")
game.Players.LocalPlayer.PlayerGui.SurfaceGui.Frame.Main.Pet.ChildAdded:Connect(function(a)if a.Name=="Camera"then else if tostring(_G.FarmTicket)=="true" then game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({a.Name,"All"}))end end end)
while _G.FarmTicket do task.wait()tweenService,tweenInfo=game:GetService("TweenService"),TweenInfo.new(1,Enum.EasingStyle.Linear)tween=tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,tweenInfo,{CFrame=CFrame.new(-2943.33154296875,5.150033950805664,-113.26372528076172)})tween:Play()game:GetService("ReplicatedStorage").Events.FishingCast:FireServer(unpack({workspace.Worlds:FindFirstChild("Summer Fair").Fishing.Ocean.Part,Vector3.new(-3041.581298828125,0.18494415283203125,-104.90171813964844)}))end