local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()
local w = library:Window("Time Brawl | Coyx")
local orbsEnabled = false
local killauraEnabled = false
local reach = 1000
local walkspeed = 16

local player = game.Players.LocalPlayer
local targetPlayerName = ""

local function tool(parent)
    for _, item in pairs(parent:GetChildren()) do
        if item:IsA("Tool") then
            return item
        end
    end
    return nil
end

w:Button("Disable Anticheat [PERM]", function()
    while true do
		local sword = tool(workspace:FindFirstChild(player.Name))
		local backpacksword = tool(player.Backpack)
		local feed = player.PlayerGui:FindFirstChild("Kill Feed")

		if sword and sword:FindFirstChild("Anti-reach") then
			sword["Anti-reach"]:Destroy()
		end

		if backpacksword and backpacksword:FindFirstChild("Anti-reach") then
			backpacksword["Anti-reach"]:Destroy()
		end

		if feed and feed:FindFirstChild("Frame") and feed.Frame:FindFirstChild("LocalScript") then
			feed.Frame.LocalScript:Destroy()
		end
		
		wait()
	end
end)

w:Toggle("AFK Orbs", false, function(state)
    orbsEnabled = state
    if state then
        spawn(function()
            local function getOrb(tool)
                if tool:FindFirstChild("Handle") then
                    local handle = tool.Handle
                    if handle:FindFirstChild("TouchInterest") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, handle, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, handle, 1)
                    end
                end
            end

            local function orbStuff()
                local orbs = workspace.Game.World.Interview.Table["Meeting Table"].Model2.Model2.TableEnds.ExtraParts
                
                for _, tool in pairs(orbs:GetChildren()) do
                    if tool:IsA("Tool") then
                        getOrb(tool)
                    end
                end
            end

            local function toolStuff()
                local player = game.Players.LocalPlayer
                local backpack = player.Backpack
                local character = player.Character
                local humanoid = character:FindFirstChildOfClass("Humanoid")

                for _, tool in pairs(backpack:GetChildren()) do
                    if tool:IsA("Tool") and string.match(tool.Name, "^%+%d+") then
                        humanoid:EquipTool(tool)
                        if tool:FindFirstChild("Handle") then
                            wait(0.2)
                            tool:Activate()
                        end
                        wait(0.3)
                    end
                end
            end

            while orbsEnabled do
                orbStuff()
				toolStuff()
                wait(0.1)
            end
        end)
    end
end)

w:Toggle("Killaura", false, function(state)
    killauraEnabled = state
    if state then
        spawn(function()
            while killauraEnabled do
                local players = game.Players:GetPlayers()
                for i = 2, #players do
					local target = players[i]
					local safezone = target:FindFirstChild("safe")
                    local targetChar = players[i].Character
					if safezone and safezone.Value == 0 then
						if targetChar and targetChar:FindFirstChild("Humanoid") and targetChar.Humanoid.Health > 0 and targetChar:FindFirstChild("HumanoidRootPart") and player:DistanceFromCharacter(targetChar.HumanoidRootPart.Position) <= reach then
							local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
							if tool and tool:FindFirstChild("Handle") then
								for _, part in ipairs(targetChar:GetChildren()) do
									if part:IsA("BasePart") then
										firetouchinterest(tool.Handle, part, 0)
										firetouchinterest(tool.Handle, part, 1)
									end
								end
							end
						end
					end
                end
                wait(0.1)
            end
        end)
    end
end)

w:Box("Killaura Reach", function(text, focuslost)
   if focuslost then
       reach = tonumber(text) or reach
       print("[COYX] Reach: " .. reach)
   end
end)

w:Box("Walkspeed", function(text, focuslost)
   if focuslost then
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(text) or walkspeed
       print("[COYX] Walkspeed: " .. walkspeed)
   end
end)

w:Box("Hitman Target", function(text, focuslost)
    if focuslost then
        targetPlayerName = text
        print("[HITMAN] Target: " .. targetPlayerName)
    end
end)

w:Button("Start Hitman", function()
    if targetPlayerName ~= "" then
        local target = game.Players:FindFirstChild(targetPlayerName)
        if target and target.Character then
            local targetHumanoid = target.Character:FindFirstChild("Humanoid")
            local targetHRP = target.Character:FindFirstChild("HumanoidRootPart")

            if targetHumanoid and targetHRP then
                spawn(function()
                    local originalPosition = player.Character.HumanoidRootPart.CFrame

                    while targetHumanoid.Health > 0 and target:FindFirstChild("safe").Value == 0 do
                        player.Character.HumanoidRootPart.CFrame = CFrame.new(targetHRP.Position + Vector3.new(0, 100, 0))

                        local tool = player.Character:FindFirstChildOfClass("Tool")
                        if tool and tool:FindFirstChild("Handle") then
                            for _, part in ipairs(target.Character:GetChildren()) do
                                if part:IsA("BasePart") then
                                    firetouchinterest(tool.Handle, part, 0)
                                    firetouchinterest(tool.Handle, part, 1)
                                end
                            end
                        end

                        wait(0.1)
                    end

                    player.Character.HumanoidRootPart.CFrame = originalPosition
                    print("[HITMAN] Returned to original position")
                end)
            else
                print("[HITMAN] Target is either in safezone or does not exist (dead)")
            end
        else
            print("[HITMAN] Target not found")
        end
    else
        print("[HITMAN] No name set")
    end
end)

-- Anti-AFK Setup
local VirtualUser = game:service("VirtualUser")
game:service("Players").LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)