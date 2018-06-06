class WorkJob < ApplicationJob
  queue_as :default

  def perform(name)
    User.create!({ name: name })
  end
end
