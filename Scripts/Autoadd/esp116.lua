local BombImgSize = UDim2.new(10,0,10,0)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

function AddBillboard(character)
	local bombgui = Instance.new("BillboardGui",character:WaitForChild("HumanoidRootPart"))
	bombgui.Name = "BombGui"
	bombgui.ResetOnSpawn = false
	bombgui.Size = BombImgSize
	bombgui.StudsOffset = Vector3.new(0,8,0)
	bombgui.AlwaysOnTop = true
	local Image = Instance.new('ImageLabel',bombgui)
	Image.Name = "BombImg"
	Image.BackgroundTransparency = 1
	Image.Size = UDim2.new(1,0,1,0)
	Image.Image = "http://www.roblox.com/asset/?id=5705172034"
	return bombgui
end

function removePossibleGui(character)
	if character and character:FindFirstChild("HumanoidRootPart") then 
	    if character.HumanoidRootPart:FindFirstChild("BombGui") then
		    character.HumanoidRootPart.BombGui:Destroy()
		end
	end	
end

function checkForBomb(character)
    if character then 
        if character:FindFirstChild("Bomb") then
            return true
        end
    end
    return false
end

function checkForBombGui(character)
    if character and character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BombGui") then
        return true
    end
    return false
end

RunService.Heartbeat:Connect(function()
	for i,v in pairs(Players:GetPlayers()) do
		local Character = v.Character
		if Character then
		    if checkForBomb(Character) == true then
		        if not Character.HumanoidRootPart:FindFirstChild("BombGui") and v ~= LocalPlayer then
		            AddBillboard(Character)
		        end
		    elseif Character then
			    removePossibleGui(Character)
		    end
		end
	end
end)