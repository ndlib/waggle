require 'rails_helper'

class Exhibit
end

class Collection
end

RSpec.describe Waggle::SideNav do

  context "exhibit" do
    subject { described_class.new(Exhibit.new)}

    it "uses the page_title partial" do
      expect(subject.h).to receive(:render).with({:partial=>"shared/exhibit_nav", :locals=>{:side_nav=>subject, :active_tab=>:items}})
      subject.display(:items)
    end
  end


  context "collection" do
    subject { described_class.new(Collection.new)}

    it "uses the page_title partial" do
      expect(subject.h).to receive(:render).with({:partial=>"shared/collection_nav", :locals=>{:side_nav=>subject, :active_tab=>:items}})
      subject.display(:items)
    end
  end

end
