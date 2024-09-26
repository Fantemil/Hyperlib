local old = setclipboard;
getgenv().setclipboard = function(a)
 getfenv(2).Whitelisted = true
 return old(a)
end 