-- [RECOMMENDED] The "production" branch, disallowing to change values from other scripts. Should be used for protection.

loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/MainProd"))()

-- The "development" branch, allowing to change values from other, potentially malicious scripts. Used mainly for debugging and testing.

loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/Main"))()


-- The "Codex" branch, with a compatibility update due to their issue with Idled connections. This is equivalent to the production branch but without all the connections based protection, and should only be used by Codex users until their issue is resolved.

loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/CodexTest"))()
