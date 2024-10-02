game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)

local UserInputService = game:GetService("UserInputService")

local function AutoPlay()
   while true do    
      local UserInput = UserInputService:GetFocusedTextEntry()
      if UserInput ~= nil then        
         UserInput:FocusLost:nil()      
         game.StarterGui.InputBoxLOSEvent:Fire()
         wait(0.5)      
      end     
   end 
end

spawn(AutoPlay)
