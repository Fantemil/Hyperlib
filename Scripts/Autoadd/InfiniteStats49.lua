local stats = {'Strength', 'Stamina', 'Defence', 'Sword', 'Gun', 'Haki', 'Fruit'}

while task.wait() do 
    for i,v in pairs(stats) do 
        local args = {[1] = v,[2] = .4}
        game:GetService("ReplicatedStorage").Remotes.Stat:FireServer(unpack(args))
    end
end