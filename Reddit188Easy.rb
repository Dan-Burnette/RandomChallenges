lines =  File.open('188_input.txt', "r").readlines

months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
lines.each do |l|
  l.delete! "\n"
  l.delete! ','
  if l.include? '-'
    reformated = l
  elsif l.include? '#'
    parts = l.split '#'
    year = parts[1]
    century = year.to_i >= 50 ? "19" : "20"
    reformated = "#{century}" + "#{year}" + '-' + "#{parts[0]}" + '-' + "#{parts[2]}"
  elsif l.include? '*'
    parts = l.split '*'
    year = parts[2]
    reformated =  "#{year}" + '-' + "#{parts[1]}" + '-' + "#{parts[0]}"
  elsif l.include? '/'
    parts = l.split '/'
    year = parts[2]
    century = year.to_i >= 50 ? "19" : "20"
    reformated = "#{century}" + "#{year}" + '-' + "#{parts[1]}" + '-' + "#{parts[0]}"
  else 
    parts = l.split
    month = months.find_index(parts[0]).to_i
    month = month < 10 ? "0" + month.to_s : month
    year = parts[-1]
    if parts[-1].length == 2
      century = year.to_i >= 50 ? "19" : "20"
      reformated = "#{century}" + "#{year}" + '-' + "#{month}" + '-' +  "#{parts[1]}" 
    else 
     reformated = "#{year}" + '-' + "#{month}" + '-'+ "#{parts[1]}"
    end
  end
    puts reformated
end


