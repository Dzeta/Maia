class Tag < ActiveRecord::Base
	belongs_to 	:user
	belongs_to 	:debate
	has_many		:objections,    	dependent: :destroy
	has_many		:justifications,  dependent: :destroy
	has_many 		:votes,    				dependent: :destroy
	validates 	:user_id, 	presence: true
	validates 	:debate_id, presence: true
	validates 	:name, 			presence: true
	validates		:voices,		presence: true
	validates 	:user_id, 	uniqueness: {scope: :name}

	def self.tag_list
		["Philosophy", "Religion", "Politic", "Medical", "Social", "Practical", "Technology", "Sport", "Animals"]
	end
end
