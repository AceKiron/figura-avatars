events.CHAT_RECEIVE_MESSAGE:register(function (message)
    if message == "You are now AFK." then
        mxace.setNameplateText("[AFK] " .. player:getName(), true)
    elseif message == "You are no longer AFK." then
        mxace.setNameplateText(player:getName(), true)
    end
end)