for _=1,100000 do
        game:GetService("ReplicatedStorage").Events.ReplicateProjectile:FireServer({"Baseball",0,Vector3.new(0,100,0),CFrame.new(),45,0,0,0,"Cone Launcher",Vector3.new(),false,{},1})
    end