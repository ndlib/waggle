require 'rails_helper'

RSpec.describe Waggle::DisplayFooter do
  subject { described_class.new(controller)}
  let(:controller) { double }

  it "renders the footer template" do
    expect(subject.h).to receive(:render).with({:partial=>"shared/display_footer"})
    subject.display
  end

end
