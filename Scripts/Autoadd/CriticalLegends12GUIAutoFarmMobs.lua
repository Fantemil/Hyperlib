if game.PlaceId == 8619263259 then
loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-hub-Part-Two/main/CL'))()
elseif game.PlaceId == 8561066003 then
loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-hub-Part-Two/main/CL2'))()
end
game.StarterGui:SetCore("SendNotification", {
Title = "Warning";
Text = "RightControl to toggle";
})
game.StarterGui:SetCore("SendNotification", {
Title = "Credis";
Text = "CharWar Serverhops Toxic Mods screen thingy And Kiriot22 esp,IY for fly script inspiration";
})

wait(5)
local function copyDiscord()
    setclipboard("https://discord.gg/RHemSXfPpw")
end

local StarterGui = game:GetService("StarterGui")
local bindable = Instance.new("BindableFunction")

local function sendNotification(titleText, descText)
    StarterGui:SetCore("SendNotification",{
        Title = titleText;
        Text = descText;
        Icon = "";
        Duration = 5;
    })
end

function bindable.OnInvoke(response)
    if response == "Yes" then
        copyDiscord()
        sendNotification("Discord Copied")
    end
end

StarterGui:SetCore("SendNotification", {
 Title = "V.G Hub Discord",
 Text = "Copy to clipboard?",
 Duration = 5,
 Callback = bindable,
 Button1 = "Yes",
 Button2 = "No"
})