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

results.uniq.each_with_index do |x, i|
  input = x.map{|y| y.gsub("\n", "")}
  stores << [
    "\'address\': " + input[0..1].join("\n"),
    "\'store_phone_number\': " + input[2].gsub("Store Phone: ", ""),
    "\'pharmacy_phone_number\': " + input[3].gsub("Pharmacy Phone: ", ""),
    "\'monday\': " + input[4].gsub("Pharmacy Hours: Mon-Fri:", ""),
    "\'tuesday\': " + input[4].gsub("Pharmacy Hours: Mon-Fri:", ""),
    "\'wednesday\': " + input[4].gsub("Pharmacy Hours: Mon-Fri:", ""),
    "\'thursday\': " + input[4].gsub("Pharmacy Hours: Mon-Fri:", ""),
    "\'friday\': " + input[4].gsub("Pharmacy Hours: Mon-Fri:", ""),
    "\'saturday\': " + input[5].gsub("Sat-Sun:", ""),
    "\'sunday\': " + input[5].gsub("Sat-Sun:", ""),
    input[1]
  ]
end

stores.sort!{|a, b| a[-1] <=> b[-1]}
open('seed scripts.txt', 'w') { |f|
  stores.each do |store|
    f << store
    f << "\n"
  end
}

##
create_table "users", force: :cascade do |t|
  t.string   "name",            null: false
  t.string   "password_digest", null: false
  t.string   "session_token",   null: false
  t.string   "email"
  t.string   "phone_number"
  t.date     "hire_date"
  t.string   "address",         null: false
  t.decimal  "longitude"
  t.decimal  "latitude"
  t.integer  "user_type_id",    null: false
  t.integer  "district_id"
  t.integer  "store_id"
  t.integer  "updated_by_id"
  t.datetime "created_at",      null: false
  t.datetime "updated_at",      null: false
end

add_index "users", ["district_id"], name: "index_users_on_district_id", using: :btree
add_index "users", ["store_id"], name: "index_users_on_store_id", using: :btree
add_index "users", ["user_type_id"], name: "index_users_on_user_type_id", using: :btree
