# == Schema Information
#
# Table name: systems
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  updated_by_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class System < ActiveRecord::Base
  has_many :trained_systems
  has_many :stores
  has_many :users,
    through: :trained_systems

  belongs_to :updated_by,
    foreign_key: :updated_by_id,
    class_name: "User"
end
