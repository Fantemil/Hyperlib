local hookfunction(hookfunction, function(arg,arg2)
  if arg == "printidentity" then
    print("DENIED, Attempt to access forbidden Function")
    return arg, print
  else
    return arg, arg2
  end
end)