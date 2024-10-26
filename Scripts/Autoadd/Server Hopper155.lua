local destroyed = false
local httpservice = game:GetService("HttpService")
local tpservice = game:GetService("TeleportService")
local joinfuncs = {}
local serverstorage
request = request or syn.request or http.request or fluxus.request
if getgenv().serverhopgui then
    getgenv().serverhopgui:Destroy()
end
getgenv().serverhopgui = Instance.new("ScreenGui")
serverhopgui.Parent = game.CoreGui
local a = serverhopgui.Destroying:Connect(function()
    destroyed = true
end)
local mainframe = Instance.new("ScrollingFrame")
mainframe.Parent = serverhopgui
mainframe.Size = UDim2.new(.15,0,.6,0)
mainframe.Position = UDim2.new(.43,0,.175,0)
mainframe.Active = true
mainframe.Draggable = true
mainframe.BackgroundColor3 = Color3.fromRGB(60,60,60)
mainframe.BorderColor3 = Color3.fromRGB(255,255,255)
mainframe.ScrollBarImageTransparency = 0
local credits = Instance.new("TextLabel")
credits.Parent = mainframe
credits.Size = UDim2.new(.95,0,0,50)
credits.BackgroundColor3 = Color3.fromRGB(60,60,60)
credits.BorderColor3 = Color3.fromRGB(255,255,255)
credits.TextColor3 = Color3.fromRGB(255,255,255)
credits.TextScaled = true
credits.Text = [[Server Hopper
this only shows the first 100 servers thats the max sorry]]
local credits2 = Instance.new("TextLabel")
credits2.Parent = mainframe
credits2.Size = UDim2.new(.95,0,0,60)
credits2.BackgroundColor3 = Color3.fromRGB(60,60,60)
credits2.BorderColor3 = Color3.fromRGB(255,255,255)
credits2.TextColor3 = Color3.fromRGB(255,255,255)
credits2.TextScaled = true
credits2.Text = "Made By 2AreYouMental110, with some help from infinite yield"
local sort = Instance.new("UIListLayout")
sort.Parent = mainframe
function createserver(serverid,playing,max)
    local serverframe = Instance.new("Frame")
    serverframe.Parent = mainframe
    serverframe.Size = UDim2.new(.95,0,0,50)
    serverframe.BackgroundColor3 = Color3.fromRGB(60,60,60)
    serverframe.BorderColor3 = Color3.fromRGB(255,255,255)
    local joinbutton = Instance.new("TextButton")
    joinbutton.Parent = serverframe
    joinbutton.Size = UDim2.new(.5,0,.5,0)
    joinbutton.Position = UDim2.new(.5,0,0,0)
    joinbutton.TextColor3 = Color3.fromRGB(255,255,255)
    joinbutton.TextScaled = true
    joinbutton.BackgroundColor3 = Color3.fromRGB(0,255,0)
    joinbutton.BorderColor3 = Color3.fromRGB(255,255,255)
    joinbutton.Text = "Join Server"
    table.insert(joinfuncs,joinbutton.MouseButton1Click:Connect(function()
        tpservice:TeleportToPlaceInstance(game.PlaceId,serverid,game.Players.LocalPlayer)
    end))
    local playingtext = Instance.new("TextLabel")
    playingtext.Parent = serverframe
    playingtext.Size = UDim2.new(.5,0,.5,0)
    playingtext.BackgroundColor3 = Color3.fromRGB(60,60,60)
    playingtext.BorderColor3 = Color3.fromRGB(255,255,255)
    playingtext.TextColor3 = Color3.fromRGB(255,255,255)
    playingtext.TextScaled = true
    playingtext.Text = "Playing: "..tostring(playing)..max
    local idtext = Instance.new("TextLabel")
    idtext.Parent = serverframe
    idtext.Size = UDim2.new(1,0,.5,0)
    idtext.Position = UDim2.new(0,0,.5,0)
    idtext.BackgroundColor3 = Color3.fromRGB(60,60,60)
    idtext.BorderColor3 = Color3.fromRGB(255,255,255)
    idtext.TextColor3 = Color3.fromRGB(255,255,255)
    idtext.TextScaled = true
    idtext.Text = tostring(serverid)
    mainframe.CanvasSize = UDim2.new(0,0,(#mainframe:GetChildren()-1)*.0705,10)
end
function updatestorage()
    serverstorage = httpservice:JSONDecode(request({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", game.PlaceId)}).Body).data
    for i,v in pairs(mainframe:GetChildren()) do
        if v:IsA("Frame") then
            v:Destroy()
        end
    end
    for i,v in pairs(serverstorage) do
        if type(v) == "table" and v.id and v.maxPlayers and v.playing then
            if tonumber(v.playing) == tonumber(v.maxPlayers) then
                if v.id == game.PlaceId then
                    createserver(v.id,v.playing," (max + your server)")
                else
                    createserver(v.id,v.playing," (max)")
                end
            elseif tonumber(v.playing) < tonumber(v.maxPlayers) then
                if v.id == game.PlaceId then
                    createserver(v.id,v.playing," (your server)")
                else
                    createserver(v.id,v.playing,"")
                end
            end
        end
    end
end
while destroyed == false do
    wait(1)
    updatestorage()
end
a:Disconnect()
for i,v in pairs(joinfuncs) do
    v:Disconnect()
end