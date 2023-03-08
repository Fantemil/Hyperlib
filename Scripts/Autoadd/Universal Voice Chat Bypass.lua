local VCS = game:GetService('VoiceChatService')

local old
old = hookmetamethod(game,"__namecall",function(Self,...)
   local args = {...}
   local ncm = getnamecallmethod()
   
   if (not checkcaller()) and Self == VCS and ncm == "IsVoiceEnabledForUserIdAsync" and args[1] == game.Players.LocalPlayer.UserId then
       return true
   end
   return old(Self,...)
end)