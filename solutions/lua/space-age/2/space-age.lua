local SpaceAge = {}
local EarthYearInSeconds = 31557600
local orbitalPeriod = {
  on_mercury = 0.2408467, on_venus = 0.61519726, on_earth = 1.0, on_mars = 1.8808158,
  on_jupiter = 11.862615, on_saturn = 29.447498, on_uranus = 84.016846, on_neptune = 164.79132
}

function SpaceAge:new(sec)
  local obj = {seconds = sec}
  self.__index = function(self, key)
    local age = tonumber(string.format("%.2f", self.seconds / EarthYearInSeconds / orbitalPeriod[key]))
    return function() return age end
  end
  return setmetatable(obj, self)
end

return SpaceAge
