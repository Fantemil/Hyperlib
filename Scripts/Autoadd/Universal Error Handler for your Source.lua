_G.PrintIfNotSupport = false --// Only works for Executors that doesn't support RCONSOLE.


local exquisite, error = pcall(function()
    -- Script Here [ex. `print(game.Workspace.a)`]
end)

--// The Script Minifed for Less Bytes
loadstring(game:HttpGet("https://raw.githubusercontent.com/Empire4946/rconsole-error-handler/main/modules/checkFolder.txt",true))()local a=clonefunction;local b=a(rconsoleprint)if b then if error then b('@@RED@@')b("\n"..error)b('@@LIGHT_RED@@')local c=os.date("*t")local d=math.random(1,1000)local e=writefile("ErrorHandler\\scriptError"..d..".txt",""..c.day..";"..c.month..";"..c.year.." | "..c.hour..":"..c.sec.."\n"..error)b("\n| Saved error on "..".\Workspace\ErrorHandler\scriptError"..d.." |\n")elseif exquisite then b('@@GREEN@@')b("\nScript Working, Great Job!\n")end elseif _G.PrintIfNotSupport==true then print("\n"..error)local c=os.date("*t")local d=math.random(1,1000)local e=writefile("ErrorHandler\\scriptError"..d..".txt",""..c.day..";"..c.month..";"..c.year.." | "..c.hour..":"..c.sec.."\n"..error)print("\n| Saved error on ".."./Workspace/ErrorHandler/scriptError"..d.." |\n")end