--Hat Giver Script
--//HatName//--
NameHat = "HatNameHere" --[[Dark Dex:
loadstring(game:HttpGet("https://pastebin.com/raw/LiT0AivK",true))()
]]
--//MeshPart & Texture//--
MeshID = "rbxassetid://IDHere" --https://www.roblox.com/games/7496952739
TextureId = "rbxassetid://IDHere" --https://www.roblox.com/games/7496952739
--//3D//--
Position = PastePositionHere
Orientation = PasteOrientationHere
Size = PasteSizeHere
--//Script//--
if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Maxgat5") then
    local a = Instance.new("BoolValue")
    a.Value = true
    a.Name = "Maxgat5"
    a.Parent = game:GetService("Players").LocalPlayer.Character
    getgenv().playerposition = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Position + Vector3.new(0,0,0)
end
getgenv().allow = true
if getgenv().allow == true then
    getgenv().allow = false
    Stop = true
    spawn(function()
        while wait() do
            if Stop == true then
                for i, track in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                	track:Stop()
                end
            end
        end
    end)
    local Controller = require(game.Players.LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule")):GetControls()
    Controller:Disable()
    local tweenInfo = TweenInfo.new(
    	0
    )
    local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
    	0,5,0
    )})
    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true
    t:Play()
    wait(1)
    --//Sheesh//--
    local Size1 = {x=0,y=0,z=0}
    local Position1 = {x=0,y=0,z=0}
    local Orientation1 = {x=0,y=0,z=0}
    --//3d//--
    for i,v in pairs(Size) do
        if i == 1 then
            Size1.x = v
        end
        if i == 2 then
            Size1.y = v
        end
        if i == 3 then
            Size1.z = v
        end
    end
    for i,v in pairs(Position) do
        if i == 1 then
            Position1.x = v
        end
        if i == 2 then
            Position1.y = v
        end
        if i == 3 then
            Position1.z = v
        end
    end
    for i,v in pairs(Orientation) do
        if i == 1 then
            Orientation1.x = v
        end
        if i == 2 then
            Orientation1.y = v
        end
        if i == 3 then
            Orientation1.z = v
        end
    end
    local plr = game.Players.LocalPlayer.Character
    local hat = plr[NameHat].Handle
    --//3d//--
    hat.Position = Vector3.new(Position1.x,Position1.y,Position1.z)
    hat.Orientation = Vector3.new(Orientation1.x,Orientation1.y,Orientation1.z)
    --//api//--
    hat.MeshId = MeshID
    hat.TextureID = TextureId
    --//trun everything back
    Controller:Enable()
    Stop = false
    local tweenInfo1 = TweenInfo.new(
    	0
    )
    local t1 = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo1, {CFrame = CFrame.new(
    	getgenv().playerposition
    )})
    t1:Play()
    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
    getgenv().allow = true
end