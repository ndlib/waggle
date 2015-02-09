require 'rails_helper'

RSpec.describe Waggle::DetermineDomain do
  subject { described_class }

  it "returns the correct domain for honeycomb" do
    expect(described_class.call(:honeycomb)).to eq("https://honeycomb.library.nd.edu/")
  end

  it "returns the correct domain for beehive" do
    expect(described_class.call(:beehive)).to eq('https://beehive.library.nd.edu/')
  end

  it "raises an error for other input" do
    expect { described_class.call(:not_honeycomb) }.to raise_error
  end

end
