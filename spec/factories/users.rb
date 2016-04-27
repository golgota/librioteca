FactoryGirl.define do
  factory :user do
    name "kelvin"
    email "kelvin.s@gmail.com"
    password "12345678"

    trait :invalid do
      name nil
      email nil
      password nil
    end

    trait :another do
      name "mingyar"
      email "mingyar.furtado@gmail.com"
      password "87654321"
    end
  end
end
