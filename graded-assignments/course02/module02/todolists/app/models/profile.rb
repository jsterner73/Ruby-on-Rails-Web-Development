class Profile < ActiveRecord::Base
  belongs_to :user

  validates :gender, inclusion: { in: %w(female male),
    message: "%{value} is not a valid gender" }

  validate :check_first_and_last_name
  validate :check_for_sue

  def check_first_and_last_name
  	if first_name.to_s == '' and last_name.to_s == ''
  		errors.add(:first_name, "first and last name can't be both null or empty!")
  	end
  end

  def check_for_sue
  	if gender == "male" and first_name == "Sue"
  		errors.add(:first_name, "Sue can't be a boy's name!")
  	end
  end

  def self.get_all_profiles(start_year,test_year)
    Profile.where(:birth_year => start_year..test_year).order('birth_year asc')  
  end  
end
