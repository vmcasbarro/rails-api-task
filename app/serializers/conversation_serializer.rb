class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :conversation_name, :messages

end
