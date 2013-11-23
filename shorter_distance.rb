class Route
  attr_accessor :longitude, :latitude
  def initialize(longitude, latitude)
    @longitude = longitude
    @latitude = latitude
  end
end

def distance(longitude1, latitude1, longitude2, latitude2)
  r = 6371; # Radius of the earth in km
  distanceLat = degress_to_radians(latitude2-latitude1)  #degress_to_radians below
  distanceLon = degress_to_radians(longitude2-longitude1)
  a =
    Math.sin(distanceLat/2) * Math.sin(distanceLat/2) +
    Math.cos(degress_to_radians(latitude1)) * Math.cos(degress_to_radians(latitude2)) *
    Math.sin(distanceLon/2) * Math.sin(distanceLon/2)
  c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
  d = r * c  # // Distance in km
  return d
end

def degress_to_radians(deg)
  return deg * (Math::PI/180)
end

def shorter_distance(dist1, dist2, dist3, dist4)
  if (dist1 - dist2).abs > (dist3 - dist4).abs
    return 1
  else
    return  2
end



SF = Route.new(122, 37)
NY = Route.new(73, 40)
p distance(SF.longitude, SF.latitude, NY.longitude, NY.latitude)
