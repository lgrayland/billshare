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

  it "test procentage proportion " do
    u1 = create(:user)
    gr = create(:group)
    gr.users.push(u1)

    bill = create(:bill)
    gr.bills.push(bill)
    bill_type = create(:bill_type)
    pr = create(:proportion)

    u1.groupings.first.proportions.push(pr)
    u1.groupings.first.proportions.first.bill_type.bills.push(bill)

    expect(bill.due_for_user(u1)).to eq(50)

  end

end