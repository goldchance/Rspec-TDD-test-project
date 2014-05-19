class Charge < ActiveRecord::Base
   belongs_to :customer
   
   scope :failed_charges, -> { where(paid: false, refunded: false) }
   scope :disputed_charges, -> { where(paid: false, refunded: true) }
   scope :successful_charges, -> { where(paid: true, refunded: false) }
end
