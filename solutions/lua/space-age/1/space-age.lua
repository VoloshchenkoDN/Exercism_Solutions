local SpaceAge = {}

local orbitalPeriod = {
  Mercury = 0.2408467, Venus = 0.61519726, Earth = 1.0, Mars = 1.8808158,
  Jupiter = 11.862615, Saturn = 29.447498, Uranus = 84.016846, Neptune = 164.79132
}

local function round(num, numDecimalPlaces)
  local mult = 10 ^ (numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

local function ageOnPlanet(seconds, period)
  local EarthYearInSeconds = 31557600
  return round(seconds / (EarthYearInSeconds * period), 2)
end  

function SpaceAge:new(sec)
  local self = {seconds = sec}
  self.on_earth = function() return ageOnPlanet(sec, orbitalPeriod.Earth) end
  self.on_mercury = function() return ageOnPlanet(sec, orbitalPeriod.Mercury) end
  self.on_venus = function() return ageOnPlanet(sec, orbitalPeriod.Venus) end
  self.on_mars = function() return ageOnPlanet(sec, orbitalPeriod.Mars) end
  self.on_jupiter = function() return ageOnPlanet(sec, orbitalPeriod.Jupiter) end
  self.on_saturn = function() return ageOnPlanet(sec, orbitalPeriod.Saturn) end
  self.on_uranus = function() return ageOnPlanet(sec, orbitalPeriod.Uranus) end
  self.on_neptune = function() return ageOnPlanet(sec, orbitalPeriod.Neptune) end
  return self
end

return SpaceAge
