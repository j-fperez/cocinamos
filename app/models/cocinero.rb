class Cocinero < ActiveRecord::Base
	validates :nombre_cocinero, presence: true
	validates :apellido_1_cocinero, presence: true
	validates :apellido_2_cocinero, presence: true
	validates :dni_cocinero, presence: true
	validates :alias_cocinero, presence: true
end
