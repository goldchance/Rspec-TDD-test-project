class CreateCustomers < ActiveRecord::Migration
   def self.up
      create_table :customers do |t|
        t.string :firstname
        t.string :lastname
        t.timestamps
      end
    def self.down
      drop_table :customers 
    end  
  end
end
