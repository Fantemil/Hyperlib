--[[
   Made by Rileyy#0808
   Math obby correct door ESP
]]

for _, category in next, workspace.Questions:GetChildren() do
   for _, question in next, category:GetChildren() do
       local choices = question:FindFirstChild('Question+Choices')
       if choices then
           if choices:FindFirstChild('CorrectDoor') then
               choices.CorrectDoor.Color = Color3.new(0, 1, 0)
           else
               choices.TELEPORT.WalkThroughTeleport.Color = Color3.new(0, 1, 0)
           end
       end
   end
end