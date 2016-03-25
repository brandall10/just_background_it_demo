module Backgroundable
  def self.included(base)
    base.extend(ClassMethods)
  end
  
  module ClassMethods
    def execute_in_background(params)
      ServiceJob.perform_later(self.to_s, params)
    end
  end
end
