 local namecall;
namecall = hookmetamethod(game,"__namecall", function(...)
local edgy = ...
local method = getnamecallmethod()
if method == "FireServer" and edgy.Name == "n53x6bhar" then
   for i=1, 599 do
        namecall(...)
   end

end
return namecall(...)
end)
-- gg