FactoryGirl.define do
  factory :gws_schedule_plan, class: Gws::Schedule::Plan do
    name 'schedule-#{unique_id}'
    text 'text-#{unique_id}'
    start_at Time.zone.local(2015, 4, 1, 0, 0)
    end_at Time.zone.local(2015, 4, 1, 0, 1)
    allday false
    association :category, factory: :gws_schedule_category
    association :site, factory: :ss_site
    association :user, factory: :ss_user
  end
end
