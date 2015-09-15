require 'spec_helper'

RSpec.describe Gws::Schedule::Planable, type: :model, dbscope: :example do
  let!(:model_class) do
    Struct.new(:model) do
      include described_class
    end
  end

  it { expect(true).to be_truthy }

  it do
    x = model_class.new(:model)
    expect(x.instance_of? described_class).to be_truthy
  end
end
