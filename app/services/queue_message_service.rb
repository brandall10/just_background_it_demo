class QueueMessageService
  include Backgroundable
  
  def initialize(message)
    @message = message
  end
  
  def call
    MessageBus.publish "/channel", @message
  end
end
