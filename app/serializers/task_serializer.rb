class TaskSerializer < ActiveModel::Serializer
  attributes :id, :task_name, :list_id, :completed
end
