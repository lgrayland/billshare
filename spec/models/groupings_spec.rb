require 'spec_helper'
require 'rails_helper'

describe Grouping do
  it "user aalready exists in group" do
    u1 = create(:user)
    gr = create(:group)
    g1 = Grouping.create!(user_id: u1.id, group_id: gr.id)
    g2 = Grouping.create(user_id: u1.id, group_id: gr.id)
    g2.save
    expect(g2.errors[:base][0]).to eq("User already in group")
    g1.destroy
    g2.destroy
  end

  # it "calculate total bill procentage in group" do
  #   flat = create(:group)

  #   u1 = create(:user)
  #   u2 = create(:user)
  #   u3 = create(:user)

  #   flat_bill_1 = create(:bill)
  #   flat_bill_2 = create(:bill)
  #   flat_bill_3 = create(:bill)

  #   # u1bt = create(:bill_type)
  #   # u2bt = create(:bill_type)
  #   # u3bt = create(:bill_type)

  #   u1p = create(:proportion)
  #   u2p = create(:proportion
  #   u3p = create(:proportion)

  #   flat.users.push(u1, u2, u3)
  #   flat.bills.push(flat_bill_1, flat_bill_2, flat_bill_3)

  #   u1.groups.find(flat.id).bills.find(flat_bill_1.id).bill_type.proportions.push(u1p)

  #   u2.groups.find(flat.id).bills.find(flat_bill_1.id).bill_type.proportions.push(u2p)
    
  #   u3.groups.find(flat.id).bills.find(flat_bill_1.id).bill_type.proportions.push(u3p)

  #   flat.calculate_percentage
  #   expect(flat.calculate_percentage).to eq(75)

  # end

end