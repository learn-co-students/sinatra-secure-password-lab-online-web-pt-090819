class User < ActiveRecord::Base
   has_secure_password
   def up
    create_table :users do |t|
      t.string :username
      t.string :password_digest
    end
  end
  
  def down
    drop_table :users
  end
end
