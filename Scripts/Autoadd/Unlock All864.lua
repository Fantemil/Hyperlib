for i,v in pairs(workspace:GetChildren()) do
    if string.find(v.Name, "GamepassDoor") or string.find(v.Name, "BadgeDoor") then
        v:Destroy()
    end
end