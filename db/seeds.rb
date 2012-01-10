# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Type.create!(:name=>"Single", :price=>100)
Type.create!(:name=>"Filled ", :price=>100)
Type.create!(:name=>"Cookie", :price=>100)

Taste.create!(:name=>"Nutty", :price=>100)
Taste.create!(:name=>"Fruity", :price=>100)
Taste.create!(:name=>"Savoury", :price=>100)
Taste.create!(:name=>"Chocolate", :price=>100)

Topping.create!(:name=>"Cream", :price=>100)
Topping.create!(:name=>"Sugar", :price=>100)
Topping.create!(:name=>"Salt", :price=>100)

Packaging.create!(:name=>"Paper", :price=>100)
Packaging.create!(:name=>"Foil", :price=>100)
Packaging.create!(:name=>"Tin", :price=>100)

Size.create!(:name=>"Small")
Size.create!(:name=>"Medium")
Size.create!(:name=>"Large")

Market.create!(:name=>"Metros")
Market.create!(:name=>"Non-Metros")
Market.create!(:name=>"Rural")


EmployeeIncentive.create!(:name=>"Salary Hike")
EmployeeIncentive.create!(:name=>"Training Programs")
EmployeeIncentive.create!(:name=>"Leave Encashment")
EmployeeIncentive.create!(:name=>" Staff Welfare Events")
EmployeeIncentive.create!(:name=>"Annual Bonus ")


ChannelIncentive.create!(:name=>"Higher Commissions")
ChannelIncentive.create!(:name=>"Training Programs")
ChannelIncentive.create!(:name=>"Diwali Gifts")
ChannelIncentive.create!(:name=>"Offsite")
ChannelIncentive.create!(:name=>"Trade Promotions")


Advertising.create!(:name=>"Television")
Advertising.create!(:name=>"Radio")
Advertising.create!(:name=>"Hoardings")
Advertising.create!(:name=>"Newspaper")
Advertising.create!(:name=>"Sponsorships")




@user=User.create!(:email=>"superadmin@bizcuit.com", :first_name=>"super", :last_name=>"admin", :username=>"superadmin", :password=>"bizcuit", :password_confirmation=>"bizcuit", :admin=>false, :super_admin=>true, :facilitator=>false)
@user.superadmin=true
@user.admin=false
@user.facilitator=false
@user.student=false
@user.save!

@user=User.create!(:email=>"admin@bizcuit.com", :first_name=>"normal", :last_name=>"admin", :username=>"admin", :password=>"bizcuit", :password_confirmation=>"bizcuit", :admin=>true, :super_admin=>false, :facilitator=>false)
@user.superadmin=false
@user.admin=true
@user.facilitator=false
@user.student=false
@user.save!


@user=User.create!(:email=>"facilitator@bizcuit.com", :first_name=>"normal", :last_name=>"facilitator", :username=>"facilitator", :password=>"bizcuit", :password_confirmation=>"bizcuit", :admin=>false, :super_admin=>false, :facilitator=>true)
@user.superadmin=false
@user.admin=false
@user.facilitator=true
@user.student=false
@user.save!

#@user=User.create!(:email=>"student@finesse.com", :first_name=>"student", :last_name=>"group", :username=>"student", :password=>"finesse1", :password_confirmation=>"finesse1", :admin=>false, :super_admin=>false, :facilitator=>true)
#@user.superadmin=false
#@user.admin=false
#@user.facilitator=false
#@user.student=true
#@user.save!








