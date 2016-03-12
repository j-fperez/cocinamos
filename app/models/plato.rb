class Plato < ActiveRecord::Base
	#set_table_name 'platos'
	validates :nombre, presence: true
	validates :receta, presence: true
end
