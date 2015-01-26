require 'rails_helper'

RSpec.describe Waggle::DeleteSection do
  subject { described_class.new("/path/path")}
  let(:path) { "/path/path" }

  it "renders the delete section template" do
    expect(subject.h).to receive(:render).with({:partial=>"shared/delete_section" ,:locals=>{:name=>"Content", :message=>"", :path=>"/path/path"}})
    subject.display
  end

  it "allows the name to be changed" do
    subject.display do | ds |
      ds.name = 'new name'
    end

    expect(subject.name).to eq("new name")
  end


  it "allows the name to be message" do
    subject.display do | ds |
      ds.message = 'new message'
    end

    expect(subject.message).to eq("new message")
  end
end
