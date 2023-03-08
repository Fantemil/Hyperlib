for i,v in pairs(game:GetService("Players"):GetPlayers()) do
local args = {
    [1] = game:GetService("Players")[v.Name].Character:FindFirstChild("Head"),
    [2] = Vector3.new(328.66094970703125, 177.67303466796875, 274.84600830078125),
    [3] = {
        ["BackstabRange"] = 5,
        ["AfflictChance"] = 100,
        ["LastStrike"] = false,
        ["MaxHits"] = 1,
        ["AltDamage"] = {
            [1] = 20
        },
        ["AltAttack"] = false,
        ["Lifesteal"] = 0,
        ["BackstabAnimationTable"] = {},
        ["LastStrikeAnimationTable"] = {},
        ["AltLastStrikeAnimationTable"] = {},
        ["ArmorPenetration"] = 100,
        ["BaseDamage"] = {
            [1] = 15,
            [2] = 22
        },
        ["HarshImpactSoundVolume"] = 1,
        ["HarshImpactEffectEnabled"] = true,
        ["SoundTable"] = {
            [1] = {
                ["Pitch"] = {
                    [1] = 1
                },
                ["MaxDistance"] = {
                    [1] = 10000
                },
                ["SoundType"] = "Swing",
                ["EmitterSize"] = {
                    [1] = 10
                },
                ["SoundId"] = "rbxassetid://7025242061",
                ["Volume"] = {
                    [1] = 0.5
                },
                ["TimePosition"] = {
                    [1] = 0
                },
                ["DelaySound"] = {
                    [1] = 0.2
                }
            },
            [2] = {
                ["Pitch"] = {
                    [1] = 1
                },
                ["MaxDistance"] = {
                    [1] = 10000
                },
                ["SoundType"] = "Swing",
                ["EmitterSize"] = {
                    [1] = 10
                },
                ["SoundId"] = "rbxassetid://6230942062",
                ["Volume"] = {
                    [1] = 0.5
                },
                ["TimePosition"] = {
                    [1] = 0
                },
                ["DelaySound"] = {
                    [1] = 0.2
                }
            },
            [3] = {
                ["Pitch"] = {
                    [1] = 1
                },
                ["MaxDistance"] = {
                    [1] = 10000
                },
                ["SoundType"] = "Swing",
                ["EmitterSize"] = {
                    [1] = 10
                },
                ["SoundId"] = "rbxassetid://7025242231",
                ["Volume"] = {
                    [1] = 0.5
                },
                ["TimePosition"] = {
                    [1] = 0
                },
                ["DelaySound"] = {
                    [1] = 0.2
                }
            },
            [4] = {
                ["Pitch"] = {
                    [1] = 1
                },
                ["MaxDistance"] = {
                    [1] = 10000
                },
                ["SoundType"] = "Swing",
                ["EmitterSize"] = {
                    [1] = 10
                },
                ["SoundId"] = "rbxassetid://7529268375",
                ["Volume"] = {
                    [1] = 0.5
                },
                ["TimePosition"] = {
                    [1] = 0
                },
                ["DelaySound"] = {
                    [1] = 0.2
                }
            },
            [5] = {
                ["Pitch"] = {
                    [1] = 1
                },
                ["MaxDistance"] = {
                    [1] = 10000
                },
                ["SoundType"] = "HarshImpact",
                ["EmitterSize"] = {
                    [1] = 10
                },
                ["SoundId"] = "rbxassetid://7432007611",
                ["Volume"] = {
                    [1] = 0.5
                },
                ["TimePosition"] = {
                    [1] = 0
                },
                ["DelaySound"] = {
                    [1] = 0
                }
            },
            [6] = {
                ["Pitch"] = {
                    [1] = 1
                },
                ["MaxDistance"] = {
                    [1] = 10000
                },
                ["SoundType"] = "HarshImpact",
                ["EmitterSize"] = {
                    [1] = 10
                },
                ["SoundId"] = "rbxassetid://7432007910",
                ["Volume"] = {
                    [1] = 0.5
                },
                ["TimePosition"] = {
                    [1] = 0
                },
                ["DelaySound"] = {
                    [1] = 0
                }
            },
            [7] = {
                ["Pitch"] = {
                    [1] = 1
                },
                ["MaxDistance"] = {
                    [1] = 10000
                },
                ["SoundType"] = "HarshImpact",
                ["EmitterSize"] = {
                    [1] = 10
                },
                ["SoundId"] = "rbxassetid://7432008327",
                ["Volume"] = {
                    [1] = 0.5
                },
                ["TimePosition"] = {
                    [1] = 0
                },
                ["DelaySound"] = {
                    [1] = 0
                }
            },
            [8] = {
                ["Pitch"] = {
                    [1] = 1
                },
                ["MaxDistance"] = {
                    [1] = 10000
                },
                ["SoundType"] = "HarshImpact",
                ["EmitterSize"] = {
                    [1] = 10
                },
                ["SoundId"] = "rbxassetid://7432009068",
                ["Volume"] = {
                    [1] = 0.5
                },
                ["TimePosition"] = {
                    [1] = 0
                },
                ["DelaySound"] = {
                    [1] = 0
                }
            },
            [9] = {
                ["Pitch"] = {
                    [1] = 1
                },
                ["MaxDistance"] = {
                    [1] = 10000
                },
                ["SoundType"] = "Hit",
                ["EmitterSize"] = {
                    [1] = 10
                },
                ["SoundId"] = "rbxassetid://7432007611",
                ["Volume"] = {
                    [1] = 0.5
                },
                ["TimePosition"] = {
                    [1] = 0
                },
                ["DelaySound"] = {
                    [1] = 0
                }
            },
            [10] = {
                ["Pitch"] = {
                    [1] = 1
                },
                ["MaxDistance"] = {
                    [1] = 10000
                },
                ["SoundType"] = "Hit",
                ["EmitterSize"] = {
                    [1] = 10
                },
                ["SoundId"] = "rbxassetid://7432007910",
                ["Volume"] = {
                    [1] = 0.5
                },
                ["TimePosition"] = {
                    [1] = 0
                },
                ["DelaySound"] = {
                    [1] = 0
                }
            },
            [11] = {
                ["Pitch"] = {
                    [1] = 1
                },
                ["MaxDistance"] = {
                    [1] = 10000
                },
                ["SoundType"] = "Hit",
                ["EmitterSize"] = {
                    [1] = 10
                },
                ["SoundId"] = "rbxassetid://7432008327",
                ["Volume"] = {
                    [1] = 0.5
                },
                ["TimePosition"] = {
                    [1] = 0
                },
                ["DelaySound"] = {
                    [1] = 0
                }
            },
            [12] = {
                ["Pitch"] = {
                    [1] = 1
                },
                ["MaxDistance"] = {
                    [1] = 10000
                },
                ["SoundType"] = "Hit",
                ["EmitterSize"] = {
                    [1] = 10
                },
                ["SoundId"] = "rbxassetid://7432009068",
                ["Volume"] = {
                    [1] = 0.5
                },
                ["TimePosition"] = {
                    [1] = 0
                },
                ["DelaySound"] = {
                    [1] = 0
                }
            }
        },
        ["ModuleName"] = "1",
        ["StaminaUsage"] = 0,
        ["RechargeOnHit"] = false,
        ["Backstab"] = false,
        ["DamageMultipliers"] = {
            ["Left Leg"] = 1,
            ["Right Arm"] = 1,
            ["Head"] = 2,
            ["Torso"] = 1,
            ["Right Leg"] = 1,
            ["Left Arm"] = 1
        },
        ["CriticalDamage"] = false,
        ["CriticalBaseChance"] = 0.05,
        ["Headshot"] = true,
        ["BackstabDamage"] = {
            [1] = 20
        },
        ["BurstAttack"] = false,
        ["DashReductionOnAir"] = 0.5,
        ["HarshImpactSoundPitchMin"] = 1,
        ["CustomHarshImpactEffect"] = false,
        ["CriticalDamageMultiplier"] = 3,
        ["Knockback"] = 0,
        ["AfflictionName"] = "",
        ["Affliction"] = false,
        ["BackstabLastStrikeAnimationTable"] = {},
        ["HarshImpactSoundPitchMax"] = 1.5,
        ["AttacksPerBurst"] = 3,
        ["HitEffectEnabled"] = true,
        ["EffectFolder"] = game:GetService("Players").LocalPlayer.Character.Fists.Setting:FindFirstChild("1").Effects,
        ["AltAttackAnimationTable"] = {},
        ["BurstRate"] = 0.075,
        ["PlaySoundRapidly"] = false,
        ["Dash"] = true,
        ["AttackAnimationTable"] = {
            [1] = {
                ["Id"] = "rbxassetid://10491800475",
                ["Hitbox"] = {
                    ["HitboxType"] = "RaycastHitbox",
                    ["MaxPartsInRegion"] = 50,
                    ["HitboxSize"] = Vector3.new(4, 4, 3),
                    ["HitboxShape"] = Enum.PartType.Block,
                    ["HitboxCFrame"] = CFrame.new(0, 1, -2) * CFrame.Angles(-0, 0, -0)
                },
                ["AttackDelay"] = 0.45,
                ["RaycastHitboxInstances"] = {
                    [1] = {
                        [1] = "Tool",
                        [2] = "Handle"
                    }
                },
                ["DashLifeTime"] = 0.25,
                ["DashVelocity"] = 0,
                ["Speed"] = 1,
                ["HitboxTimes"] = {
                    [1] = 0,
                    [2] = 0.45
                },
                ["ComboDelay"] = 0.1,
                ["DashDelay"] = 0
            },
            [2] = {
                ["Id"] = "rbxassetid://10491802615",
                ["Hitbox"] = {
                    ["HitboxType"] = "RaycastHitbox",
                    ["MaxPartsInRegion"] = 50,
                    ["HitboxSize"] = Vector3.new(4, 4, 3),
                    ["HitboxShape"] = Enum.PartType.Block,
                    ["HitboxCFrame"] = CFrame.new(0, 1, -2) * CFrame.Angles(-0, 0, -0)
                },
                ["AttackDelay"] = 0.45,
                ["RaycastHitboxInstances"] = {
                    [1] = {
                        [1] = "Tool",
                        [2] = "Handle"
                    }
                },
                ["DashLifeTime"] = 0.25,
                ["DashVelocity"] = 0,
                ["Speed"] = 1,
                ["HitboxTimes"] = {
                    [1] = 0,
                    [2] = 0.45
                },
                ["ComboDelay"] = 0.2,
                ["DashDelay"] = 0
            },
            [3] = {
                ["Id"] = "rbxassetid://10491805061",
                ["Hitbox"] = {
                    ["HitboxType"] = "RaycastHitbox",
                    ["MaxPartsInRegion"] = 50,
                    ["HitboxSize"] = Vector3.new(4, 4, 3),
                    ["HitboxShape"] = Enum.PartType.Block,
                    ["HitboxCFrame"] = CFrame.new(0, 1, -2) * CFrame.Angles(-0, 0, -0)
                },
                ["AttackDelay"] = 0.6,
                ["RaycastHitboxInstances"] = {
                    [1] = {
                        [1] = "Tool",
                        [2] = "Handle"
                    }
                },
                ["DashLifeTime"] = 0.25,
                ["DashVelocity"] = 0,
                ["Speed"] = 1,
                ["HitboxTimes"] = {
                    [1] = 0,
                    [2] = 0.6
                },
                ["ComboDelay"] = 0.3,
                ["DashDelay"] = 0
            }
        },
        ["RechargeAmount"] = 5,
        ["BackstabAnimation"] = false
    },
    [4] = game:GetService("Players")[v.Name].Character.Humanoid,
    [5] = game:GetService("Players")[v.Name].Character.HumanoidRootPart,
    [6] = 21.382731714523782,
    [7] = Vector3.new(0.6885561943054199, 0.0642840713262558, -0.7223281264305115),
    [8] = false
}

game:GetService("Players").LocalPlayer.Character.Fists.MeleeScriptServer.InflictTarget:FireServer(unpack(args))
end