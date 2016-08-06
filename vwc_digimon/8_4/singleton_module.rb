require 'singleton'

class Area
  include Singleton

    def self.rect( length: 10.0, width: 10.0,
      units: "inches")
      area = length * width
      printf("The area of this rectangle is %.2f
      %s.\n", area, units )
    end
end
