function drawDisplay()
    display = peripheral.find("monitor")
    term.redirect(display)
    display.setBackgroundColor(colors.black)
    term.clear(display)
    dispSizeX = monitor.getSize(display)
    dispSizeY = tonumber(string.reverse(monitor.getSize(display)))
    barAreaStartX = dispSizeX * .05
    barAreaStartY = dispSizeY * .2
    barAreaEndX = dispSizeX * .97
    barAreaEndY = dispSizeY * .5
    barArea = window.create(term.current(), barAreaStartX, barAreaStartY, barAreaEndX, barAreaEndY)
    barEndX = barAreaEndX - 1
    barEndY = barAreaEndY - 1
    barStartX = barAreaStartX + 1
    barStartY = barAreaStartY + 1
    paintutils.drawBox(barAreaStartX, barAreaStartY, barAreaEndX, barAreaEndY, colors.lightGray)
end
drawDisplay()
function eBar()
local maxFE = peripheral.wrap("bottom").getEnergyCapacity()
        while true do
        cube0 = peripheral.wrap("bottom").getEnergy()
            if cube0 >= maxFE * .98 then
                paintutils.drawFilledBox(barStartX, barStartY, barEndX, barEndY, colors.green)
            elseif cube0 <= maxFE * .98 and cube0 >= maxFE * .9 then
                paintutils.drawFilledBox(barStartX, barStartY, barEndX * .9, barEndY, colors.green)
            elseif cube0 < maxFE * .9  and cube0 >= maxFE * .8 then
                paintutils.drawFilledBox(barStartX, barStartY, barEndX * .8, barEndY, colors.green)
            elseif cube0 < maxFE * .8 and cube0 >= maxFE * .7 then
                paintutils.drawFilledBox(barStartX, barStartY, barEndX * .7, barEndY, colors.green)
            elseif cube0 < maxFE * .7 and cube0 >= maxFE * .6 then
                paintutils.drawFilledBox(barStartX, barStartY, barEndX * .6, barEndY, colors.green)
            elseif cube0 < maxFE * .6 and cube0 >= maxFE * .5 then
                paintutils.drawFilledBox(barStartX, barStartY, barEndX * .5, barEndY, colors.green)
            elseif cube0 < maxFE * .5 and cube0 >= maxFE * .4 then
                paintutils.drawFilledBox(barStartX, barStartY, barEndX * .4, barEndY, colors.green)
            elseif cube0 < maxFE * .4 and cube0 >= maxFE * .3 then
                paintutils.drawFilledBox(barStartX, barStartY, barEndX * .3, barEndY, colors.green)
            elseif cube0 < maxFE * .3 and cube0 >= maxFE * .2 then
                paintutils.drawFilledBox(barStartX, barStartY, barEndX * .2, barEndY, colors.green)
            elseif cube0 < maxFE * .2 and cube0 >= maxFE * .1 then
                paintutils.drawFilledBox(barStartX, barStartY, barEndX * .1, barEndY, colors.green)
            else
                paintutils.drawFilledBox(barStartX, barStartY, barStartX + 1, barEndY, colors.green)
            end end end
            eBar()
