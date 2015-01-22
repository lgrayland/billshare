require 'rails_helper'

RSpec.describe "shares/index", :type => :view do
  before(:each) do
    assign(:shares, [
      Share.create!(),
      Share.create!()
    ])
  end

  it "renders a list of shares" do
    render
  end
end
