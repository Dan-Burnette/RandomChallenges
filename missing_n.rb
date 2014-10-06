#Given an array containing all numbers from 1-N witht he exception of one, write a function that prints the missing number.
def missing_n(array)
  array.each_with_index do |x,i|
    if x == 1
      #do nothing
    elsif x != array[i-1]+1
      puts x-1
    end
  end
end

def missing_n(array)
  array.each_with_index { |x,i| x == 1 ? (x != array[i-1]+1 ? puts x-1 : nil) : nil }
end