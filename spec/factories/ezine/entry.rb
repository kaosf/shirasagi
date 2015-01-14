FactoryGirl.define do
  factory :ezine_entry, class: Ezine::Entry do
    site_id 1
    sequence(:email) { |n| "#{n}@example.com" }
    email_type 'html'
    entry_type 'add'
    verification_token nil

    trait :not_verified do
      verification_token 'xxxx'
    end
  end
end
