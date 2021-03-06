# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  dob        :string
#  name       :string
#  bio        :text
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Director < ApplicationRecord
    validates :name, presence: true, uniqueness: { scope: :dob,
    message: "should be unique with respect to date of birth" }
end
