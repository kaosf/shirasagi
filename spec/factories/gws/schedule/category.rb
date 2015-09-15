FactoryGirl.define do
  factory :gws_schedule_category, class: Gws::Schedule::Category do
    name 'category-#{unique_id}'
    # association :site, factory: :ss_site
    user ss_user
    site ss_site
  end
end
