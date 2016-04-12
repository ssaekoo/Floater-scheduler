# == Schema Information
#
# Table name: systems
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class System < ActiveRecord::Base
  has_many :trained_systems
  has_many :stores
  has_many :users through :trained_systems
end
