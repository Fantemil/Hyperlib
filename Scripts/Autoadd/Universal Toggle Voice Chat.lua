local toggleKey = Enum.KeyCode.V

local vci = game:GetService("VoiceChatInternal")
local cas = game:GetService("ContextActionService")

local group = vci:GetGroupId()

local mute = not vci:IsPublishPaused() -- for some reason you can't use IsPublishPaused directly because it will retain the last mic state (mute/unmuted), even though the bool is exactly the same
cas:BindAction("MuteMic", function(_, state, _)
   if state == Enum.UserInputState.Begin then return end
   
   if vci.VoiceChatState == Enum.VoiceChatState.Joined then
       vci:Leave()
       repeat task.wait() until vci.VoiceChatState ~= Enum.VoiceChatState.Ended
       vci:JoinByGroupIdToken(group, mute)
       mute = not mute
   else
       warn("Client is still trying to join voice chat")
       print(vci.VoiceChatState)
   end
end, false, toggleKey)