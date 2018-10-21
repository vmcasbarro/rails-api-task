class ListSerializer < ActiveModel::Serializer
  attributes :id, :list_name, :user_id, :tasks

  def tasks
    object.tasks.order(:created_at)
  end
end
