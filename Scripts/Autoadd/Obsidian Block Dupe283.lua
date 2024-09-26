QuantidadeV = 50
BlocoV = "obsidian"

function DupeBlock()
    local args = {
        [1] = BlocoV,
        [2] = QuantidadeV
    }
    
    workspace.place:FireServer(unpack(args))
end

-- Run the duplication with a delay between each
for i = 1, 20 do  -- This will duplicate 50 blocks 20 times, totaling 1000
    DupeBlock()
    wait(0.2)
end
