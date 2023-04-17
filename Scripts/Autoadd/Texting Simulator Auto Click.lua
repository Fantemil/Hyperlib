_G.autosend = true

while true do wait()
    if _G.autosend == true then
        game.ReplicatedStorage.Events.SendTexts:FireServer("Phone")
    end
end 