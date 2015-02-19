class Comment < ActiveRecord::Base
	validates :comment, presence: true

has_many :comments, as => shuots
belongs_to :shuots, :polymorphic => true






end
