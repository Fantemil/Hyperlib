local Player = game:GetService('Players').LocalPlayer
local Character = Player.Character

for _, v in pairs(Character:GetDescendants()) do
   
   if v:IsA('Script') or v:IsA('LocalScript') then
       
       v:Destroy()
       
   end
   
end

for _, v in pairs(Player:GetDescendants()) do

   if v:IsA('Script') or v:IsA('LocalScript') then

       v:Destroy()

   end

end

wait(1)

function UpdateCharacter(Ch)
   Character = Ch
end

Player.CharacterAdded:Connect(UpdateCharacter)

local BeforeTools = #Character:GetChildren()

repeat

   for _, v in pairs(workspace.Buy:GetChildren()) do

       fireclickdetector(v:FindFirstChildWhichIsA('ClickDetector'))

   end

   for _, v in pairs(Player.Backpack:GetChildren()) do

       if v:IsA('Tool') then

           v.Parent = Character

       end

   end

   task.wait()

until #Character:GetChildren() >= 680 + BeforeTools

wait(1)

Character.Humanoid:Destroy()