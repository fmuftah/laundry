FactoryBot.define do
 
  factory :client do
    first_name { "Ed" }
    last_name { "Gruberman" }
    phone { rand(8 ** 8).to_s.rjust(8,'0') }
    address {"Doha Qatar"}
  end
  
  factory :order do
    association :client
    association :task
    date_of_order { Date.current }
    due_on {3.day.from_now.to_date}
  end
  
  factory :task do
    name { "Dry Clean"}
    type { "Dry Clean" }
    cost { 35 }

  end

end