_G.AutoTap = true
_G.AutoRebirth = true

spawn(function()
    if _G.AutoTap == true then
    wait()
        while wait() do
            game:GetService("ReplicatedStorage").Remotes.Click:InvokeServer()
        end
    end
end)


  if _G.AutoRebirth == true then
     wait()
         while wait() do 
              game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
         end
    end