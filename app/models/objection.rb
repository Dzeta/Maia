class Objection < ActiveRecord::Base
	belongs_to 	:user
	belongs_to 	:debate
	belongs_to	:answer
	belongs_to	:tag
	belongs_to	:justification
	has_many 		:justifications,	dependent: :destroy
	has_many 		:votes,    				dependent: :destroy
	validates 	:user_id, 	presence: true
	validates 	:name, 			presence: true
	validates		:voices,		presence: true

	def self.objection_list
		[['Toxic message', ['Spam', 'Appeal to violence', 'Troll', 'Racism/Discrimination/Homophobia', 'Flood']], ['Fallacies', ['Syllogism', 'Rumor', 'Non-sequitur', 'Over-generalisation', 'Example as a rule']], ['Form issues', ['No insults!', 'Ad hominem', 'Respect points of view', 'Orthograph issue', 'Grammar issue', 'Length issue']], ['Requests', ['Lack of sources', 'Off-topic', 'Lack of demonstration']]]
	end

end
