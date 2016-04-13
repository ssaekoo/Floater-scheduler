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

class SystemsController < ApplicationController
end
