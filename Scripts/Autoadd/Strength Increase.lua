--[[ Variables ]]
local PS = game:GetService("Players")
local LocalPlayer = PS.LocalPlayer
local GameMt = getrawmetatable(game)
setreadonly(GameMt, false)
local OldIndex = GameMt.__index

GameMt.__index = function(Self, Key)
if not checkcaller() and Self then
       if Key == "WalkSpeed" then
   return 16
       elseif Key == "JumpPower" then
           return 24
       end
end

return OldIndex(Self, Key)
end

LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = 28

function Int()
   for i,v in pairs(debug.getregistry()) do

       if type(v) == "function" and not is_synapse_function(v) then
           local Values = debug.getupvalues(v)
           for a,b in pairs(Values) do
               if type(b) == "number" and b == 20 then
                   debug.setupvalue(v, a, 30)
               end
           end

           local Constants = debug.getconstants(v)
           for Number,Value in pairs(Constants) do
               if type(Value) == "number" then
                   if Value == 100 then
                       debug.setconstant(v, Number, 1000)
                       print("Set new Magnitude limit!")
                   end
                   if Value == 750 then
                       debug.setconstant(v, Number, 1350)
                       print("Set new throw limit!")
                   end
               end
           end
       end

   end

   spawn(function()
       while wait() do
           if LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") then
               LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").JumpPower = 24
           LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = 28
           elseif not LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") then
               break
           end
       end
   end)

end

Int()

LocalPlayer.CharacterAdded:Connect(function()
   repeat wait() until LocalPlayer.Character
   repeat wait() until LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
   repeat wait() until LocalPlayer.Character:FindFirstChild("GrabbingScript")
   Int()
end)

print("Better reach and faster speed loaded!")