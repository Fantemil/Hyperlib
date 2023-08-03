
local library = loadstring(game:HttpGet("https://pastebin.com/raw/CkyR8ePz", true))()

local Gui = library:CreateWindow('Titan Game')

-- Variables
local Plr = game:GetService("Players").LocalPlayer
local Dmg = game:GetService("ReplicatedStorage").DamageEvent
local Cut = game:GetService("ReplicatedStorage").CutLimbsEvent

-- Functions
local function IsNear(Part)
    if (Part.Position - Plr.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 75 then
        return true
	end
end

Gui:Section("Made by Anasusxz")

-- Inf gas and no blade break
Gui:Button('Infinite Gas and Blades', function()
    local Old
    Old = hookmetamethod(game, "__namecall", function(self,...)

        if getnamecallmethod() == "FireServer" and not checkcaller() then

            if tostring(self) == "BladeDurEvent" or tostring(self) == "GasDepleteEvent" then
                return nil
            end
        end

       return Old(self, ...)
   end)

end)

Gui:Toggle("Kill Aura", {flag = "KillAura"})

-- kill aura
spawn(
    function()
        while task.wait() do
            if Gui.flags.KillAura then
                for i, v in next, workspace:GetChildren() do
                    if
                        v.Name == "Titan" and v:FindFirstChild("NapeHitbox") and v:FindFirstChild("Humanoid") and
                            Plr.Character ~= nil and
                            Plr.Character:FindFirstChild("HumanoidRootPart")
                     then

                        if IsNear(v.NapeHitbox) == true and v:FindFirstChild("Humanoid").Health ~= 0 then

                                local args = {
                                   [2] = v:FindFirstChild("Humanoid"),
                                   [3] = "&@&*&@&",
                                   [4] = v
								}

                                 Dmg:FireServer(unpack(args))
                        end
                    end
                end
            end
        end
    end
)

Gui:Toggle("Cut limbs aura", {flag = "Detitanize"})

--Destroys limbs
spawn(
    function()
        while task.wait() do
            if Gui.flags.Detitanize then
                for i, v in next, workspace:GetChildren() do
                    if
                        v.Name == "Titan" and v:FindFirstChild("NapeHitbox") and v:FindFirstChild("Humanoid") and
                            Plr.Character ~= nil and
                            Plr.Character:FindFirstChild("HumanoidRootPart")
                     then

                        if IsNear(v.NapeHitbox) == true and v:FindFirstChild("Humanoid").Health ~= 0 then
							     Cut:FireServer("Left Arm", v, "&@&*&@&")
                                 Cut:FireServer("Right Arm", v, "&@&*&@&", "Right Shoulder")
							     Cut:FireServer("Left Arm", v, "&@&*&@&", "Left Shoulder")
								 Dmg:FireServer("Blind", v:FindFirstChild("Humanoid"), "&@&*&@&", v)
								 
                        end
                    end
                end
            end
        end
    end
)