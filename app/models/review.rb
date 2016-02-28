class Review < ActiveRecord::Base
  validates :reviewer_name,:review, :rating, presence:true
  validates_inclusion_of :rating, in: [1, 2, 3, 4, 5], allow_blank: true

  belongs_to :massagesalon

end
