local DendroESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/LordNahida/DendroESP/main/Source.lua"))();

--THIS WILL ONLY WORK ON SYNAPSE NO OTHER EXECUTOR SUPPORTS DRAWING FUNCTIONS PROPERLY.

for _,v in pairs(game.Players:GetChildren()) do 
    if v.Character then 
       DendroESP:AddCharacter(v.Character, "Vertex") -- Modes: BoundingBox, Vertex, Shadow, Orthgonal, Highlight
    end 
end 