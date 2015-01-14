require 'spec_helper'

describe Ezine::Entry do
  describe 'Validation' do
    subject { entry.valid? }

    describe 'email_type' do
      context 'text or html' do
        %w(text html).each do |email_type|
          let(:entry) { build :ezine_entry, email_type: email_type }
          it { should be_true }
        end
      end

      context 'An invalid email_type' do
        let(:entry) { build :ezine_entry, email_type: 'InvalidEmailType' }
        it { should be_false }
      end
    end

    describe 'entry_type' do
      context 'add, update or delete' do
        %w(add update delete).each do |entry_type|
          let(:entry) { build :ezine_entry, entry_type: entry_type }
          it { should be_true }
        end
      end

      context 'An invalid entry_type' do
        let(:entry) { build :ezine_entry, entry_type: 'InvalidEntryType' }
        it { should be_false }
      end
    end
  end

  describe '.verified scope' do
    before do
      @entry = create :ezine_entry
      @entry_not_verified = create :ezine_entry, :not_verified
    end

    subject { Ezine::Entry.verified }

    it { should include(@entry) }
    it { should_not include(@entry_not_verified) }

    # TODO database_cleaner を用いて書かないようにする
    after do
      Ezine::Entry.destroy_all
    end
  end
end
