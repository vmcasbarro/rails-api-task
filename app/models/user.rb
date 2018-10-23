# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :lists
  has_many :messages, dependent: :destroy
  has_many :conversations, through: :messages
end
