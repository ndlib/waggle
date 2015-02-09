require 'rails_helper'

class Exhibit
end

class Collection
end

RSpec.describe Waggle::SideNav do
  let(:exhibit) { Exhibit.new }
  let(:collection) { Collection.new }

  context "exhibit" do
    subject { described_class.new(exhibit)}

    it "uses the page_title partial" do
      expect(subject.h).to receive(:render).with({:partial=>"shared/exhibit_nav", :locals=>{:side_nav=>subject, :active_tab=>:items, path_object: exhibit}})

      subject.display(:items)
    end
  end


  context "collection" do
    subject { described_class.new(collection)}

    it "uses the page_title partial" do
      expect(subject.h).to receive(:render).with({:partial=>"shared/collection_nav", :locals=>{:side_nav=>subject, :active_tab=>:items, path_object: collection}})

      subject.display(:items)
    end
  end

end
