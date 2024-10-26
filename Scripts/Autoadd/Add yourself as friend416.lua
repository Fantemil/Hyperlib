local Callback = Instance.new("BindableFunction")
function Callback.OnInvoke(Button)
	
end
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = game.Players.LocalPlayer.Name,
	Text = "Sent you a friend request!",
	Icon = 15011943566,
	Duration = 7,
	Callback = Callback,
	Button1 = "Accept",
	Button2 = "Reject",
})
Callback:Destroy()

wait(5)

local Callback = Instance.new("BindableFunction")
function Callback.OnInvoke(Button)
	
end
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = game.Players.LocalPlayer.Name,
	Text = "New friend",
	Icon = 15011943566,
	Duration = 7,
	Callback = Callback,
	Button1 = "Close",
})
Callback:Destroy()