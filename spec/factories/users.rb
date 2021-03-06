FactoryBot.define do

  factory :user do
    password = Faker::Internet.password(8)
    name                  {Faker::Name.last_name}
    sequence(:email)      { Faker::Internet.free_email }
    password              {password}
    password_confirmation {password}
  end

end
