class World

  #unfilled spaces is of form [[ind1,ind2], [ind1,ind2]] where 
  #ind1,ind2 are indecies of the 2D array spaces representing the world
  def initialize(n)
    @unfilled_spaces = []
    @spaces = []
    n.times {|i| @spaces.push((n*i+1..n*i+n).to_a)}
    @spaces.each do |s|
      @spaces.length.times do |i| 
        unfilled_space = [@spaces.find_index(s), i]
        @unfilled_spaces.push(unfilled_space)
      end
    end
  end

  def fill_spot(space_type)
    unfilled_space = @unfilled_spaces.sample
    ind_1 = unfilled_space[0]
    ind_2 = unfilled_space[1]
    @spaces[ind_1][ind_2] = space_type
    @unfilled_spaces.delete(unfilled_space)
  end

  def populate
   spots = @spaces.length**2
   asteroids = (spots * 0.3).round
   gravity_wells = (spots * 0.1).round
   empty_space = (spots * 0.6 ).round
   
   asteroids.times {fill_spot('A')}
   gravity_wells.times {fill_spot('G')}
   empty_space.times {fill_spot('.')}

  end

end

#Create 2D Array of the world filled with increasing numbers
# def create_world(n) 
#  world = []
#  n.times {|i| world.push((n*i+1..n*i+n).to_a) }
#  world
# end

# #Fill a random spot in the world with the given space type
# def fill_spot(world, space_type)
#   ind_1 = world.find_index(world.sample)
#   ind_2 = world[ind_1].find_index(world[ind_1].sample)
#   if world[ind_1][ind_2].is_a? Integer
#     world[ind_1][ind_2] = space_type
#   else 
#     fill_spot(world, space_type)
#   end
#   world
# end

# def populate_world(world)
#  spots = world.length**2
#  asteroids = (spots * 0.3).round
#  gravity_wells = (spots * 0.1).round
#  empty_space = (spots * 0.6 ).round
 
#  asteroids.times {world = fill_spot(world, 'A')}
#  gravity_wells.times {world = fill_spot(world, 'G')}
#  empty_space.times {world = fill_spot(world, '.')}
#  puts world.inspect
# end