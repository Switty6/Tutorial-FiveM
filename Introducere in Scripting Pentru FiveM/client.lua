RegisterCommand('salut', function()

    TriggerEvent('chat:addMessage',{
        color = {255,0,0},
        multiline = false,
        args = {"server","Salutare si tie!"}
    })

end, false)