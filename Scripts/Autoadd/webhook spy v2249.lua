-- dm me on dc: emplic lmk if theres any bugs/issues
-- this script also blocks webhooks from sending

getgenv().discordwebhookdetector = false -- shouldnt be very detected
getgenv().pastebindetector = true -- easy detected
getgenv().githubdetector = true -- easily detected
getgenv().anylink = false -- very easily detected
getgenv().kickbypass = true -- only works for scripts not games

loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Emplic/webhookspyv2/main/updated"))();