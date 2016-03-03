# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Seed some users
kobe, michael, wade = User.create([
{name: 'Kobe Bryant', email: 'kobe@ironhack.com', password:'ironhack', password_confirmation:'ironhack'},
{name: 'Michael Jordan', email: 'jordan@ironhack.com', password:'ironhack', password_confirmation:'ironhack'},
{name: 'Dwayne Wade', email: 'wade@ironhack.com', password:'ironhack', password_confirmation:'ironhack'}


	])
#seed some Forms
# kobe.forms.create([{question:"Where you in the U.s for more than 3 years?", answer:true}, {question:"Do you have any misdemeanors?", answer: false}])