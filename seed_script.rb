file = File.open('seed data.txt')
full_file = []
results = []
sub_results = []
file.each_line do |x|
  full_file << x
end

full_file.each do |x|
  if x == "\n"
    results << sub_results
    sub_results = []
  else
    sub_results << x
  end
end
