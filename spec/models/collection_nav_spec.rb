require 'rails_helper'

RSpec.describe Waggle::CollectionNav do

  subject { described_class.new(controller)}
  let(:controller) { double(current_user: current_user) }
  let(:current_user) { double(display_name: 'Name')}

  it "renders the footer template" do
    expect(subject.display).to eq("<div class=\"navbar-header\">\n   <a class=\"navbar-brand\" href=\"/collections\"><i class=\"glyphicon glyphicon-home\"></i> honeycomb</a>\n</div>\n<div class=\"navbar-collapse collapse\">\n  <ul class=\"nav navbar-nav navbar-right\">\n    <li><a href=\"#\"><i class=\"glyphicon glyphicon-user\"></i> Name</a></li>\n    <li><a href=\"/admin/users\"><i class=\"glyphicon glyphicon-cog\"></i></a></li>\n    <li><a href=\"#\" title=\"logout\"><i class=\"glyphicon glyphicon-log-out\"></i></a></li>\n  </ul>\n</div>\n")
  end

  it "returns the display_name of the current_user" do
    expect(subject.current_user_display_name).to eq("Name")
  end

  it "returns the users_path " do
    expect(subject.users_path).to eq("/admin/users")
  end

end
