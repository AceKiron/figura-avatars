rainbow_nameplate = {
    init = function(saturation, brightness, speed)
        if saturation == nil then saturation = 1 end
        if brightness == nil then brightness = 1 end
        if speed == nil then speed = 5 end

        local counter = 0

        events.TICK:register(function ()
            if counter > 255 then counter = counter - (255 - speed)
            else counter = counter + speed end

            local username = mxace.getNameplateText()
            local newName = "["

            for i = 1, string.len(username),1 do
                newName = newName .. '{"text":"' .. string.sub(
                                                        username,
                                                        i,
                                                        i
                                                    ) .. '","color":"#' .. vectors.rgbToHex(
                                                                                vectors.hsvToRGB(
                                                                                    (counter + speed * i - math.floor(
                                                                                        (
                                                                                            counter + speed * i
                                                                                        ) / 255
                                                                                    ) * 255
                                                                                ) / 255, saturation, brightness)) .. '"},'
            end

            newName = string.sub(newName,1,string.len(newName)-1) .. ']'

            nameplate.ENTITY:setText(newName)
        end)
    end
}