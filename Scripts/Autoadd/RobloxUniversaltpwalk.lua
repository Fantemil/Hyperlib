local char = game.Players.LocalPlayer.Character
game:GetService"UserInputService".InputBegan:Connect(function(input,gP)
   if gP then return end -- the code below won't be executed if you're typing in something like a TextBox and you type the keycode

local function inrange(CFrame1, CFrame2)
   if tonumber(CFrame1.X) - tonumber(CFrame2.X) < 10 then
       return true
   else
       return false
   end
end

local function inrange2(CFrame1, CFrame2)
   if tonumber(CFrame1.Z) - tonumber(CFrame2.Z) < 10 then
       return true
   else
       return false
   end
end


   
   if input.KeyCode == Enum.KeyCode.D then -- X
       local old = char.HumanoidRootPart.CFrame
       char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(12, 0, 0)
          while task.wait() do
       if inrange(char.HumanoidRootPart.CFrame, old) == true then -- char is set before and old after in + values
           char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(12, 0, 0)
           end
       end
       end
   
   if input.KeyCode == Enum.KeyCode.A then -- X
       local old = char.HumanoidRootPart.CFrame
       char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(-12, 0, 0)
       while task.wait() do
           if inrange(old, char.HumanoidRootPart.CFrame) == true then
               char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(-12, 0, 0)
           end
       end
       end
   
     if input.KeyCode == Enum.KeyCode.W then
         local old = char.HumanoidRootPart.CFrame
       char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(0, 0, -12)
         while task.wait() do
       if inrange2(old, char.HumanoidRootPart.CFrame) then
           char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(0, 0, -12)
           end
       end
     end

 if input.KeyCode == Enum.KeyCode.S then
     local old = char.HumanoidRootPart.CFrame
       char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(0, 0, 12)
       while task.wait() do -- remember the task.wait
           if inrange2(char.HumanoidRootPart.CFrame, old) == true then
               char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(0, 0, 12)
               end
       end
 end

end)