-- [[ Settings ]] --
getgenv().Main = {
    Title = "",
    ThumbnailURL = "",
    ColorEmbed = "#FFC0CB"  
}

getgenv().Field = {
    Name = "",
    FieldValue = "" 
}

getgenv().Footer = {
    FooterURL = "",
    FooterText = ""
}

getgenv().Authorization = {
    Secret = "",
    Channel = ""
}

getgenv().field = true

-- [[ Spam Prevention]] --
local CoreGui = game:GetService("CoreGui")
local folderName = "ak"

if CoreGui:FindFirstChild(folderName) then        
else
    local folder = Instance.new("Folder")
    folder.Name = folderName
    folder.Parent = CoreGui  
 
 spawn(function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAScripts/Not/main/Notifier.lua"))()
    end)
end