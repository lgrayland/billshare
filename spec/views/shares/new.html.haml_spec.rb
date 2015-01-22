require 'rails_helper'

RSpec.describe "shares/new", :type => :view do
  before(:each) do
    assign(:share, Share.new())
  end

  it "renders new share form" do
    render

    assert_select "form[action=?][method=?]", shares_path, "post" do
    end
  end
end
