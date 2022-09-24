--> Declarations <--
local FastCFrame = CFrame.new(0,0,0)
local OldNamecall = nil



--> Main <--
OldNamecall = hookmetamethod(game, '__namecall', function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    
    if tostring(self) == 'UpdateCharacterState' and method == 'FireServer' then
        args = {
            [1] = {
                ['Character'] = game:GetService('Players').LocalPlayer.Character,
                ['CFrame'] = FastCFrame,
                ['IsRunning'] = true
            }
        }
        for i = 1,100 do
            return self.FireServer(self, unpack(args))
        end
    end
    
    return OldNamecall(self,...)
end)



--> Loops <--
game:GetService('RunService').Heartbeat:Connect(function()
    FastCFrame = FastCFrame + Vector3.new(10,10,10)
end)