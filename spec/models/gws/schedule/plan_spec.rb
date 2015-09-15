require 'spec_helper'

RSpec.describe Gws::Schedule::Plan, type: :model, dbscope: :example do
  describe 'entry schedule' do
    # subject(:group) { create :cms_group, name: unique_id }
    # subject(:user) { create :cms_test_user, group: group }
    subject(:schedule) { create :gws_schedule_plan, user: user }

    it 'owner user check' do
      expect(schedule.user).to eq user
    end

    # it 'return one entry user' do
    #   schedule.users << user
    #   expect(schedule.users.count).to eq 1
    # end
  end
end
