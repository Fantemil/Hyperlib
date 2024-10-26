local switchdelay = 4

local wrk = game:GetService("Workspace")
local plr = game:GetService("Players").LocalPlayer

local folder = wrk:FindFirstChild("MAP")
local folder2 = folder:FindFirstChild("WanderingSouls")

local f1 = folder:GetChildren()
local f2 = folder2:GetChildren()

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "â¶ Lost Souls â",
	LoadingTitle = "Loading...",
	LoadingSubtitle = "by Agreed ð¥µ",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = "lostsouls",
		FileName = "byAgreed"
	},
})

local Main = Window:CreateTab("Main")

local Toggle = Main:CreateToggle({
    Name = "Wandering Soul Farm",
    CurrentValue = false,
    Flag = "",
    Callback = function(Value)
        _G.farm = Value
        if Value then
            Rayfield:Notify({Title = "Wandering Soul Farm", Content = "Enabled", Duration = 1, Image = 4483362458,})
        elseif not Value then
            Rayfield:Notify({Title = "Wandering Soul Farm", Content = "Disabled", Duration = 1, Image = 4483362458,})
        end
        while _G.farm do
            if folder then
                for _, v in ipairs(f1) do
                    if v.Name == "WanderingSoul" then
                        if not _G.farm then break end
                        local hrp = v:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            hrp.ProximityPrompt.HoldDuration = 0
                            plr.Character:MoveTo(hrp.Position)
                            wait(0.2)
                            if hrp then
                                fireproximityprompt(hrp.ProximityPrompt)
                            end
                        end
                        wait(switchdelay)
                    end
                end
            end
            if folder2 then
                for _, v in ipairs(f2) do
                    if v.Name == "WanderingSoul" then
                        if not _G.farm then break end
                        local hrp = v:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            hrp.ProximityPrompt.HoldDuration = 0
                            plr.Character:MoveTo(hrp.Position)
                            wait(0.2)
                            if hrp then
                                fireproximityprompt(hrp.ProximityPrompt)
                            end
                        end
                        wait(switchdelay)
                    end
                end
            end
            wait()
        end
    end
})

local Slider = Main:CreateSlider({
	Name = "Delay",
	Range = {0, 10},
	Increment = .1,
	CurrentValue = 4,
	Flag = "",
	Callback = function(Value)
        switchdelay = Value
	end,
})