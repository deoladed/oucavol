FactoryBot.define do
  factory :site do
    suid { 1 }
    ffvl_id { 1 }
    number { 1 }
    name { "MyString" }
    surname { "MyString" }
    zip { "MyString" }
    city { "MyString" }
    site_type { "MyString" }
    type { "" }
    practice { "MyString" }
    latitude { 1.5 }
    longitude { 1.5 }
    altitude { 1 }
    access { "MyText" }
    parking_distance { 1 }
    top_down_distance { 1 }
    orientation { "MyString" }
    favorable_wind { "MyString" }
    unfavorable_wind { "MyString" }
    ideal_conditions { "MyText" }
    description { "MyText" }
    restrictions { "MyText" }
    air_region { "MyString" }
    dangers { "MyString" }
    cross_number { 1 }
    modification_date { "2019-05-10 14:45:08" }
  end
end
