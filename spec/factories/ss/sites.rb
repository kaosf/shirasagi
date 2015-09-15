FactoryGirl.define do
  factory :ss_site, class: SS::Site do
    name "ss"
    host "test-ss"
    domains "test-ss.com"
    # sequence(:host) { |n| "test-ss#{n}" }
    # sequence(:domains) { |n| "test-ss#{n}.com" }
    #group_id 1
  end
end
