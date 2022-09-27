--SexSource
--SizzWub
--By Sizz#0880
--Dont Steal My Shit Skids

local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stebulous/solaris-ui-lib/main/source.lua"))()

local win = SolarisLib:New({
  Name = "SizzWub | By Sizz#0880",
  FolderToSave = "SolarisLibStuff"
})

local tab = win:Tab("Main")

local sec = tab:Section("Stuff")

sec:Button("Copy Long Answer", function()
    setclipboard(game:GetService("ReplicatedStorage").HintAnswer.Value)
end)

sec:Button("Long Answer", function()
    game:GetService("ReplicatedStorage").SubmittedAnswer:FireServer(game:GetService("ReplicatedStorage").HintAnswer.Value)
end)

getgenv().auto1 = false
local toggle = sec:Toggle("Long Answer", false,"Toggle", function(t)
    getgenv().auto1 = t
    spawn(function()
        while auto1 == true do 
            wait()
            game:GetService("ReplicatedStorage").SubmittedAnswer:FireServer(game:GetService("ReplicatedStorage").HintAnswer.Value)
        end
    end)
end)

sec:Textbox("Block Amount", false, function(t)
  _G.bloacks = t
end)

sec:Button("Add Blocks", function()
    game:GetService("ReplicatedStorage").SubmittedAnswer:FireServer(game:GetService("ReplicatedStorage").HintAnswer.Value, _G.bloacks)
end)

sec:Textbox("Question Text", false, function(t)
  _G.Text = t
end)

sec:Button("Set Text", function()
    game:GetService("ReplicatedStorage").QuestionTag.Value = _G.Text
end)

local dropdown = sec:Dropdown("Mode", {"Easy","Normal","Hard"},"","Dropdown", function(t)
  _G.Mode = t
end)

sec:Button("Set Mode", function()
    game:GetService("ReplicatedStorage").SelectedMode.Value = _G.Mode
end)

local toggle = sec:Toggle("Water Rising", false,"Toggle", function(t)
    game:GetService("ReplicatedStorage").waterRising.Value = t
end)