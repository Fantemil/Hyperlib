for _,t in pairs(getgc(true)) do
     if type(t) == "table" and t["Speed"] then
      t["Speed"] = 0
      wait()
     end
end