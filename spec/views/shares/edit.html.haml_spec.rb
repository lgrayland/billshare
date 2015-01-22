require 'rails_helper'

RSpec.describe "shares/edit", :type => :view do
  before(:each) do
    @share = assign(:share, Share.create!())
  end

  it "renders the edit share form" do
    render

    assert_select "form[action=?][method=?]", share_path(@share), "post" do
    end
  end
end
