FactoryGirl.define do
  factory :book do
    title "Harry Potter"
    author "J. K. Rowling"
    isbn "9788532511010"
    year 2000
    pages 224
    publishing_house "Rocco"

    trait :invalid do
      title nil
      author nil
      isbn nil
    end

    trait :another do
      title "A Sociedade do Anel"
      author "J. R. R. Tolkien"
      isbn "9788533613379"
      year 2000
      pages 464
      publishing_house "Martins Fontes"
    end
  end
end
