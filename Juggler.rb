@jugglers = []
@circuits = []

class Juggler
  attr_reader :name, :h, :e, :p, :preferences
  attr_accessor :scores, :assignment
  def initialize(name, h, e, p, preferences)
    @name = name
    @h = h
    @e = e
    @p = p
    @preferences= preferences
    @scores = []
    @assignment = 0
  end
end

class Circuit
  attr_reader :name, :h, :e, :p
  attr_accessor :assigned_jugglers
  def initialize(name, h, e, p)
    @name = name
    @h = h
    @e = e
    @p = p
    @assigned_jugglers = []
  end
end

#Process lines into Jugglers or Circuits
def process_line(parts)
  name = parts[1] 
  h = parts[2][-1].to_i
  e =  parts[3][-1].to_i
  p = parts[4][-1].to_i
  if parts[5]
    preferences = parts[5].split(',')
    juggler = Juggler.new(name, h, e, p, preferences)
    @jugglers.push(juggler)
  else
    circuit = Circuit.new(name, h, e, p)
    @circuits.push(circuit)
  end
end

#Reading in the input file
File.readlines('juggler_input.txt').each do |line|
 parts = line.split(' ')
 if !parts.empty?
  process_line(parts)
 end
end



# The number of jugglers assigned to a circuit should be the number of jugglers 
# divided by the number of circuits.

jugglers_per_circuit = @jugglers.length / @circuits.length

def calculate_score(juggler, circuit)
  h_product = juggler.h * circuit.h
  p_product = juggler.p * circuit.p
  e_product = juggler.e * circuit.e
  score = h_product + p_product + e_product
end

#Calculate all scores
@jugglers.each do |juggler|
  @circuits.each do |circuit|
    score = calculate_score(juggler, circuit)
    juggler.scores.push(score)
  end
end

# we want to match jugglers to circuits such that no juggler could switch to a 
# circuit that they prefer more than the one they are assigned to and be a 
# better fit for that circuit than one of the other jugglers assigned to it.

#Puts a juggler in a better spot
def place_juggler(juggler)
  current_assignment = juggler.assignment
  if juggler.preferences.include?(current_assignment)
    assignment_ind = juggler.preferences.find_index(current_assignment)
  end

  juggler.preferences.each_with_index do |p,i|
    circuit = circuit.find {|c| c.name == p}
    if juggler.scores[i]
      
    end
  end
end



#Initial seeding of assignments with no regard for matching
@jugglers.each do |juggler|
  circuit = @circuits.find {|c| c.assigned_jugglers.length < jugglers_per_circuit}
  circuit.assigned_jugglers.push(juggler)
  juggler.assignment = circuit.name
end

@circuits.each do |c|
  puts c.inspect
end



