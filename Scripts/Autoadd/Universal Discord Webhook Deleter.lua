local WebhookToDelete = "Put Link Here, Example: https://discordapp.com/WebhookLink"

syn.request({
    Url = WebhookToDelete,
    Method = "DELETE"
})

print("Deleted!")