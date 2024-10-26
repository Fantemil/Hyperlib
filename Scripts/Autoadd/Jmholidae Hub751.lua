if game.PlaceId == 17895501278 then
       --Load
        local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

       --InÃ­cio
        local Window = OrionLib:MakeWindow({Name = "JmHolidae Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Juliocfg" , IntroEnabled = false})

      --Valor
   _G.AutoC = true

     --FunÃ§Ã£o
     function AutoC( )
          while _G.AutoC == true do
game:GetService("ReplicatedStorage").Click.ClickGive:FireServer()

wait (0.00000000000000000000000000000000000000000003)
         end
end




       --Jogador
        local JogadorTab = Window:MakeTab({
	Name = "Clique",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = JogadorTab:AddSection({
	Name = "Auto-Clique"
})

JogadorTab:AddToggle({
	Name = "Auto-Click",
	Default = false,
	Callback = function(Value)
		_G.AutoC = Value
        AutoC( )
	end    
})

end
