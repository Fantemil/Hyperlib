-- kill all player
game:GetService("ReplicatedStorage").KillAllPlayersEvent:FireServer()
-- heal all player
game:GetService("ReplicatedStorage").HealAllPlayersEvent
-- summon heal wall
game:GetService("ReplicatedStorage").SpawnPartHealEvent:FireServer()
-- summon break wall
game:GetService("ReplicatedStorage").SpawnPartEvent:FireServer()
