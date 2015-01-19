require 'spec_helper'
require 'rails_helper'

describe Bill do 
  it "due for user" do 
    u1 = create(:user)

    u1p = create(:proportion)

    group = create(:group)
    bill =  create(:bill)

    group.users.push(u1)
    
  end
end