FactoryGirl.define do
  factory :tournament do
    name 'GP Vegas'
    location 'Las Vegas, Nevada'
    format 'Modern Masters 2017 limited'
    no_of_players 5000
    date '12/25/1921'
  end

  factory :deck do
    name 'Mono Blue Control'
    placing 1
    player 'Luis Scott-Vargas'
    tournament
  end

  factory :card do
    name 'Torrential Gearhulk'
    colors 'blue'
    number_played '4'
    sequence(:img_url) { |n| "cards/#{n}" }
    main? true
    deck
  end

  factory :user do
    first_name 'John'
    last_name 'Smith'
    sequence(:email) { |n| "user#{n}@example.com" }
    password 'password'
    confirmation_password 'password'
  end
end
