local singlekey = "G" -- kills nearest mob

--some setup
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService('UserInputService')

local LocalPlayer = game:GetService('Players').LocalPlayer

local mobs = game:GetService("Workspace").Monster

local function getNearestMob()
   local closest
   local closestmagnitude

   for _,mob in pairs(mobs:GetChildren()) do
       local distance = LocalPlayer:DistanceFromCharacter(mob.PrimaryPart.Position)
       if closest and distance < closestmagnitude then
           closestmagnitude = distance
           closest = mob
       elseif not closest then
           closestmagnitude = distance
           closest = mob
       end
   end
   return closest
end

StarterGui:SetCore("SendNotification", {
   Title = "Legned Piece Kill mob";
   Text = "Made by: CompileError"
})

--the script

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
   if not gameProcessedEvent then
       local keycode = input.KeyCode
       if input.UserInputType == Enum.UserInputType.Keyboard then
           local keycode = input.KeyCode
           if keycode == Enum.KeyCode[singlekey] then
               local mob = getNearestMob()
               mob.UpperTorso:Destroy() --insta kill I know so difficult the most complex script
               StarterGui:SetCore("SendNotification", {
                   Title = "killed nearest mob";
                   Text = "/me dabs"
               })
           end
       end
   end
end)