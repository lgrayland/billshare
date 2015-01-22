require 'rails_helper'

RSpec.describe "shares/show", :type => :view do
  before(:each) do
    @share = assign(:share, Share.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
