class TodoItem < ActiveRecord::Base
	def self.countCompletedTodoItems
		TodoItem.where(completed: true).count
	end
end
