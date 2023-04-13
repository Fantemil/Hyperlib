local wpm = 120; -- set wpm (max wpm is 250 as to prevent bans!!)
local accuracy = 98.5 -- accuracy (make it 1-100)

while true do
   local spw = 60 / wpm
   local spc = spw / 5
   local waittime = spc;
   local box = workspace:WaitForChild("SelectionBox");
   
   
   if waittime < 0.048 or wpm > 250 then break end;
   
   if box.Adornee ~= workspace.Baseplate then
       local gui = box.Adornee and box.Adornee:FindFirstChildOfClass("SurfaceGui");
       
       if gui then
           local text = gui:FindFirstChild("TextLabel")
           
           if text then
               local key = text.Text;
               
               if key == " " then key = "Space" else key = key:upper() end;
                   
               local chance = math.random(1, 100);
               
               if chance > accuracy and key ~= "S" then
                   key = "S"
               elseif chance > accuracy and key == "S" then
                   key = "B"
               end;
               
               game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode[key], false, game)
           end
       end
   end
   task.wait(waittime)
end