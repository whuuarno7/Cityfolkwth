class Phrase < ActiveRecord::Base
   validates  :phrase, :autor, :socre, presence: true
   validates :phrase, length: {in: 15..140}
   validates :score, numericality: { only_integer: true }

  has_one :events
  has_one :scores
end
