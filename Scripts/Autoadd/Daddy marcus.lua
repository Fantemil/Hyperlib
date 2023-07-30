local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Totally Alex's FE animation hub", "BloodTheme")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Animations + other stuff")
Section:NewLabel("Balls")

Section:NewButton("Netless", "No more bodyparts falling off", function()
        -- when you reset make sure to re-execute this or just make this execute in a loop
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
    if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
    game:GetService("RunService").Heartbeat:connect(function()
    v.Velocity = Vector3.new(-30,0,0)
    end)
    end
    end
    
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "Notification";
        Text = "Netless Ran";
        Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
    Duration = 16;
end)

Section:NewButton("Krystal dance", "Do the krystal dance", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/FV3HLmTH"))()
end)

Section:NewButton("Keyboard (for mobile) (read info)", "Use this to use keybinds for anims", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

Section:NewButton("Sonic", "Become sonic", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/SyF5t70A"))()
end)

Section:NewButton("Floss", "Makes you do the floss dance", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/JfyvWHLf"))()
end)

Section:NewButton("Default dance (read info)", "Kinda buggy, it might glitch your game", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/iXAe7Fub"))()
end)

Section:NewButton("Smug dance", "Makes you do the smug dance", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/Zawb88SA"))()
end)

Section:NewButton("Gale fighter", "Become da gale fighter", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/5jBTETjn"))()
end)

Section:NewButton("Gooppie dance", "Funny", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/0kRSgCDT"))()
end)