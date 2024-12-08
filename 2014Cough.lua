-- Este script recrea un incidente del 2014, nada más lo hice por diversión.
-- Obviamente no abusa de ningun exploit, solo recrea el *cough* y ya :P

local function Cough()
    for i, player in ipairs( player.GetAll() ) do
        local dir = "ambient/voices/cough"..math.random(1, 4)..".wav"
        local playerpos = player:GetPos()
        player:Say("*cough*")
        sound.Play(dir, playerpos)
    end
end

timer.Create("coughVirus", 2, 0, function() Cough() end)
