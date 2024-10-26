--[[
READ THIS BEFORE USING THE SCRIPT

Universal Invisible For R15 - developed by ss.spooky.ss#0003

Go to a place that no one can find you (Example: high moutains, hidden places)

You can edit the variables

May glitch jump
]]

-- Variables to edit

local destroy_almost_all_body = false
local remove_accessory = false

-- Script

local function InvisFunctionR15() -- invis function
	
	local function invisible()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do -- destroy lowertorso motor6d
			if v.Name == "LowerTorso" then
				for i, vv in pairs(v:GetChildren()) do
					if vv:IsA("Motor6D") then
						vv:Destroy()
					end
				end
			end
		end
	end
	
	local function destroy_all()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do -- destroy other motor6d
			if v.Name ~= "HumanoidRootPart" and v:IsA("MeshPart") then	
				for i, vv in v:GetChildren() do
					if vv:IsA("Motor6D") and v.Name ~= "Head" then
						vv:Destroy()
					end
				end

				if v.Name == "LowerTorso" then
					v:Destroy()
				end
			end
		end
	end
	
	local function remove_acessory_sc()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do -- destroy accesories
			if v:IsA("Accessory") then
				for i, vv in pairs(v:GetChildren()) do
					if vv.Name == "Handle" then
						for i, weld in pairs(vv:GetChildren()) do
							if weld:IsA("Weld") then
								weld:Destroy()
							end
						end
					end
				end
			end
		end
	end
	
	invisible()
	
	task.wait(1)
	
	if destroy_almost_all_body then
		destroy_all()
	end
	
	if remove_accessory then
		remove_acessory_sc()
	end
end

InvisFunctionR15()