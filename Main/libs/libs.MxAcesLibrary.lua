mxace = {
    _nameplateText = nil,
    getNameplateText = function() return mxace._nameplateText end,
    setNameplateText = function(nameplateText, manualUpdate)
        mxace._nameplateText = nameplateText
        if manualUpdate then
            nameplate.ENTITY:setText(nameplateText)
        end
    end
}