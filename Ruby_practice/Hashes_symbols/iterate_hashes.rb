matz = { "First name" => "Yukihiro",
    "Last name" => "Matsumoto",
    "Age" => 47,
    "Nationality" => "Japanese",
    "Nickname" => "Matz"
}

matz.each do |key, value|
    puts key
end

matz.each do |key, value|
    puts value
end


# Define your default instead of it being nil
no_nil_hash = Hash.new("Negative Sir")