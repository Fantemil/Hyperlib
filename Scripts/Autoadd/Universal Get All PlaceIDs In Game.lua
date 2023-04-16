if not rconsoleprint then
    replaceclosure(rconsoleprint, print)
end
rconsoleprint("Script By 17F7O\n\n")
local GPlaces = game:GetService("AssetService"):GetGamePlacesAsync()
while true do
    for _, place in pairs(GPlaces:GetCurrentPage()) do
        rconsoleprint("Name: " .. place.Name .. "\n")
        rconsoleprint("PlaceId: " .. tostring(place.PlaceId) .. "\n")
    end
    if GPlaces.IsFinished then
        break
    end
    GPlaces:AdvanceToNextPageAsync()
end