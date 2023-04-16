local trivia = {
    ["What is the capital of France?"] = "Paris",
    ["What is the largest continent in the world?"] = "Asia",
    ["Who wrote the Harry Potter series of books?"] = "J.K. Rowling",
    ["What is the currency of Japan?"] = "Yen",
    ["What is the smallest planet in our solar system?"] = "Mercury",
    ["Who was the first president of the United States?"] = "George Washington",
    ["What is the name of the world's largest ocean?"] = "Pacific Ocean",
    ["What is the chemical symbol for gold?"] = "Au",
    ["What is the highest mountain in the world?"] = "Mount Everest",
    ["What is the largest country in the world by land area?"] = "Russia",
    ["Which country gifted the Statue of Liberty to the United States?"] = "France",
    ["What is the name of the river that flows through Egypt?"] = "Nile",
    ["Who was the lead singer of the band Queen?"] = "Freddie Mercury",
    ["What is the currency of Brazil?"] = "Real",
    ["What is the chemical symbol for oxygen?"] = "O",
    ["What is the capital of Spain?"] = "Madrid",
    ["What is the smallest country in the world by land area?"] = "Vatican City",
    ["Which country is famous for inventing pizza?"] = "Italy",
    ["What is the name of the world's tallest animal?"] = "Giraffe",
    ["What is the currency of the United Kingdom?"] = "Pound sterling",
    ["What is the chemical symbol for carbon?"] = "C",
    ["Who won the FIFA Women's World Cup in 2019?"] = "United States",
    ["What is the capital of Australia?"] = "Canberra",
    ["Who wrote the book '1984'?"] = "George Orwell",
    ["What is the name of the currency used in China?"] = "Yuan",
    ["What is the largest mammal in the world?"] = "Blue whale",
    ["What is the chemical symbol for sodium?"] = "Na",
    ["Which planet in our solar system has the most moons?"] = "Jupiter",
    ["What is the name of the world's largest desert?"] = "Sahara",
    ["What is the name of the first satellite launched into space?"] = "Sputnik",
    ["What is the smallest country in the world by population?"] = "Vatican City",
    ["Who wrote the famous novel 'Pride and Prejudice'?"] = "Jane Austen",
    ["What is the name of the currency used in India?"] = "Rupee",
    ["What is the name of the world's largest land animal?"] = "Elephant",
    ["What is the chemical symbol for iron?"] = "Fe",
    ["Which planet in our solar system is the hottest?"] = "Venus",
    ["What is the name of the world's largest waterfall?"] = "Victoria Falls",
    ["What is the name of the first man to walk on the moon?"] = "Neil Armstrong",
}





local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
 Name = "Rate My Avatar Trivia",
 LoadingTitle = "Rate My Avatar Trivia",
 LoadingSubtitle = "by SippingSizzurp",
 ConfigurationSaving = {
  Enabled = true,
  FolderName = nil, -- Create a custom folder for your hub/game
  FileName = "Big Hub"
 },
        Discord = {
         Enabled = false,
         Invite = "", -- The Discord invite code, do not include discord.gg/
         RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
 KeySystem = false, -- Set this to true to use our key system
 KeySettings = {
  Title = "Sirius Hub",
  Subtitle = "Key System",
  Note = "Join the discord (discord.gg/sirius)",
  FileName = "SiriusKey",
  SaveKey = true,
  GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
  Key = "Hello"
 }
})

local Tab = Window:CreateTab("MAIN") -- Title, Image
local Tab1 = Window:CreateTab("CONFIG")

local Section = Tab1:CreateSection("Config")
local Section1 = Tab:CreateSection("Main")

local sec = 10
local Slider = Tab1:CreateSlider({
 Name = "Seconds",
 Range = {0, 100},
 Increment = 5,
 Suffix = "Second countdown",
 CurrentValue = 10,
 Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
  sec = Value
 end,
})

local randoquest = ""
local quest = ""
local an = ""
local Input = Tab1:CreateInput({
 Name = "Question",
 PlaceholderText = "What do you want to ask?",
 RemoveTextAfterFocusLost = false,
 Callback = function(Text)
     quest = Text
 end,
})

local run = false
local Button = Tab:CreateButton({
 Name = "START",
 Callback = function()
     
   
     if quest == "" then
         Rayfield:Notify({
        Title = "ANSWER:",
        Content = an,
        Duration = 6.5,
        Image = 4483362458,
        Actions = { -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                end
      },
     },
    })
         run = true
      local i = sec
      while i > 0 and run do
                game:GetService("ReplicatedStorage").CustomiseBooth:FireServer("Update",{["DescriptionText"] = string.format("%s Seconds remaining: %d", randoquest, i),["ImageId"] = 11592534076})
          i = i-1
          task.wait(1)
      end
      game:GetService("ReplicatedStorage").CustomiseBooth:FireServer("Update",{["DescriptionText"] = "TIMES UP!",["ImageId"] = 0})
      task.wait(3)
      game:GetService("ReplicatedStorage").CustomiseBooth:FireServer("Update",{["DescriptionText"] = string.format("The answer was: %s", an),["ImageId"] = 1524413150})
      task.wait(3)
      game:GetService("ReplicatedStorage").CustomiseBooth:FireServer("Update",{["DescriptionText"] = "Trivia Game: Step up to play!",["ImageId"] = 0})
      run = false
     else
         run = true
      local i = sec
      while i > 0 and run do
                game:GetService("ReplicatedStorage").CustomiseBooth:FireServer("Update",{["DescriptionText"] = string.format("%s Seconds remaining: %d", quest, i),["ImageId"] = 11592534076})
          i = i-1
          task.wait(1)
      end
      if run == true then
          game:GetService("ReplicatedStorage").CustomiseBooth:FireServer("Update",{["DescriptionText"] = "TIMES UP!",["ImageId"] = 0})
          task.wait(3)
          game:GetService("ReplicatedStorage").CustomiseBooth:FireServer("Update",{["DescriptionText"] = "Trivia Game: Step up to play!",["ImageId"] = 0})
          run = false
      end
     end
 end,
})

local Button2 = Tab:CreateButton({
 Name = "END EARLY",
 Callback = function()
  run = false
 end,
})

local Button3 = Tab1:CreateButton({
 Name = "RANDOM QUESTION",
 Callback = function()
     local keys = {}
     local values = {}
        for k, v in pairs(trivia) do
            table.insert(keys, k)
        end
        for k, v in pairs(trivia) do
            table.insert(values, v)
        end
  randoquest = keys[math.random(#keys)]
  an = trivia[randoquest]
  print(randoquest)
  print(an)
  
 end,
})