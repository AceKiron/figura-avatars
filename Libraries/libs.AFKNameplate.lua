function pings.AFK(value)
    if value then
        mxace.setNameplateText("[AFK] " .. player:getName(), true)
    else
        mxace.setNameplateText(player:getName(), true)
    end
end

events.CHAT_RECEIVE_MESSAGE:register(function (message)
    if message == "You are now AFK." then
        pings.AFK(true)
    elseif message == "You are no longer AFK." then
        pings.AFK(false)
    end
end)