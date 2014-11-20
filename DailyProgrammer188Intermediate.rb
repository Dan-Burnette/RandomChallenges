##http://www.reddit.com/r/dailyprogrammer/comments/2m48nn/20141112_challenge_188_intermediate_box_plot//
#BOX PLOT GENERATOR 

#Give q3 if getting upper anomalies, q1 if getting lower anomalies
#type is "upper" or "lower"
def find_anomalies(data, quantile, iqr, type)
  anomalies = []
  data.each do |x|
    if type == "upper"
     is_anomalous = x.to_i > quantile + 1.5 * iqr ? true : false
    elsif type == "lower"
     is_anomalous = x.to_i < quantile - 1.5 * iqr ? true : false
    end
    if is_anomalous
      anomalies.push(x)
    end
  end
  anomalies
end

input = "7 12 21 28 28 29 30 32 34 35 35 36 38 39 40 40 42 44 45 46 47 49 50 53 55 56 59 63 80 191"
arr = input.split(' ')

#Calcuare quartiles
items = arr.length() 
q1 = arr[(items/4.0).ceil-1]
q2 = arr[(2*items/4.0).ceil-1]
q3 = arr[(3*items/4.0).ceil-1]
iqr = q3.to_i-q1.to_i

upper_anomalies = find_anomalies(arr, q3.to_i, iqr, "upper")
lower_anomalies = find_anomalies(arr, q1.to_i, iqr, "lower")

#Drawing the box plot
t4_str = ""   # 7         9
t3_str = ""   # |         |
t2_str = ""   # ------------ and so on...
t1_str = ""   # |         |

start = arr[0].to_i
finish  = arr[-1].to_i
plot_range = (start..finish)
#If we've hit the first and last outliers yet
first_found = false
last_found = false

plot_range.each_with_index do |x,i|

  if (lower_anomalies.include?(x.to_s) == false && arr.include?(x.to_s))
    first_found = true
  elsif (upper_anomalies.include?(x.to_s))
    last_found = true
  end

  #Marking each quantile
  if x == q1.to_i || x == q2.to_i || x == q3.to_i  
     trim_amt = x.to_s.length()
    #Make it line up properly
    if (t4_str.length > trim_amt)
      t4_str = t4_str[0..-trim_amt]
    end
    t4_str += x.to_s
    t3_str += "|"
    t2_str += "-"
    t1_str += "|"
  #Else if anomaly mark with an X
  elsif upper_anomalies.include?(x.to_s) || lower_anomalies.include?(x.to_s)
    trim_amt = x.to_s.length()
    #Make it line up properly
    if (t4_str.length > trim_amt)
      t4_str = t4_str[0..-trim_amt]
    end
    t4_str += x.to_s
    t2_str += "X"

  #Else just a normal piece of the range
  else
    if (last_found)
      #do nothing
    elsif first_found
      t4_str += " "
      t3_str += " "
      t2_str += "-"
      t1_str += " "
    end
  end
end

puts t4_str
puts t3_str
puts t2_str
puts t1_str








