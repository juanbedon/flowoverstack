# == Schema Information
#
# Table name: questions
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#

class Question < ApplicationRecord

	belongs_to :user
	has_many :answers
	has_many :comments, as: :commentable
	has_many :votes, as: :voteable

	validates :title, presence: true
	validates :description, presence: true

	scope :most_recent, -> { order(created_at: :desc) }

	def voted_by? (user)
		votes.exists?(user: user)
	end

end
