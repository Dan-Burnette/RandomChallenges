class Cat

  attr_accessor :hat

  def initialize
    @hat = false
  end

  def toggle_hat
    @hat = !@hat
  end

end

def go_through_the_lines(passes, line)
  cur_pass = 1
  passes.times do
    line.each do |cat|
      if (line.find_index(cat)+1) % cur_pass == 0
        cat.toggle_hat
      end
    end
    cur_pass +=1
  end
end

def how_many_hats(cat_line)
  count = 0
  cat_line.each do |c|
    if c.hat == true
      count +=1
    end
  end
  count
end

def positions_of_hat_cats(cat_line)
  positions = []
  cat_line.each do |c|
    if c.hat == true
      positions.push(cat_line.find_index(c)+1)
    end
  end
  positions
end

line = []
100.times do 
  line.push(Cat.new)
end

go_through_the_lines(100, line)
how_many_hats(line)
positions_of_hat_cats(line)