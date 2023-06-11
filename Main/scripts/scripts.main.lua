vanilla_model.PLAYER:setVisible(false)

events.ENTITY_INIT:register(function()
    mxace.setNameplateText(player:getName())

    rainbow_nameplate.init()
end)