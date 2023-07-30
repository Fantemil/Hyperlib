while wait() do
    local b = workspace:FindFirstChild("BananaPeel")
    local j = workspace:FindFirstChild("JeffTheKiller")
    if b then
        b:Destroy()
    elseif j then
        j.Humanoid:Destroy()
        wait(.1)
        j:Destroy()
    end
end

