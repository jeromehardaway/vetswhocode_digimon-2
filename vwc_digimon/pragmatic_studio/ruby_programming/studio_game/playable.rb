module Playable
  def blam
    @health -= 10 # decreases a players health by 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15 # increases a players health by 15
    puts "#{@name} got w00ted!"
  end

  def strong?
    @health > 100
  end
end
