class User < ApplicationRecord
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :username, presence: true
    validates :password, presence: true

    def user 
        create_table :users do |t|
            t.string :firstname
            t.string :lastname
            t.string :username
            t.string :password
        end
    end
end
