# == Schema Information
#
# Table name: votes
#
#  id            :bigint(8)        not null, primary key
#  user_id       :bigint(8)
#  voteable_type :string
#  voteable_id   :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Vote < ApplicationRecord

  belongs_to :user
  belongs_to :voteable, polymorphic: true

end
