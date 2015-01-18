require 'spec_helper'
require 'rails_helper'

describe Group do
  it "calculates total bills price in the group" do
    # party_drinks = Bill.new(name: "Drinks", amount: 4, deadline: "2015.2.15")
    # party_fruits = Bill.new(name: "Fruits", amount: 2, deadline: "2015.2.15")
    # party_girls = Bill.new(name: "Girls", amount: 12, deadline: "2015.2.15")
    # party_music = Bill.new(name: "Music", amount: 8, deadline: "2015.2.15")

    party_drinks = FactoryGirl.create(:bill)
    party_fruits = FactoryGirl.create(:bill)
    party_girls = FactoryGirl.create(:bill)
    party_music = FactoryGirl.create(:bill)
    

    party = FactoryGirl.create(:group)

    party.bills.push(party_drinks, party_fruits, party_girls, party_music)

    party.calculate_total
    expect(party.total).to eq(800)

  end
end