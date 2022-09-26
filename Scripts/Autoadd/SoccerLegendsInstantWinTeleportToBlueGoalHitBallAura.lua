local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stebulous/solaris-ui-lib/main/source.lua"))()

--[[SolarisLib:New({
  Name - Title of the UI <string>
  FolderToSave - Name of the folder where the UI files will be stored <string>
})]]
local win = SolarisLib:New({
  Name = "⚽ Soccer Legends [BETA]",
  FolderToSave = "SolarisLibStuff"
})

--win:Tab(title <string>)
local tab = win:Tab("Main")

--tab:Section(title <string>)
local sec = tab:Section("BLUE TEAM")



--sec:Toggle(title <string>,default <boolean>, flag <string>, callback <function>)
local toggle = sec:Toggle("Hit Ball Aura", false,"Toggle", function(t)
 if t then
        _G.name1 = true 
        while _G.name1 == true do wait() 
            local args = {
                [1] = workspace.Balls.Ball,
                [2] = CFrame.new(-359.1267395019531, 6.249998569488525, -432.1331481933594) * CFrame.Angles(-0, -1.4729949235916138, -0),
                [3] = 9999999999999
            }
            
            game:GetService("ReplicatedStorage").RE.React:FireServer(unpack(args))
        end
    else -- else false
        _G.name1 = false -- makes it stop lol
        while _G.name1 == true do wait() -- change "name" to smth xd
            print('stopped')
        end
    end
end)

sec:Button("Teleport to the middle", function()
    local TweenService = game:GetService("TweenService")

local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-270.031067, 6.24999857, -454.614899, -0.0129166646, 1.15874832e-09, -0.999916553, -5.67308645e-09, 1, 1.23212851e-09, 0.999916553, 5.68852787e-09, -0.0129166646)}):Play()
end)


sec:Button("Teleport to blue goal", function()
    local TweenService = game:GetService("TweenService")

local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-387.8508, 6.24999857, -456.123566, 2.56034099e-13, -2.20460894e-08, -1, 1.88401028e-08, 1, -2.20460894e-08, 1, -1.88401028e-08, 2.56449457e-13)}):Play()
end)

sec:Button("Teleport to red goal", function()
    local TweenService = game:GetService("TweenService")

local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-159.741608, 6.24999857, -454.404205, -0.0163953695, 4.71943595e-09, -0.999865592, 8.44441459e-08, 1, 3.3353913e-09, 0.999865592, -8.43781081e-08, -0.0163953695)}):Play()
end)

sec:Button("Instant win [EXECUTE AFTER THE MATCH BEGINS]", function()
    local TweenService = game:GetService("TweenService")

local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-159.741608, 6.24999857, -454.404205, -0.0163953695, 4.71943595e-09, -0.999865592, 8.44441459e-08, 1, 3.3353913e-09, 0.999865592, -8.43781081e-08, -0.0163953695)}):Play()
end)