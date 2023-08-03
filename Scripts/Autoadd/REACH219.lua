game.StarterGui:SetCore("SendNotification", {
    Title    = "Sword Reach Script Loaded by"; 
    Text     = "MADE BY LUFFY You need to hold a tool when executing."; 
    Icon     = ""; 
    Duration = 40;
    Callback = bindableFunction;
    Button1  = "FUCK NIGGERS";  
    Button2  = "I FUCKING hate niggers";
})
for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
                if v:isA("Tool") then
                    local a = Instance.new("SelectionBox",v.Handle)
                    a.Adornee = v.Handle
                    v.Handle.Size = Vector3.new(0.5,0.5,60)
                    v.GripPos = Vector3.new(0,0,0)
                    lplayer.Character.Humanoid:UnequipTools()
                end
end