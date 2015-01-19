require 'spec_helper'
require 'rails_helper'

describe Group do
  it "calculates total bills price in the group" do
    # party_drinks = Bill.new(name: "Drinks", amount: 4, deadline: "2015.2.15")
    # party_fruits = Bill.new(name: "Fruits", amount: 2, deadline: "2015.2.15")
    # party_girls = Bill.new(name: "Girls", amount: 12, deadline: "2015.2.15")
    # party_music = Bill.new(name: "Music", amount: 8, deadline: "2015.2.15")

    party_drinks = create(:bill)
    party_fruits = create(:bill)
    party_girls = create(:bill)
    party_music = create(:bill, amount: 300)

    user1 = create(:user)
    

    party = create(:group)
    party.users << user1

    party.bills.push(party_drinks, party_fruits, party_girls, party_music)

    party.calculate_total
    expect(party.total).to eq(900)

  end

  # it "reises exception if group no users in it " do 
  #   expect( -> { create(:group) } ).to raise_exception
  # end

end










