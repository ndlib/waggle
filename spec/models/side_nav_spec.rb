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
      expect(subject.h).to receive(:render).with({:partial=>"shared/exhibit_side_nav", :locals=>{side_nav: subject }})

      subject.display(:items)
    end
  end


  context "collection" do
    subject { described_class.new(collection)}

    it "uses the page_title partial" do
      expect(subject.h).to receive(:render).with({:partial=>"shared/collection_side_nav", :locals=>{side_nav: subject }})

      subject.display(:items)
    end
  end

end
