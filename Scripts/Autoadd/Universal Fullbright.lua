local old;
old = hookmetamethod(game, "__newindex", newcclosure(function(self, index, value)
 if tostring(self) == "Lighting" then
  if index == "ClockTime" then
   value = 12
  end
 end
 return old(self, index, value)
end))