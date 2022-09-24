-- if statements
if getgenv().loaded == true then
   return;
elseif game.PlaceId ~= 8737602449 then
   return;
elseif not game:IsLoaded() then
   game.IsLoaded:Wait()
end

-- settings
local settings = {
   AutoChat_Time = 30,
   AutoChat_Delay = 10,
   AutoChat = true,
   AntiAfk = true
}

-- table
local fortunes = {
"With integrity and consistency your credits are piling up.",
"Reach out your hand today to support others who need you.",
"It is not the outside riches bit the inside ones that produce happiness.",
"How dark is dark?, How wise is wise?",
"We can admire all we see, but we can only pick one.",
"The man who has no imagination has no wings.",
"To courageously shoulder the responsibility of one's mistake is character.",
"We can't help everyone. But everyone can help someone.",
"You discover treasures where others see nothing unusual.",
"Make all you can, save all you can, give all you can.",
"Understanding the nature of change, changes the nature.",
"You will be unusually successful in business.",
"Your spirit of adventure leads you down an exiting new path.",
"Genius is one percent inspiration and ninety-nine percent perspiration.",
"You are the master of every situation.",
"Be brave enough to live creatively.",
"Your ingenuity and imagination will get results.",
"Unnecessary possessions are unnecessary burdens.",
"Ability is not something to be shown off.",
"If you wish to see the best in others, show the best of yourself.",
"Your power is in your ability to decide.",
"Wherever you go, whenever you can, try to leave a gift.",
"Kind words can be shot and easy to speak, but their echoes are truly endless.",
"Your ingenuity and imagination will get results.",
"Age can never hope to with you while your heart is young.",
"Example is better than perception.",
"Idleness is the holiday of fools.",
"Don't be pushed by your problems. Be led by your dreams.",
"Many receive advice, only the wise profit from it.",
"You will have good luck and overcome many hardships.",
"A good way to keep healthy is to eat more Chinese food.",
"Today's profits are yesterday's good well ripened.",
"LSDBS - Let Something Good Be Said.",
"There is in the worst of fortunes the best change of a happy ending.",
"Service to many leads to greatness.",
"Desire, like the atom, is explosive with creative force.",
"I think and that is all that I am.",
"Judge each day not by the harvest you reap but by the seeds you plant.",
"Yesterday was a dare to struggle. Today is a dare to win.",
"Make everyday your best. You will improve yourself greatly.",
"You must be willing to act today in order to succeed.",
"Venture not all in one boat.",
"Suppressing a moment of anger may save a day of sorrow.",
"Never be less than your dreams.",
"The good times start when I count to 3: 1... 2... 3.",
"An inch of time is an inch of gold.",
"If you chase two rabbits both will escape.",
"You will soon be surrounded by good friends and laughter.",
"Haste does not bring success.",
"You will stumble into the path that will lead your life to happiness.",
"You will always be successful in you professional career.",
"Good news will come to you from far away.",
"Service is the rent you pay for having room on the Earth.",
"Be smart, but never show it.",
"The only certainty is that nothing is certain.",
"You or a close friend will be married soon.",
"We will not know the worth of water 'till the well is dry.",
"You are talented in many ways.",
"Do your best to make it happen",
"You will find great forces in unexpected places.",
"What you see in the mirror, and what you are can be two different images.",
"Excuses are easy to manufacture, and hard to sell.",
"Do onto others as you wish others do onto you.",
"Struggle as and hard as you can for whatever you believe in.",
"You have a pair of shining eyes.",
"You should be able to undertake and complete anything.",
"Your principles mean more to you than any money or success.",
"Forgiveness does not change the past, but it does enlarge the future.",
"Stand tall! Don't look down upon yourself.",
"Every truly great accomplishment is at first impossible.",
"Courage is not the absence of fear; it is the conquest of it.",
"Wise man seldom talks.",
"If you have a job without aggravations, you don't have a job.",
"You are broad minded and socially active.",
"Don't put off till tomorrow what can be enjoyed today."
}

-- vars
local players = game:GetService('Players')
local lp = players.LocalPlayer
local character = lp.Character:GetChildren()
local money = lp.leaderstats.Raised
local chatrem = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
local vu = game:GetService("VirtualUser")

-- not mine anti afk
lp.Idled:connect(function()
 if settings.AntiAfk then
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
 wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
 end
end)


-- functions
function randomf()
   if settings.AutoChat then
       task.wait(settings.AutoChat_Delay)
       chatrem:FireServer(tostring(fortunes[math.random(1,#fortunes)]), "All")
   end
end

function chatspam()
   while task.wait(settings.AutoChat_Time) do
       chatrem:FireServer('giving out fortune cookies to everyone who donates.', "All")
   end
end

task.spawn(chatspam)
money.Changed:Connect(randomf)

print('script loaded!')
getgenv().loaded = true