dictionary = { :one => 'uno', :two => 'dos', :three => 'tres' }
dictionary[:four] = 'cuatro'
# so that it upcases the first letter in cuatro to Cuatro
puts dictionary[:four].capitalize
