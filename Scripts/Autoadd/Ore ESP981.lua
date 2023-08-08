local ores={
  "Flourine";
  "Bluesteel";
  "Moonstone";
  "Black Diamond";
  "Carnelian";
  "Iridium";
  "Chrysoberyl";
  "Cosmicite";
  "Bismuth";
  "Test";
  "Sunstone";
  "Red Beryl";
  "Tektite";
  "Spatializine";
  "Incinderium";
  "Gilded Gold";
  "Musgravite";
  "Core Fragment";
  "Painite";
  "Meteorite";
  "Coldfirium";
  "Ammolite";
  "Galaxite";
  "Datnium";
  "Actinium";
  "UNKNOWN_SIGNAL";
  "Elusium";
  "Elysian";
  "Pink Diamond";
  "Fusium";
  "Alexandrite";
  "Vanadinite";
  "Tanzanite";
  "Viridian";
  "Adurite";
  "Jet";
  "Axisium";
  "Newtonium";
  "Zefendium";
  "Matrixyl";
  "Ulexite";
  "Delectium";
  "Rainbonite";
  "Aegistone";
  "Alternium";
  "Cryotic";
  "Chromatite";
  "Negatine";
  "Retronium";
  "Unobtainium";
  "Nocturnite";
  "Solarite";
  "Hyperstone";
  "Demonizine";
  "Coronium";
  "Eye of God";
  "Candy Corn Pulsar";
  "Neptunium";
  "Surface Neptunium";
  "Viscriol";
  "Instigium";
  "Pulsar Crystal";
  "Polenite";
  "Protoflare";
  "Thundarian";
  "Surgium";
  "Commisite";
  "Nihil";
  "Flaeon";
  "Freon";
  "Poiseon";
  "Scertanium";
  "Glacialite";
  "Astatine";
  "Euclideum";
  "Synthetyl";
  "Blazuine";
  "Fidelium";
  "Lutetium";
  "Gravitite";
  "Ornalium";
  "Kaleidium";
  "Tranquinite";
  "Code Heart";
  "Aescidot";
  "Sagittarius Quasar";
  "Teslarium";
  "Exolite";
  "Impendinium";
  "Combustal";
  "Vitrilyx";
  "Altair";
  "ERR0R";
  "Temporum";
  "Ascended Flare";
  "HR 5171 A";
  "Frostonyx";
  "Portal Crystal";
  "Albinite";
  "Ichnusaite";
  "Cervonium";
  "Bellinium";
  "Bipulsidine";
  "Accumulinium";
  "Altovite";
  "R136a1";
  "Eclipsicle";
  "Entiniol";
  "Vaporwave Pulsar";
  "Halcyon Emission";
  "Liptonium";
  "Cleopatrite";
  "INVALID SYNTAX";
  "Suncindium";
  "Apathium";
  "Andromidium";
  "Spristium";
  "Aurora";
  "Voidstar";
  "Soundstrocity";
  "Ambrosia";
  "Lunarian";
  "Xynarium";
  "Pasivium";
  "Luminatite";
  "Sentient Viscera";
  "Azuryl";
  "Speatrium";
  "Illuminyx";
  "Accretium";
  "Stazenium";
  "Plasmonium";
  "Elementium";
  "Erodimium";
  "Aether";
  "Exoretic";
  "Klar's Talisman";
  "Machina";
  "Malfeasium";
  "Affinitium";
  "Iridistar";
  "Illusorium";
  "Channal";
  "Ascerium";
  "Onedrium";
  "Lucidium";
  "Hyperorbitium";
  "Solarian";
  "HD 160529";
  "Elbrus' Pride";
  "Inkonium";
  "Dyronsinite";
  "Vitriol";
  "Laniakea Supercluster";
  "Pastelorium";
  "Trinitium";
  "Spinel";
  "Icarus";
  "The Great Orenado";
  "Radiative Quasar";
  "RGB Pulsar";
  "Charybdis";
  "Bypa#s Fa#lu#e";
  "Magnetyx";
  "Virtuosity";
  "Quasar V";
  "Criptizine";
  "Omega";
  "Quantalyx";
  "Gargantium";
  "Encryption";
  "Acceleratium";
  "Accesinite";
  "Genuinium";
  "Fire Crystal";
  "Pandorite";
  "Frostrainium";
  "Coronal Flare";
  "Heart of the Frosted";
  "Praefectus";
  "Candilium";
  "Flare of Transcendence";
  "INSECURE CONNECTION";
  "Spectriol";
  "Cerlustrium";
  "Continuum Rift";
  "Epinetrium";
  "32Bit Integer Limit";
  "32 Bit Integer Limit";
  "Endozivite";
  "Surrenial";
  "Idolium";
  "Armageddium";
  "Inclemetite";
  "Scribbal";
  "Lawrencium";
  "M87";
  "Synerginium";
  "Quasar 618";
  "Equalizosity";
  "Cataclysium";
  "Voidirinite";
  "Obliveracy Endmost";
  "Poiseon Talisman";
  "Chrononite";
  "NIL NAL";
  "Universal Collapse";
  "Illuminuosity";
  "Vintage Pastelorium";
  "Corrodine Pulsar";
  "Chrysalis";
  "Continue :3";
  "the unfunny";
  "the funny";
  "God";
  "waffle crystal";
}
if getgenv().enabled == true then 
    getgenv().enabled = false
    getgenv().enabled = true
end
while getgenv().enabled do
    task.wait()
    for __,v in pairs(game.Workspace.Mine:GetChildren()) do
        if v and v:IsA("BasePart")  and table.find(ores, v.Name) then
            local a = Instance.new("BillboardGui",v)
            a.Size = UDim2.new(1,0, 1,0)
            a.Name = "A"
            a.AlwaysOnTop = true
            local b = Instance.new("Frame",a)
            b.Size = UDim2.new(1,0, 1,0)
            b.BackgroundTransparency = 1
            b.BorderSizePixel = 0
            local c = Instance.new("TextLabel",b)
            c.Text = v.Name
            c.Size = UDim2.new(1,0, 1,0)
            c.BackgroundTransparency = 1
            c.BorderSizePixel = 0
            local d = Instance.new("Highlight", a)
        end
    end
end