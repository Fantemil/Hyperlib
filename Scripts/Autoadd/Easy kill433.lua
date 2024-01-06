while wait() do
   game:GetService("ReplicatedStorage").Remotes.WeaponSkillHarm:FireServer({["harmIndex"] = 1,["skillId"] = 200188})
end