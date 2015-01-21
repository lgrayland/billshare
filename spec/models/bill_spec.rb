require 'spec_helper'
require 'rails_helper'

describe Bill do 
  # before(:each) do
  #   u1 = create(:user)
  #   u2 = create(:user)

  #   gr = create(:group)
  #   gr.users.push(u1, u2)

  #   bill = create(:bill)
  #   bill_type = create(:bill_type)
  #   bill_type.group_id = gr.id
  #   bill.bill_type_id = bill_type.id
  #   bill_type.group_id = gr.id

  #   gr.bills << bill
  # end

  # it "due for user" do 
  #   u1 = create(:user)

  #   u1p = create(:proportion)

  #   group = create(:group)
  #   bill =  create(:bill)

  #   group.users.push(u1)
  # end
  it "test equal proportions in group" do

    u1 = create(:user)
    u2 = create(:user)

    gr = create(:group)
    gr.users.push(u1, u2)

    bill = create(:bill)
    bill_type = create(:bill_type)
    bill_type.group_id = gr.id
    bill.bill_type_id = bill_type.id
    bill_type.group_id = gr.id

    gr.bills << bill


    expect(bill.bill_equal_proportion).to eq(100)
  end

  # after(:each) do
  #    u1.destroy
  #    u2.destroy
  #    gr.destroy
  #    bill.destroy
  #    bill_type.destroy
  #  end

end