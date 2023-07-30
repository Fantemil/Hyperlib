StarterGui = game:GetService("StarterGui")
bindable = Instance.new("BindableFunction")
function bindable.OnInvoke(response)
   if response == "Get Kicked By Clicking This" then
   game.Players.LocalPlayer:Kick("u got kicked")
   end
end

StarterGui:SetCore("SendNotification", {
    Title = "Credit",
    Text = "hi"
    Duration = 69,
    Callback = bindable,
    Button1 = "Don't get kicked by clicking this",
    Button2 = "Get Kicked By Clicking This"
})