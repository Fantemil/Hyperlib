_G.AutoInstantElder = true
if _G.AutoInstantElder then
    local VU = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    VU:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    VU:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Auto Instant Elder";
    Text = "Message : Script Fired"; 
    Duration = 10; })
    game.StarterGui:SetCore("SendNotification", {
    Title = "Press 6 to Pause";
    Text = "Press 6 when your dino spawns as elder.."; 
    Duration = 20; })
    game.StarterGui:SetCore("SendNotification", {
    Title = "Spinosaurus";
    Text = "I recommend using Spinosaurus"; 
    Duration = 15; })
    bind7 = "6"
	game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
	if key == bind7 then
		_G.AutoInstantElder = false
		game.StarterGui:SetCore("SendNotification", {
		Title = "Auto Elder";
		Text = "Script Paused"; 
		Duration = 5; })
	end
end)
end

_G.AutoInstantElder = true
--DNA Farm Script
while true do
wait()
if not _G.AutoInstantElder then return end
    if not game.Players.LocalPlayer.Character then
    	local a = ("elderdinoname") -- eldered dino here
		local targ = ("dino u want eldered") -- dino u want to elder
        local CountDown = 7
        local t = 1
        local c = game.Players.LocalPlayer.Character
        local Menu = workspace.GameEvents.GoToMenu
        workspace.GameEvents.ChangeDinosaur:FireServer(a)
Menu:FireServer(CountDown)
wait(5)
workspace.GameEvents.StartPlayer:FireServer()
workspace.GameEvents.ChangeDinosaur:FireServer(targ)
Menu:FireServer(CountDown)
wait(6)
workspace.GameEvents.ChangeDinosaur:FireServer(targ)
workspace.GameEvents.StartPlayer:FireServer()
    end
    wait(3)
    if game.Players.LocalPlayer.Character then
        wait(3)
    end
    if game.Players.LocalPlayer.Character then
        workspace.GameEvents.GoToMenu:FireServer(7)
        wait(8)
    end
end