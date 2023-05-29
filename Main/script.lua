vanilla_model.PLAYER:setVisible(false)

events.ENTITY_INIT:register(function ()
    nameplate.ENTITY:setText("Ace (" .. player:getName() .. ")")
end)