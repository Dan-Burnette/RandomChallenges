#http://www.reddit.com/r/dailyprogrammer/comments/2o5tb7/2014123_challenge_191_intermediate_space_probe/

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
    populate
  end

  def print
    @spaces.each do |s|
      str = ''
      s.each do |t|
        str += t
      end
      puts str
    end
  end

  private
  #Find an unfilled spot in the world and fill it with the specified space type
  def fill_spot(space_type)
    unfilled_space = @unfilled_spaces.sample
    ind_1 = unfilled_space[0]
    ind_2 = unfilled_space[1]
    @spaces[ind_1][ind_2] = space_type
    @unfilled_spaces.delete(unfilled_space)
  end

  #Fill all spots in the world in appropriate proportions
  def populate
   spots = @spaces.length**2
   asteroids = (spots * 0.3).round
   gravity_wells = (spots * 0.1).round
   empty_space = (spots * 0.6 ).round

   asteroids.times {fill_spot('A')}
   gravity_wells.times {fill_spot('G')}
   #Because we fill two empty space with start, end marks
   empty_space.times {fill_spot('.')}
  end

end

class SpaceTraveler

  def initialize(world, start, destination)
    @world = world
    @start = start
    @destination = destination
  end

  private

  def get_spot(i1,i2)
    spot = @world.spaces[i1][i2]
  end
  def is_safe?(i1, i2)
    space = @world.spaces[i1][i2]
    neighbors = [get_spot(i1-1,i1-1),get_spot(i1-1,i2),get_spot(i1-1,i2+1),
                 get_spot(i1,i2-1),get_spot(i1,i2+1),get_spot(i1+1,i2-1),
                 get_spot(i1+1,i2),get_spot(i1+1,i2+1)]
    if  space == 'G' || space == 'A' || neighbors.includes?('G') || neighbor
      false
    end


  end



end
