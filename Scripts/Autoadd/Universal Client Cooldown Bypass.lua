local old

old = hookfunction(wait, newcclosure(function(...)
   return old()
end))

local balls

balls = hookfunction(task.wait, newcclosure(function(...)
   return balls()
end))