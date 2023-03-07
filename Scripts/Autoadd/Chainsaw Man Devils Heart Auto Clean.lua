local Cleaner = game:GetService("Workspace").DialogNPCs.cleaner.HumanoidRootPart
local Player =  game.Players.LocalPlayer
local Character = Player.Character
local offset = 0

local function walk_to(Instance)
   Character.Humanoid:MoveTo(Instance.Position)
   wait(3)
   keypress(0x20)
   wait()
   keyrelease(0x20)
   Character.Humanoid:MoveTo(Instance.Position)
end

local function accept_quest()
   local pos,onscreen = game.workspace.Camera:WorldToViewportPoint(Cleaner.Position)
   local dialog = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('dialogGUI')
   if onscreen and not dialog then
       keypress(0x45)
       wait()
       keyrelease(0x45)
   elseif onscreen and dialog then
       wait(1)
       local dialog_ap = game:GetService("Players").LocalPlayer.PlayerGui.dialogGUI.f.sf.option.text.AbsolutePosition
       mousemoveabs(dialog_ap.X+500+offset,dialog_ap.Y+500)
       offset += 2
       mouse1click()
   end
end

local function has_quest()
   local mission = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Quest')
   if mission then
       local clean_mission = mission.ImageLabel.text
       if clean_mission.Text:find('Clean the floor') and not clean_mission.Text:find('10/10') then
           return true
       elseif clean_mission.Text:find('10/10') then
           local repeat_mission = game:GetService("Players").LocalPlayer.PlayerGui.Quest:FindFirstChild('Completed')
           if repeat_mission then
               wait(1)
               local repeat_mission_ap = game:GetService("Players").LocalPlayer.PlayerGui.Quest.Completed.Yes.AbsolutePosition
               mousemoveabs(repeat_mission_ap.X+500+offset,repeat_mission_ap.Y+500)
               offset += 2
               mouse1click()
           end
           if clean_mission.Text:find('Clean the floor') and not clean_mission.Text:find('10/10') then
               return true
           end
       else
           return false
       end
   end
end


local function closest_dirt()
   local dirtys = game:GetService("Workspace").Interactable.dirty
   local largest = math.huge
   for i,v in pairs(dirtys:GetChildren())do
       if v.Name == 'Part' and v.dirt.Transparency == 0  then
           if (Character.HumanoidRootPart.Position.Y - v.Position.Y) <= 3.5   then
               local magnitude = (Character.HumanoidRootPart.Position - v.Position).magnitude
               if magnitude < largest then
                   return v
               end
           else
               print(Character.HumanoidRootPart.Position.Y - v.Position.Y)
           end
       end
   end
end

local function start_cleaning()
   local current_dirty = closest_dirt()
   if current_dirty then
       local magnitude = (Character.HumanoidRootPart.Position - current_dirty.Position).magnitude
       if magnitude > 5 then
           walk_to(current_dirty)
       else
           keypress(0x45)
           wait()
           keyrelease(0x45)
       end
   end
end

_G.toggle = false

while _G.toggle do
   local magnitude = (Cleaner.Position - Character.HumanoidRootPart.Position).magnitude
   if magnitude > 10 and (Character.HumanoidRootPart.Position.Y - Cleaner.Position.Y) < 5  and not has_quest() then
       if Character and not has_quest() and  magnitude >= 10 then
           workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position,Cleaner.Position)
           walk_to(Cleaner)
       end
   elseif Character and magnitude <= 10 and not has_quest() and (Character.HumanoidRootPart.Position.Y - Cleaner.Position.Y) < 5 then
       accept_quest()
   elseif Character and has_quest()  then
       offset = 0
       repeat wait()
           start_cleaning()
       until not has_quest()
   end
   wait(1)
end
       