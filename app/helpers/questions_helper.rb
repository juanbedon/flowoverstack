module QuestionsHelper

	def form_title
		@question.new_record? ? "Ask Question" : "Edit Question"
	end

end