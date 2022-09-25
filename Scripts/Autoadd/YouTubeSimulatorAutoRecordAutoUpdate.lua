local client = game:GetService('Players').LocalPlayer
local items  = workspace.Studios[client.Name.."'s Studio"].Items

local remotes = {
    upgrade = game:GetService("ReplicatedStorage").buySD2; --// args1 | type | int
    record  = game:GetService("ReplicatedStorage").fileMade; --// arg0 | type | nil
    upload  = game:GetService("ReplicatedStorage").Edited; --// arg1 | type | instance/computer
    edit    = game:GetService("ReplicatedStorage").singleVideo --// arg1 | type | instance/computer
}
local fetch_computer = function(items)
    local temp = {}
    local int  = 0 
    local obj

    for _, v in next, items:GetChildren() do
        if v:FindFirstChild('Keyboard') then
            temp[v] = v.Keyboard.Value
        end
    end
    
    for k,v in next, temp do
        if v > int then
            obj = k ; int = v;
        end
    end
    
    temp = nil
    
    return obj
end

local ohNumber1 = 0

local computer = fetch_computer(items)

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "BUY SIRMEME HUB",
     Style = 1,
     SizeX = 400,
     SizeY = 335,
     Theme = "Dark"
})

local Page = UI.New({
    Title = "https://sirmemehub.com"
})

Page.Toggle({
    Text = "Auto-Record",
    Callback = function(bool)
        if bool then
            shared.farm = true
            computer = fetch_computer(items)
        else
            shared.farm = false
        end
    end
})

Page.Toggle({
    Text = "Auto-Upload",
    Callback = function(bool)
        if bool then
            shared.upload = true
            computer = fetch_computer(items)
        else
            shared.upload = false
        end
    end
})

Page.Toggle({
    Text = "Auto-Edit",
    Callback = function(bool)
        if bool then
            shared.edit = true
            computer = fetch_computer(items)
        else
            shared.edit = false
        end
    end
})

Page.Toggle({
    Text = "Auto-Upgrade",
    Callback = function(bool)
        if bool then
            shared.upgrade = true
        else
            shared.upgrade = false
        end
    end
})

Page.Slider({
    Text = "Amount to Upgrade",
    Callback = function(int)
        shared.upamount = int 
    end,
    Min = 100,
    Max = 5000,
    Def = 0
})

while true do
    if shared.farm and client.Recordings.Value < client.Space.Value then
        if client.Backpack:FindFirstChildOfClass('Tool') then
            client.Backpack.Camera.Parent = client.Character
        end
        remotes.record:FireServer()
    end

    if shared.upload or shared.edit then
        if shared.upload and shared.edit then 
            remotes.upload:FireServer(computer)
            remotes.edit:FireServer(computer)
        elseif shared.upload then
            remotes.upload:FireServer(computer)
        elseif shared.edit then
            remotes.edit:FireServer(computer)
        end
    end
    
    if shared.upamount and client.Money.Value >= shared.upamount and shared.upgrade then
        remotes.upgrade:FireServer(shared.upamount)
    end
    wait()
end