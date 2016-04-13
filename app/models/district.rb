# == Schema Information
#
# Table name: districts
#
#  id                  :integer          not null, primary key
#  name                :string
#  district_manager_id :integer          not null
#  updated_by_id       :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class District < ActiveRecord::Base
  belongs_to :updated_by,
    foreign_key: :updated_by_id,
    class_name: "User"

  has_one :district_manager,
    foreign_key: :district_manager_id,
    class_name: "User"

  has_many :users
  has_many :stores
end
