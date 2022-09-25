local bindable = Instance.new("BindableFunction")
function bindable.OnInvoke(response)
 print("invoked")
 setclipboard("discord.gg/WzHYjEnUF2")
end
game:GetService("StarterGui"):SetCore("SendNotification", {
 Title = "HUNT#1113 here",
 Text = "Join discord.gg/WzHYjEnUF2 for the original script",
 Duration = 69420,
 Callback = bindable,
 Button1 = "Copy"
})