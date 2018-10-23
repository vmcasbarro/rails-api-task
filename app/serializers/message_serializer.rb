class MessageSerializer < ActiveModel::Serializer
  attributes :id, :body, :user_id, :conversation_id, :name
  has_one :user
  has_one :conversation

  def name
    User.find(current_user.id).email
  end
end
