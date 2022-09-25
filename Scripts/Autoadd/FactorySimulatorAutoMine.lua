local bindable = Instance.new("BindableFunction")
function bindable.OnInvoke(response)
 print("invoked")
 setclipboard("https://discord.gg/R5K2vr7pXM ")
end
game:GetService("StarterGui"):SetCore("SendNotification", {
 Title = "HUNT#1113 here",
 Text = "Join https://discord.gg/R5K2vr7pXM for the script",
 Duration = 69420,
 Callback = bindable,
 Button1 = "Copy"
})