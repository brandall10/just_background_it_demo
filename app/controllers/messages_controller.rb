class MessagesController < ApplicationController
  def do_work
    QueueMessageService.execute_in_background(params[:message])
    head :ok
  end
end
