local stages = game:GetService("Workspace").Stages:GetChildren()
local plr = game:GetService("Players").LocalPlayer
local dmgPart = game:GetService("Workspace").BossParts.FairyDusts
local stage = plr.leaderstats.Stage.Value
local newstage = stage

local function findNext(stage)
    local nextStage = string.format("%02d", stage + 1)

    for _, v in ipairs(stages) do
        if v.Name == nextStage then
            return v
        end
    end
    return nil
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "Wings Obby",
	LoadingTitle = "Loading...",
	LoadingSubtitle = "by Agreed",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = "aeaeaea",
		FileName = "asdasd"
	},
})

local Main = Window:CreateTab("Main", 4483362458)

local Toggle = Main:CreateToggle({
	Name = "Auto Complete",
	CurrentValue = false,
	Flag = "ac",
	Callback = function(Value)
        _G.autocomplete = Value
        while _G.autocomplete do
            local next = findNext(newstage)
            
            if next then
                if next:FindFirstChild("Checkpoint") then
                    plr.Character.HumanoidRootPart.CFrame = next.Checkpoint.CFrame
                else
                    print("No checkpoint")
                end
        
                newstage = newstage + 1
                wait(0.2)
            else
                print("Finished Auto Complete!")
                _G.autocomplete = false
            end
        end
	end,
})

local Toggle = Main:CreateToggle({
	Name = "Kill Boss",
	CurrentValue = false,
	Flag = "akb",
	Callback = function(Value)
        _G.killboss = Value
        if stage == 44 then
            while _G.killboss do 
                for _, v in ipairs(dmgPart:GetChildren()) do
                    plr.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait(0.1)
                    plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame + Vector3.new(0, 1000, 0)
                    wait()
                end
                wait(1)
                if stage == 45 then
                    plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame - Vector3.new(0, 1000, 0)
                    print("Finished Killing Boss!")
                    _G.killboss = false
                end
            end
        else
            print("You aren't in the boss stage!")
            _G.killboss = false
        end
	end,
})