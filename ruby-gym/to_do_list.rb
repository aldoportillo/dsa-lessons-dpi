class TodoList

    def initialize(sharksss = [])
		@tasks = sharksss
	end

    def add_task(task)
        @tasks.push(task)
    end

    def remove_task(task)
        if @tasks.include?(task)
            @tasks.delete(task)
        else
            pp "Task not found"
        end
    end

    def display_tasks
        pp @tasks.length > 0 ? @tasks : "No tasks in the list"
    end

end

todo_list = TodoList.new

pp "Initialize list #{todo_list}"

todo_list.display_tasks


pp "Add drink water to list #{todo_list.display_tasks}"

todo_list.add_task("Drink Water")


todo_list.display_tasks



todo_list.remove_task("Drink Water")
pp "remove task from list #{todo_list.display_tasks}"

todo_list.display_tasks

def multiply_by_two(num = 2)
    pp num * 2
end

multiply_by_two