local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Marvellous All Skins By Ryus", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
Name = "Characters",
Icon = "rbxassetid://460729824",
PremiumOnly = false
})
 
local function changeplayer(char)
game:GetService("ReplicatedStorage").SelectCharacter.ChangeChar:FireServer(char)
end
 
Tab:AddButton({
Name = "Chad",
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").SelectCharacter.GigaChad)
  end    
})
 
Tab:AddButton({
Name = "Wanda",
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").SelectCharacter.Wanda)
  end    
})
 
Tab:AddButton({
Name = "Chadette",
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").Skins.GigaChad.Skin1)
  end    
})
 
Tab:AddButton({
Name = "Saitama",
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").Skins.GigaChad.Skin2)
  end    
})
 
Tab:AddButton({
Name = '"Speed (PATCHED)"',
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").SelectCharacter.Empty)
  end    
})
 
Tab:AddButton({
Name = "Vecna (functions like Eleven but worse)",
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").SelectCharacter.Vecna)
  end    
})
 
Tab:AddButton({
Name = '"Fake" (A sort of ghost / spectator mode)',
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").SelectCharacter.Fake)
  end    
})


Tab:AddButton({
Name = "Fatty Anime Boy",
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").Skins.GigaChad.Skin3)
  end    
})


Tab:AddButton({
  Name = "Steve",
  Callback = function()
        changeplayer(game:GetService("ReplicatedStorage").Skins.Steve.Skin1)
    end    
  })


Tab:AddButton({
  Name = "Zombie",
  Callback = function()
          changeplayer(game:GetService("ReplicatedStorage").Skins.Steve.Skin2)
      end    
    })


    Tab:AddButton({
      Name = "Alex",
      Callback = function()
            changeplayer(game:GetService("ReplicatedStorage").Skins.Steve.Skin4)
        end    
      })


      Tab:AddButton({
        Name = "Ben!",
        Callback = function()
              changeplayer(game:GetService("ReplicatedStorage").Skins.Speed.Skin1)
          end    
        })


        Tab:AddButton({
          Name = "Thanos",
          Callback = function()
                changeplayer(game:GetService("ReplicatedStorage").Skins.Thanos.Skin1)
            end    
          })


          Tab:AddButton({
            Name = "Patrick",
            Callback = function()
                  changeplayer(game:GetService("ReplicatedStorage").Skins.Patrick.Skin1)
              end    
            })


            Tab:AddButton({
              Name = "One Piece",
              Callback = function()
                    changeplayer(game:GetService("ReplicatedStorage").Skins.MrFantastic.Skin3)
                end    
              })


              Tab:AddButton({
                Name = "CaptainAmerica",
                Callback = function()
                      changeplayer(game:GetService("ReplicatedStorage").Skins.SoldierBoy.Skin1)
                  end    
                })


                Tab:AddButton({
                  Name = "Golden Boi",
                  Callback = function()
                        changeplayer(game:GetService("ReplicatedStorage").Skins.Homelander.Golden)
                    end    
                  })


                  Tab:AddButton({
                    Name = "Joker",
                    Callback = function()
                          changeplayer(game:GetService("ReplicatedStorage").Skins.Vigilante.Skin2)
                      end    
                    })


                    Tab:AddButton({
                      Name = "Squid Game Guard",
                      Callback = function()
                            changeplayer(game:GetService("ReplicatedStorage").Skins.Vigilante.Skin1)
                        end    
                      })


                      Tab:AddButton({
                        Name = "Golden Assasin",
                        Callback = function()
                              changeplayer(game:GetService("ReplicatedStorage").Skins.Vigilante.Golden)
                          end    
                        })


                        Tab:AddButton({
                          Name = "Warrior",
                          Callback = function()
                                changeplayer(game:GetService("ReplicatedStorage").Skins.Peacemaker.Skin1)
                            end    
                          })


                          Tab:AddButton({
                            Name = "Golden Warrior",
                            Callback = function()
                                  changeplayer(game:GetService("ReplicatedStorage").Skins.Peacemaker.Golden)
                              end    
                            })


                            Tab:AddButton({
                              Name = "JOHN CENA!",
                              Callback = function()
                                    changeplayer(game:GetService("ReplicatedStorage").Skins.Peacemaker.Skin2)
                                end    
                              })


                              Tab:AddButton({
                                Name = "Lucifer",
                                Callback = function()
                                      changeplayer(game:GetService("ReplicatedStorage").Skins.Wanda.Skin1)
                                  end    
                                })


                                Tab:AddButton({
                                  Name = "Dancer",
                                  Callback = function()
                                        changeplayer(game:GetService("ReplicatedStorage").Skins.Wanda.Skin2)
                                    end    
                                  })


                                  Tab:AddButton({
                                    Name = "Demon",
                                    Callback = function()
                                          changeplayer(game:GetService("ReplicatedStorage").Skins.Wanda.Skin3)
                                      end    
                                    })


                                    Tab:AddButton({
                                      Name = "Springtrap",
                                      Callback = function()
                                            changeplayer(game:GetService("ReplicatedStorage").Skins.Springtrap.Skin1)
                                        end    
                                      })


                                      local Tab = Window:MakeTab({
                                        Name = "Other",
                                        Icon = "rbxassetid://10590477450",
                                        PremiumOnly = false
                                        })


                                        Tab:AddButton({
                                          Name = "RayField Version (has Speed)",
                                          Callback = function()
                                            loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/MarvellousPlaygroundGUI/main/MPGUI'))()
                                            end    
                                          })