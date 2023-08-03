local g_rs = game:GetService("ReplicatedStorage")

while wait(1) do 
    local p_collect = g_rs:FindFirstChild("Events").Remote.CollectCash
    if p_collect then 
        p_collect:FireServer()
        end
    end