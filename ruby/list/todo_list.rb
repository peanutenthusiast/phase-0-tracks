class TodoList
  def initialize(task)
    @task = task
  end

  def get_items
    @task
  end

  def add_item(item)
    @task.push(item)
  end

  def delete_item(item)
    @task.delete(item)
  end

  def get_item(index)
    return @task[index]
  end
end