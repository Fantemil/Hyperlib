--this script gives u free items in the insane elevator testing
--disclaimer: dont skid, plus blue and cyan weapon deals damage
--if u want to get free in-game dominus too then set dominusneeded's value to true instead of false
local dominusneeded = false
function saltyguy(hm)
	if dominusneeded then
		return false --makes dominus not a salty guy
	else
		local idontlikethisguy = false
		if hm:FindFirstChild("Handle") then
            if hm.Handle.Mesh.MeshId == "rbxassetid://5320411928" then
				idontlikethisguy = true
		end
        end
		return idontlikethisguy
	end
end
for i, v in next, workspace.Lobby:GetChildren() do
	if v.Name == "ItemStand" then
		if v:FindFirstChild("Hexagon1") then
			if v.Hexagon1.Color ~= Color3.fromRGB(0, 255, 0) then
				spawn(function()
					if saltyguy(v) == false then
						firetouchinterest(game.Players.LocalPlayer.Character.Head,v.Giver,false)
					end
				end)
			end
		end
	end
end
for i, v in next, workspace:GetChildren() do
	if v.Name == "ItemStand" then
		if v:FindFirstChild("Hexagon1") then
			if v.Hexagon1.Color ~= Color3.fromRGB(0, 255, 0) then
				spawn(function()
					if saltyguy(v) == false then
						firetouchinterest(game.Players.LocalPlayer.Character.Head,v.Giver,false)
					end
				end)
			end
		end
	end
end