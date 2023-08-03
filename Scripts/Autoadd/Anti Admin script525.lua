-- RECOMMENDED SETTINGS


_G.kick = true -- kicks you when it finds an admin if this isn't enabled it makes a big notification
_G.loopcheck = true -- checks in loop i suggest keeping this on
_G.waitcheck = 1 -- in seconds
_G.debug = false -- prints progress
-- make sure to put this in autoexe
-- ignore my messy code, or dont we dont care.

repeat wait() until game:IsLoaded() and game and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players:GetChildren()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/saucekid/UI-Libraries/main/NotificationLib.lua"))()
function method(group, method, person, ptype)
   if _G.kick == true then
       if group <= 1 then
           game.Players.LocalPlayer:Kick(ptype.." IN YOUR GAME, "..method" METHOD, GROUP ID: "..tostring(group) ", WITH USERNAME: "..person)
           else
       game.Players.LocalPlayer:Kick(ptype.." IN YOUR GAME: USING "..method" METHOD, User in question: "..person)
       end
       ----------- KICK OFF ---------------------
   elseif _G.kick == false then
        if group <= 1 then
           Notification.WallNotification(ptype.." IN YOUR GAME, "..method" METHOD, GROUP ID: "..tostring(group) ", WITH USERNAME: "..person)
           else
       Notification.WallNotification(ptype.." IN YOUR GAME: USING "..method" METHOD, User in question: "..person)
        end
   end
   end
function debugprint(text)
       if _G.debug == true then
   print(text)
   else
   end
   end


while _G.loopcheck == true do
   wait(_G.waitcheck)
   debugprint("Checking...")
for i, testers in pairs(game.Players:GetChildren()) do
   wait(.1)
   for i, chars in pairs(testers.Character:GetChildren()) do
       wait(.1)
       if chars:IsA("Accessory") then -- make sure its a accessory
         

           if chars.Name == "Valiant Top Hat of Testing" or chars.Name == "Valiant Valkyrie of Testing" or chars.Name == "Thoroughly-Tested Hat of QA" then -- detect qa tester hats
               method(0, "Hat Detection", chars.Parent.Name, "QA TESTER")
           elseif testers:GetRankInGroup(1200769) >= 1 then -- this will auto update the list of admins so ur good
               method(1200769, "Group Rank", testers.Name, "ROBLOX ADMIN")
       -- HERES ANOTHER QA TESTER DETECTOR BECAUSE NOT ALL TESTERS WEAR THE HATS!!
           elseif testers:GetRankInGroup(3055661) >= 1 then -- this will auto update the list of testers so ur good
                       method(3055661, "Group Rank", testers.Name, "QA TESTER")
           elseif testers:GetRankInGroup(14593111) >= 1 then -- this will auto update the list of testers so ur good
       method(14593111, "Group Rank", tester.Name, "ROBLOX ADMIN")
           elseif testers:GetRankInGroup(12513722) >= 1 then -- this will auto update the list of testers so ur good
       method(12513722, "Group Rank", tester.Name, "IMPORTANT PERSON")
           elseif testers:GetRankInGroup(10279336) >= 1 then -- this will auto update the list of testers so ur good
               method(10279336, "Group Rank", tester.Name, "IMPORTANT PERSON")
           elseif testers:GetRankInGroup(6821794) >= 1 then -- this will auto update the list of testers so ur good
                       method(6821794, "Group Rank", tester.Name, "IMPORTANT PERSON")
                               elseif testers:GetRankInGroup(3253689) >= 1 then -- this will auto update the list of testers so ur good
       method(3253689, "Group Rank", tester.Name, "IMPORTANT PERSON")
   else end end end end
   debugprint("Nobody Found!")
   wait(.1)
   debugprint("Restarting...")
   wait(.1)
   debugprint("----------------")
end