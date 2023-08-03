local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()

---- Windows
local window = library:Window("bed wars")

---- Buttons
window:Button("Inf Jumps", function()
   local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
 if InfiniteJumpEnabled then
  game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
 end
end)
end)

window:Button("vapev4", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

window:Button("keyboerd", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

window:Button("esp all", function()
   function ESP()
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then

                -- Create Box
                local Box = Instance.new("BoxHandleAdornment")
                Box.Size = v.Character.HumanoidRootPart.Size + Vector3.new(0.1, 0.1, 0.1)
                Box.Color3 = Color3.new(0, 0, 0)
                Box.AlwaysOnTop = true
                Box.ZIndex = 5
                Box.Adornee = v.Character.HumanoidRootPart
                Box.Parent = v.Character.HumanoidRootPart
            end
        end
    end

    -- Call ESP Function
    ESP()
end)