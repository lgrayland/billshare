# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Group.delete_all
Grouping.delete_all
Bill.delete_all
BillType.delete_all
Proportion.delete_all

luke = User.create!(email: "luke@luke.com", password: "password", first_name: "Luke", last_name: "Grayland")
andres = User.create!(email: "andres@andres.com", password: "password", first_name: "Andres", last_name: "Idontknow")
neil = User.create!(email: "neil@neil.com", password: "password", first_name: "Neil", last_name: "Crosbourne")

gr1 = Group.create!(name: "House share", description: "A group for a house share of 3 people")
# gr2 = Group.create!(name: "House share 2", description: "A group for a flat share of 2 people")

gr1.users.push(luke, andres, neil)

inet = Bill.create!(name: "Internet", amount: 40, deadline: "2015.2.15")
inet_type = BillType.create!(name: "internet_bt")
inet_pr1 = Proportion.create!(percentage: 50)
inet_pr2 = Proportion.create!(percentage: 50)

inet_type.bills.push(inet)
inet_type.proportions.push(inet_pr1, inet_pr2)

tv = Bill.create!(name: "TV", amount: 24, deadline: "2015.2.15")
tv_type = BillType.create!(name: "tv_bt")
tv_pr1 = Proportion.create!(percentage: 25)
tv_pr2 = Proportion.create!(percentage: 25)
tv_pr3 = Proportion.create!(percentage: 25)
tv_pr4 = Proportion.create!(percentage: 25)

tv_type.bills.push(tv)
tv_type.proportions.push(tv_pr1, tv_pr2, tv_pr3, tv_pr4)

#########################
#### CREATE PARTY #######
#########################
u1 = User.create!(email: "u1@u1.com", password: "password", first_name: "u1", last_name: "u1l")
u2 = User.create!(email: "u2@u2.com", password: "password", first_name: "u2", last_name: "u2l")
u3 = User.create!(email: "u3@u3.com", password: "password", first_name: "u3", last_name: "u3l")

party = Group.create!(name: "Party", description: "All night party")
party.users.push(u1, u2, u3)

party_drinks = Bill.create!(name: "Drinks", amount: 430, deadline: "2015.2.15")
party_fruits = Bill.create!(name: "Fruits", amount: 210, deadline: "2015.2.15")
party_girls = Bill.create!(name: "Girls", amount: 1230, deadline: "2015.2.15")
party_music = Bill.create!(name: "Music", amount: 880, deadline: "2015.2.15")

party_type = BillType.create!(name: "party")
party.bill_types.push(party_type)
party.bills.push(party_drinks, party_fruits, party_girls, party_music)
party_type.bills.push(party_drinks, party_fruits, party_girls, party_music)

# Create and add bill types to users which involves in party
u1_party_bill_type = BillType.create(name: "u1_paty_bill_type")
u1.groups.find(party.id).bill_types.push(u1_party_bill_type)

u2_party_bill_type = BillType.create(name: "u2_paty_bill_type")
u2.groups.find(party.id).bill_types.push(u2_party_bill_type)

u3_party_bill_type = BillType.create(name: "u3_paty_bill_type")
u3.groups.find(party.id).bill_types.push(u3_party_bill_type)

## Create percentage for users
  #u1
u1_party_proportion = Proportion.create!(percentage: 33)
  #in both relations groupings and bill_types
u1.groupings.last.proportions.push(u1_party_proportion)
u1.groups.find(party.id).bill_types.find(u1_party_bill_type.id).proportions.push(u1_party_proportion)

#u2
u2_party_proportion = Proportion.create!(percentage: 28)
  #in both relations groupings and bill_types
u2.groupings.last.proportions.push(u2_party_proportion)
u2.groups.find(party.id).bill_types.find(u2_party_bill_type.id).proportions.push(u2_party_proportion)

#u3
u3_party_proportion = Proportion.create!(percentage: 15)
  #in both relations groupings and bill_types
u3.groupings.last.proportions.push(u3_party_proportion)
u3.groups.find(party.id).bill_types.find(u3_party_bill_type.id).proportions.push(u3_party_proportion)








