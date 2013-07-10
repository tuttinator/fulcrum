FactoryGirl.define do

  factory :user do
    sequence(:name) {|n| "User #{n}"}
    sequence(:initials) {|n| "U#{n}"}
    sequence(:email) {|n| "user#{n}@example.com"}
    password 'password'
    password_confirmation 'password'
    after(:create) do |user| 
      user.confirm!
    end
  end

  factory :unconfirmed_user, :class => User do
    sequence(:name) {|n| "Unconfirmed User #{n}"}
    sequence(:initials) {|n| "U#{n}"}
    sequence(:email) {|n| "unconfirmed_user#{n}@example.com"}
  end

  factory :project do
    name 'Test Project'
  end

  factory :story do
    title 'Test story'
    requested_by :factory => :user
    project
  end

  factory :changeset do
    story
    project
  end

  factory :note do
    note        'Test note'
    story
    user
  end

end
