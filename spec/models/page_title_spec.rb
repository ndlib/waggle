require 'rails_helper'

RSpec.describe Waggle::PageTitle do
  subject { described_class.new("title")}

  it "uses the page_title partial" do
    expect(subject.h).to receive(:render).with({:partial=>"shared/page_title", :locals=>{:title=>"title", :small_title=>nil}})
    subject.display
  end

  it "sets the title in the partial " do
    expect(subject.display).to eq("<div class=\"page-header\">\n  <h1>title <small></small></h1>\n</div>\n")
  end

  it "allows me to set a small_title" do
    txt = subject.display do | pt |
      pt.small_title = 'small title'
    end

    expect(txt).to eq("<div class=\"page-header\">\n  <h1>title <small>small title</small></h1>\n</div>\n")
  end

  it "allows me to add link to the title" do
    txt = subject.display do | pt |
      pt.link_href = 'href'
    end

    expect(txt).to eq("<div class=\"page-header\">\n  <h1><a href=\"href\">title</a> <small></small></h1>\n</div>\n")
  end

end
