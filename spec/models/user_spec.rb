require 'spec_helper'
require 'rails_helper'

describe User do
  it "validate email and make sure it not empty" do
     # expect(1+1).to eq(2)
     user = User.new(first_name: "user1", email: '')
     user.valid?
     # user.errors[:email].should_not empty
    
     expect(user.errors[:email]).not_to eq(be_empty) 
  end

  it "testing proporions" do
    
    
  end

end