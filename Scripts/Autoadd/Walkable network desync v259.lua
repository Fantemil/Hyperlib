local Enabled = false; -- // Do Not Change \\
local Keybind = "X" -- // Enum Keycode [Your keybind which is the variable] \\
local Delay = 1 -- // Measured in ms (1 second / 1000) \\
local Interval = 5 -- // How much you want the interval to be \\

-- //  DO NOT EDIT BELOW WITHOUT KNOWING WHAT YOU'RE DOING  \\

local OldTick      = 0
local Sleeping     = false  

local RunService   = game:GetService("RunService");
local InputService = game:GetService("UserInputService");

local LocalPlayer  = game.Players.LocalPlayer; 
local Round        = math.floor; 

local Indicator    = Drawing.new("Text");
Indicator.Visible  = true;
Indicator.Position = Vector2.new(50, 100);
Indicator.Text     = "Enabled: false";
Indicator.Color    = Color3.new(1, 1, 1);
Indicator.Outline  = true;

local SetProperty  = sethiddenproperty; 


local lp = game.Players.LocalPlayer

function Desync()
    task.spawn(function()
        while Enabled do
            task.wait()
            if LocalPlayer.Character then 
                local loop = RunService.Heartbeat:Connect(function()
                    SetProperty(LocalPlayer.Character.HumanoidRootPart, "NetworkIsSleeping", true)
                    task.wait()
                    SetProperty(LocalPlayer.Character.HumanoidRootPart, "NetworkIsSleeping", false)
                    task.wait()
                    SetProperty(LocalPlayer.Character.HumanoidRootPart, "NetworkIsSleeping", true)
                    task.wait()
                    SetProperty(LocalPlayer.Character.HumanoidRootPart, "NetworkIsSleeping", false)
                    task.wait()
                    SetProperty(LocalPlayer.Character.HumanoidRootPart, "NetworkIsSleeping", false)
                    task.wait()
                    SetProperty(LocalPlayer.Character.HumanoidRootPart, "NetworkIsSleeping", false)
                    task.wait()
                    SetProperty(LocalPlayer.Character.HumanoidRootPart, "NetworkIsSleeping", true)
                    task.wait()
                    SetProperty(LocalPlayer.Character.HumanoidRootPart, "NetworkIsSleeping", true)
                    task.wait()
                end) 
                task.wait()
                if loop then
                    loop:Disconnect()
                end 
            end 
        end
    end)
end

InputService.InputBegan:Connect(function(Key, ProcessedEvent)
    if Key.KeyCode == Enum.KeyCode[Keybind] then 
        Enabled = not Enabled 
        if Enabled then
            Desync()
        end 
        Indicator.Text = "Enabled: " .. tostring(Enabled) .. ""
    end 
    -- 
    if Key.KeyCode == Enum.KeyCode.Equals then 
        Delay += Interval
    end 
    -- 
    if Key.KeyCode == Enum.KeyCode.Minus then 
        if Delay - Interval > 0 then 
            Delay -= Interval
        else 
            Delay = 0 
        end 
    end 
end)