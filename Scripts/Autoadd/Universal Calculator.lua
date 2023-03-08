local CHAT = game.Players.LocalPlayer
CHAT.Chatted:Connect(function(CHATMSG1)
 CHATMSG = CHATMSG1
 local SENDER = CHAT
 local MSG = Instance.new("IntValue")
 MSG.Name = "MSG_"..tostring((tostring([[msg]])))
 MSG.Parent = game.ReplicatedStorage
end)



 game.ReplicatedStorage.ChildAdded:Connect(function(c)
 if c.Name == "MSG_"..tostring((tostring([[msg]]))) then
  spawn(function()
   task.wait(0.1)
   c:Destroy()
  end)
  game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = tostring(((tostring(CHATMSG):split(tostring((tostring([[+]])))))[tonumber((tonumber(1)))] + (tostring(CHATMSG):split(tostring((tostring([[+]])))))[tonumber((tonumber(2)))])), Color = Color3.fromRGB( 255,255,255 ), Font = Enum.Font.SourceSansBold, FontSize = Enum.FontSize.Size18 } )

 end
end)