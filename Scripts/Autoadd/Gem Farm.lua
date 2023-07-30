local isActive = true
local gemsFolder = game.Workspace:FindFirstChild("Gems")
local gemIndex = 1 

while true do
    if isActive and gemsFolder then
        local gem1 = gemsFolder:FindFirstChild("Gem" .. gemIndex)

        if gem1 then
          game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(gem1.CFrame)
            gemIndex = gemIndex + 1 
        else
            gemIndex = 1 
        end
    end
    wait(0.1) 
end