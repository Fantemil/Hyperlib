local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "what name", HidePremium = false, SaveConfig = true, ConfigFolder = "SubPlaces"})
local Tab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local selected
local Dropdown = Tab:AddDropdown({
	Name = "Select Place",
	Default = nil,
	Options = {},
	Callback = function(Value) 
		selected = Value:match("%d+")
	end
})
Tab:AddButton({
	Name = "Teleport to Selected Game",
	Callback = function() 
		if selected then
			game:GetService("TeleportService"):Teleport(tonumber(selected), game.Players.LocalPlayer)
		end
	end
})
local pages = game:GetService("AssetService"):GetGamePlacesAsync()
local places = {}
while task.wait() do
	for _,place in pairs(pages:GetCurrentPage()) do
		table.insert(places, place.Name .. " (ID: " .. tostring(place.PlaceId) .. ")")
	end
	if pages.IsFinished then break end
	pages:AdvanceToNextPageAsync()
end
Dropdown:Refresh(places, true)
OrionLib:Init()