getgenv().hookmetamethod = newcclosure(function(obj, method, func)
      return hookfunction(getrawmetatable(obj)[method], func)
    end)