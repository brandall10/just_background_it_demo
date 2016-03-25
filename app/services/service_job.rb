class ServiceJob < ActiveJob::Base
  queue_as :default
  
  def perform(service, params)
    ActiveRecord::Base.connection_pool.with_connection do
      begin
        service.constantize.new(params).call
      rescue => e
        logger.debug e.message
      end
    end
  end
end
