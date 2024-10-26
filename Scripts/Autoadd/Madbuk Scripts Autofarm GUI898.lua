--[[ thanhtam8765 AutoFarm (Execute alone)
getgenv().Toggle = true

local PutFoundHere = game.Players.LocalPlayer.PlayerGui.MainGui:FindFirstChild("PutFoundHere")

if PutFoundHere then
    PutFoundHere:Destroy()
end

while getgenv().Toggle do
    root = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if root then
        local proximityPrompt
        while not proximityPrompt do
            for i,v in next, game.Workspace.Morphs:GetDescendants() do
                if v.Name == "ProximityPrompt" and v.Parent.Transparency == 0 and v.MaxActivationDistance ~= 0 then
                    proximityPrompt = v
                    break
                end
            end
            if not proximityPrompt then
                task.wait()
            end
        end
        root.CFrame = CFrame.new(proximityPrompt.Parent.CFrame.X,proximityPrompt.Parent.CFrame.Y, proximityPrompt.Parent.CFrame.Z)
        task.wait()
        fireproximityprompt(proximityPrompt,15,true)
        game.Workspace.Camera.CFrame = proximityPrompt.Parent.CFrame
        game.ReplicatedStorage.RequestRebirth:InvokeServer(game.Players.LocalPlayer)
    else
        task.wait(1)
    end
    task.wait()
end
--]]

local MadbukLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/MadbukScripts/Madbuk-Library/main/GUI"))()

local main = MadbukLibrary:Init({
	name = "Find The Auras - Madbuk Scripts",
	intro = true,
	multiple = false,
	sounds = {
		hover = "rbxassetid://10066936758",
		click = "rbxassetid://10066936758",
		type = "rbxassetid://10066936758",
		start = "rbxassetid://4835664238",
		notify = "rbxassetid://3318722848"
	}
})

local tab = main:CreateTab({
	name = "Main",
	icon = "rbxassetid://13965544901"
})

local section = tab:CreateSection({
	name = "Main"
})


local button = tab:CreateButton({
	name = "Destroy Aura Found Notification",
	callback = function()
		if game.Players.LocalPlayer.PlayerGui.MainGui:FindFirstChild("PutFoundHere") then
            game.Players.LocalPlayer.PlayerGui.MainGui["PutFoundHere"]:Destroy()
        end
	end,
})

local toggle = tab:CreateToggle({
	name = "Get All Auras",
	callback = function(value)
        getgenv().aura = value
        while aura and task.wait(5) do
            local auras = {}
            for i,v in next, game.Players.LocalPlayer.PlayerGui.MainGui.Morphs.List:GetChildren() do
                if v:IsA("Frame") then
                    if v.lock.ImageTransparency ~= 1 and v.rebirth.ImageTransparency == 1 and workspace.Morphs[v.Name].ProximityPrompt.MaxActivationDistance ~= 0 then
                        table.insert(auras, v.Name)
                    end
                end
            end

            for i,v in next, auras do
                while workspace.Morphs[v].Transparency ~= 1 do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Morphs[v].CFrame + Vector3.new(0,3,0)
                    if workspace.Morphs[v].ProximityPrompt then
                        fireproximityprompt(workspace.Morphs[v].ProximityPrompt, 15, true)
                    end
                    for i,v in next, game.Players.LocalPlayer.PlayerGui:GetChildren() do
                        if v.Name == "ConfettiCannon" then v:Destroy() end
                    end
                    task.wait()
                end
            end
        end
	end,
})

local toggle = tab:CreateToggle({
	name = "Auto Rebirth",
	callback = function(value)
		getgenv().val = value
		while val and task.wait(5) do
            game.ReplicatedStorage.RequestRebirth:InvokeServer(game.Players.LocalPlayer)
        end
	end,
})
