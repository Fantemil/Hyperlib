-- made a few months back, unpatched and rewritten recently

--// ENV 

local getupvalues = getupvalues or debug.getupvalues 
local getinfo = getinfo or debug.getinfo 
local getconstants = getconstants or debug.getconstants
local getupvalue = getupvalue or debug.getupvalue

--// UI Init

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Introvert1337/Releases/master/Utilities/Epic_Thing_Library.lua"))()

local Window = Library:Window("Funky Friday")
local AutoplayTab = Window:Tab("Autoplayer")
local AutoplaySection = AutoplayTab:Section("Autoplay")

--// Variables 

local Autoplayer = {}
local Variables = {}

do 
    Variables.ReleaseDelay = 10 
    
    Variables.Keys = {
        "Left",
        "Down",
        "Up",
        "Right"
    }

    Variables.Pressed = {}
    Variables.Constants = {}
    Variables.NoteAccuracy = {}

    Variables.Percentages = {
        ["Sick"] = 100,
        ["Good"] = 0,
        ["Ok"] = 0,
        ["Bad"] = 0,
        ["Miss"] = 0
    }

    Variables.Constants.DISTANCE_TO_ACCURACY = {
        ["Sick"] = 0.03,
        ["Good"] = 0.07,
        ["Ok"] = 0.12,
        ["Bad"] = 0.16,
        ["Miss"] = 0.31
    }

    Variables.Constants.ACCURACY_NAMES = {
        "Sick", 
        "Good", 
        "Ok", 
        "Bad",
        "Miss"
    }

    Variables.Autoplay = false
    Variables.Random = Random.new()
end

--// Functions

do 
    function Autoplayer:GetDirection(Position)
        return Variables.Keys[Position - 3] or Variables.Keys[Position + 1]
    end 

    function Autoplayer:GetDistance(Time)
        return math.abs(Time - Variables.Framework.SongPlayer.CurrentlyPlaying.TimePosition)
    end

    function Autoplayer:IsValidDistance(Distance, Arrow)
        if Variables.NoteAccuracy[Arrow] then 
            return Distance <= Variables.NoteAccuracy[Arrow]
        end
            
        local Accuracy = Autoplayer:GetHitAccuracy() 

        Variables.NoteAccuracy[Arrow] = Variables.Constants.DISTANCE_TO_ACCURACY[Accuracy]

        return Distance <= Variables.Constants.DISTANCE_TO_ACCURACY[Accuracy]
    end 
    
    function Autoplayer:GetNote(Arrow)
        for Index, Note in next, Variables.NoteArray do 
            if Note.Side == Arrow.Side and Note.Position == Arrow.Position then 
                return Note 
            end 
        end
    end

    function Autoplayer:PressKey(Direction, Arrow)
        local Note = Autoplayer:GetNote(Arrow)

        Variables.Pressed[Arrow] = true

        Note:Press(true, Arrow, Arrow.Index)

        local ReleaseDelay = Variables.ReleaseDelay / 1000

        if Arrow.Data.Length > 0 then
            wait(Arrow.Data.Length + ReleaseDelay)
        else
            wait(0.05 + ReleaseDelay)
        end

        Note:Press(false)
    end

    function Autoplayer:IsPressed(Arrow)
        return Variables.Pressed[Arrow]
    end
        
    function Autoplayer:GetHitAccuracy()
        local Percentages = Variables.Percentages
        
        table.sort(Percentages, function(First, Next)
            return First > Next
        end)
        
        local Total = 0 
        
        for Index, Percentage in next, Percentages do 
            Total = Total + Percentage
        end
        
        if Total == 0 then 
            return Percentages[Variables.Random:NextInteger(1, 5)]
        end
        
        local StartValue = Variables.Random:NextInteger(0, Total - 1)
        local PercentageValue = 0 
        
        for Index, Percentage in next, Percentages do 
            PercentageValue = PercentageValue + Percentage
            
            if PercentageValue > StartValue then 
                return Index 
            end
        end
        
        return "Sick"
    end
end

--// Fetch Game Utilities

for Index, Value in next, getgc(true) do
    if type(Value) == "table" and rawget(Value, "GameUI") then
        Variables.Framework = Value
    elseif type(Value) == "function" and islclosure(Value) and getinfo(Value).source:find("Arrows") then
 local Constants = getconstants(Value)

 if table.find(Constants, "ReceptorPressed") and table.find(Constants, "Default") then 
     Variables.NoteArray = getupvalue(Value, #getupvalues(Value))
 end 
    end
end

--// Main Autoplayer Loop 

game:GetService("RunService").Heartbeat:Connect(function()
    if Variables.Autoplay then
        for Index, Arrow in next, Variables.Framework.UI.ActiveSections do
            if Arrow.Side == Variables.Framework.UI.CurrentSide then 
                local Direction = Autoplayer:GetDirection(Arrow.Data.Position)
                local Distance = Autoplayer:GetDistance(Arrow.Data.Time)

                if Autoplayer:IsValidDistance(Distance, Arrow) and not Autoplayer:IsPressed(Arrow) then 
                    Autoplayer:PressKey(Direction, Arrow)
                end
            end 
        end
    end
end)

--// UI Options

AutoplaySection:Toggle("Autoplayer", false, function(Value)
    Variables.Autoplay = Value
end)

AutoplaySection:Slider("Release Delay", {min = 0, max = 200, default = 10}, function(Value)
    Variables.ReleaseDelay = Value
end)

for Index, Accuracy in next, Variables.Constants.ACCURACY_NAMES do 
    AutoplaySection:Slider(Accuracy .. " Percentage", {min = 0, default = Accuracy == "Sick" and 100 or 0, max = 100}, function(Value)
        Variables.Percentages[Accuracy] = Value
    end)
end