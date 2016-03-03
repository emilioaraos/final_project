class Form < ActiveRecord::Base
belongs_to :user



	# validates :answer, 
 #  		   # numericality: {only_integer: true}
  	
 #  	validates :answerb, 
 #  		     # numericality: {only_integer: true}
 #  	validates :answerc, 
	
 #  	validates :answerd, 
		
 #  	validates :user_id, 
 #  		presence: true

  	# validates_presence_of :answer, :answerb, :answerc, :answerd, presence: true
  	validates :answer, :answerb, :answerc, :answerd, inclusion: { in: [true, false] }
end
