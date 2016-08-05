Math.sqrt(20) # Class Method or static method

class Area
# use either self.rect or Area.rect
  def Area.rect(length, width, units="inches")
    area = length * width
    printf("The area of this rectangle is %.2f %s.", area, units)
  end
end