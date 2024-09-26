-- Anti-AFK Script
-- Bu script, karakteri hareketli tutarak AFK olmaktan kaÃ§Ä±nmanÄ±zÄ± saÄlar

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

-- KullanÄ±cÄ±ya saÄa ve sola dÃ¶ndÃ¼rme hareketleri uygular
local function preventAFK()
    while true do
        -- Karakterin hareketli kalmasÄ±nÄ± saÄlamak iÃ§in bazÄ± iÅlemler
        if Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            local humanoid = Players.LocalPlayer.Character.Humanoid
            humanoid:Move(Vector3.new(0, 0, 0)) -- Hareket kodu
        end
        
        -- Belirli bir sÃ¼re bekleyin
        wait(10) -- Bu sÃ¼reyi ayarlayabilirsiniz (saniye cinsinden)
        
        -- Ekrandaki iÅlemleri harekete geÃ§irin
        UserInputService.InputBegan:Fire({KeyCode = Enum.KeyCode.W}) -- W tuÅuna basma
        wait(0.1)
        UserInputService.InputEnded:Fire({KeyCode = Enum.KeyCode.W}) -- W tuÅunu bÄ±rakma
        wait(0.1)
    end
end

-- Scripti baÅlat
preventAFK()
