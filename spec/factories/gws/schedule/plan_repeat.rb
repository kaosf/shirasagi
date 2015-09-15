FactoryGirl.define do
  factory :gws_schedule_repeat, class: Gws::Schedule::PlanRepeat do
    start_at Time.zone.local(2015, 4, 1, 0, 0)
    end_at Time.zone.local(2015, 4, 1, 1, 0)
    allday false

    trait :daily do
      kind 'daily'
      repeat_start_at Time.zone.local(2015, 4, 1)
      repeat_end_at Time.zone.local(2015, 4, 5)
    end

    trait :weekly do
      kind 'weekly'
      repeat_start_at Time.zone.local(2015, 4, 1)
      repeat_end_at Time.zone.local(2015, 4, 30)

      repeat_on Gws::Schedule::PlanRepeatOn.new(wednesday: true)
    end

    trait :monthly_by_date do
      kind 'monthly'
      repeat_start_at Time.zone.local(2015, 4, 1)
      repeat_end_at Time.zone.local(2015, 9, 30)

      repeat_by Gws::Schedule::PlanRepeatBy.new(repeat_by: 'date', date: 1)
    end

    trait :monthly_by_week do
      kind 'monthly'
      repeat_start_at Time.zone.local(2015, 4, 1)
      repeat_end_at Time.zone.local(2015, 9, 30)

      repeat_by Gws::Schedule::PlanRepeatBy.new(repeat_by: 'week', ordinal: 1, week: 3)
    end
  end
end
