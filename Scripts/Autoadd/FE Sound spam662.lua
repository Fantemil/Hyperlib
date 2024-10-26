function lol()
	while _G.lol do
        if not _G.lol then
            local args = {
                [1] = game:GetService("Players").LocalPlayer.Character.Head.Sprint,
                [2] = "Stop"
            }
            game:GetService("Players").LocalPlayer.Character.ServerSoundEvent:FireServer(unpack(args))
            local args2 = {
                [1] = game:GetService("Players").LocalPlayer.Character.Head.Crouch1,
                [2] = "Stop"
            }
            
            game:GetService("Players").LocalPlayer.Character.ServerSoundEvent:FireServer(unpack(args2))
            local args3 = {
                [1] = game:GetService("Players").LocalPlayer.Character.Head.Crouch2,
                [2] = "Stop"
            }
            
            game:GetService("Players").LocalPlayer.Character.ServerSoundEvent:FireServer(unpack(args3))
            local args4 = {
                [1] = game:GetService("Players").LocalPlayer.Character.Head.Jump,
                [2] = "Stop"
            }
            
            game:GetService("Players").LocalPlayer.Character.ServerSoundEvent:FireServer(unpack(args4))
            break
        end
		wait()
		local args = {
			[1] = game:GetService("Players").LocalPlayer.Character.Head.Sprint,
			[2] = "Play"
		}
		game:GetService("Players").LocalPlayer.Character.ServerSoundEvent:FireServer(unpack(args))
        local args2 = {
            [1] = game:GetService("Players").LocalPlayer.Character.Head.Crouch1,
            [2] = "Play"
        }
        
        game:GetService("Players").LocalPlayer.Character.ServerSoundEvent:FireServer(unpack(args2))
        local args3 = {
            [1] = game:GetService("Players").LocalPlayer.Character.Head.Crouch2,
            [2] = "Play"
        }
        
        game:GetService("Players").LocalPlayer.Character.ServerSoundEvent:FireServer(unpack(args3))
        local args4 = {
            [1] = game:GetService("Players").LocalPlayer.Character.Head.Jump,
            [2] = "Play"
        }
        
        game:GetService("Players").LocalPlayer.Character.ServerSoundEvent:FireServer(unpack(args4))
	end
end
if _G.lol == true then
    _G.lol = false
    return
end
_G.lol = true
while _G.lol do
	wait()
	task.spawn(lol)
end