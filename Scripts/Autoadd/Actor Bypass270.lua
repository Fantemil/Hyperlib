if game.PlaceId == 13253735473 then
  local Local_Plr = game:GetService("Players").LocalPlayer
  local Plr_Gui = Local_Plr:FindFirstChild("PlayerGui")
  if Plr_Gui:FindFirstChildOfClass("Actor") then
    Local_Plr:Kick("Failed To Bypass")
  else
    Plr_Gui.ChildAdded:Connect(function(v)
    if v.ClassName == "Actor" then
      if Plr_Gui[v.Name]:FindFirstChild("GameClient") then
        Plr_Gui[v.Name].GameClient.Parent = Plr_Gui
        task.wait()
        v:Destroy()
      end
    end
    end)
  end
end