FactoryGirl.define do
  factory :ss_user, class: SS::User do
    name "ss_user"
    sequence(:email) { |n| "ss#{n}@example.jp" }
    in_password "pass"

    after :create do |x|
      group = create :ss_group
      x.update group_ids: [group.id]
    end
  end
end
