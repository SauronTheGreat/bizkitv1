class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :facilitator_group_users
  has_many :facilitator_groups ,:through => :facilitator_group_users

 # after_save :create_fg

  def create_fg
    if self.facilitator?
      FacilitatorGroup.create_my_group(self.id)
    end

  end

  def full_name
    [first_name , last_name].join(" ")
  end

  require "spreadsheet"

  def self.mass_create_users(import_id)
    @import=Import.find(import_id)
    @path=@import.excel.path
    book = Spreadsheet.open @path
    sheet1 = book.worksheet 0

    sheet1.each 1 do |row|

      if User.find_by_email(row[4].to_s).nil?

        @user=User.new
        @user.username=row[0]
        @user.first_name=row[1]
        @user.last_name=row[2]
        @user.password=row[3]
        @user.password_confirmation=row[3]
        @user.email=row[4].to_s
        @user.superadmin=row[5]
        @user.admin=row[6]
        @user.facilitator=row[7]
        @user.student=row[8]
        @user.institute_id=@import.institute_id
        @user.save!


      else
        @user= User.find_by_email(row[4].to_s)

      end


    end
  end
end
