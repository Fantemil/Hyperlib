-- FunÃ§Ã£o para identificar NPCs e matÃ¡-los
function identificarEMatarNPCs()
    local player = Game.getPlayer()  -- Supondo que Game.getPlayer() retorna o jogador controlado pelo usuÃ¡rio
    local npcs = Game.getNPCs()      -- Supondo que Game.getNPCs() retorna uma lista de NPCs no jogo

    for _, npc in ipairs(npcs) do
        if npc:isAlive() then
            -- Aqui vocÃª pode ajustar como deseja interagir com os NPCs
            -- Exemplo: npc:damage(999) para matar instantaneamente, ou npc:damage(1) para deixar com 1 de vida
            npc:damage(999)  -- Mata o NPC instantaneamente
            -- npc:damage(1)  -- Deixa o NPC com 1 de vida (pouca vida)

            print("NPC identificado e eliminado!")
        end
    end
end

-- FunÃ§Ã£o para repetir a identificaÃ§Ã£o e eliminaÃ§Ã£o de NPCs em intervalos regulares
function repetirIdentificarEMatarNPCs()
    while true do
        identificarEMatarNPCs()  -- Chama a funÃ§Ã£o para identificar e matar NPCs

        -- Define o intervalo de tempo entre cada execuÃ§Ã£o (em segundos)
        local intervalo = 5  -- Intervalo de 5 segundos
        os.sleep(intervalo)  -- Espera pelo intervalo definido antes de repetir
    end
end

-- Chamada para iniciar o processo de repetiÃ§Ã£o
repetirIdentificarEMatarNPCs()
