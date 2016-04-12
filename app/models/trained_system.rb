# == Schema Information
#
# Table name: trained_systems
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  system_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TrainedSystem < ActiveRecord::Base
  has_and_belongs_to_many :user
  has_and_belongs_to_many :system
end
