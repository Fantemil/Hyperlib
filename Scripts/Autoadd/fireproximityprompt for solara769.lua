local function fireproximityprompt(ProximityPrompt, Amount, Skip)
                                assert(ProximityPrompt, "Argument #1 Missing or nil")
                                assert(
                                    typeof(ProximityPrompt) == "Instance" and ProximityPrompt:IsA("ProximityPrompt"),
                                    "Attempted to fire a Value that is not a ProximityPrompt"
                                )
                                local HoldDuration = ProximityPrompt.HoldDuration
                                if Skip then
                                    ProximityPrompt.HoldDuration = 0
                                end
                                for i = 1, Amount or 1 do
                                    ProximityPrompt:InputHoldBegin()
                                    if Skip then
                                        wait(HoldDuration)
                                    end
                                    ProximityPrompt:InputHoldEnd()
                                end
                                ProximityPrompt.HoldDuration = HoldDuration
                            end

-- NOTE: I DID NOT CODE THIS!!!
-- You can use it like this: fireproximityprompt(path_to_proximity_prompt)
-- Or you can also put the 2 other arguments, anyways i recommend you to read the function before.