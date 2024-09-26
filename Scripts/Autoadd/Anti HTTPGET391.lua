local a;
a = hookfunction(hookfunction, newcclosure(function(args, args2)
    if args == game.HttpGet then
     print("DENIED, Attempt to access forbidden function!")
     return warn
    end
    return a(args, args2)
end))
