local Options = {
    Keybind = 'Home', --> Keybind para mostrar/esconder a UI, mais informaÃ§Ãµes sobre KeyCode: https://create.roblox.com/docs/reference/engine/enums/KeyCode
    Tempo = 2.5, --> Tempo para enviar mensagem.
    Rainbow = false, --> Deixar a UI mais colorida (true/false)

    Language = {
        UI = 'pt-br', --> Alterar a linguagem da UI, disponÃ­vels: pt-br, en-us
        Words = 'pt-br' --> Alterar a linguagem dos nÃºmero em extenso, disponÃ­vels: pt-br, en-us, es-es
    },
};
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zv-yz/AutoJJs/main/Main.lua'))(Options);