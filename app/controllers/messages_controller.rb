class MessagesController < ApplicationController
  def do_work
    MessageBus.publish "/channel", "hello"
    head :ok
  end
end
