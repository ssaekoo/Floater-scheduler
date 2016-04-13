file = File.open('seed data.txt')
full_file = []
results = []
sub_results = []
stores = []
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
open('seed scripts.txt', 'w') { |f|
  results.uniq.each_with_index do |x, i|
    input = x.map{|y| y.gsub("\n", "")}
    f << [
      "\'address\': " + input[0..1].join("\n"),
      "\'store_phone_number\': " + input[2].gsub("Store Phone: ", ""),
      "\'pharmacy_phone_number\': " + input[3].gsub("Pharmacy Phone: ", ""),
      "\'monday\': " + input[4].gsub("Pharmacy Hours: Mon-Fri:", ""),
      "\'tuesday\': " + input[4].gsub("Pharmacy Hours: Mon-Fri:", ""),
      "\'wednesday\': " + input[4].gsub("Pharmacy Hours: Mon-Fri:", ""),
      "\'thursday\': " + input[4].gsub("Pharmacy Hours: Mon-Fri:", ""),
      "\'friday\': " + input[4].gsub("Pharmacy Hours: Mon-Fri:", ""),
      "\'saturday\': " + input[5].gsub("Sat-Sun:", ""),
      "\'sunday\': " + input[5].gsub("Sat-Sun:", "")
    ]
    f << "\n"
  end
}
