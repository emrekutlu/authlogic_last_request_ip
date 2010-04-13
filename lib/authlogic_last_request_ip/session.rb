module AuthlogicLastRequestIp
  module Session
    def self.included(klass)
      klass.class_eval do
        extend Config
        include Methods
				after_persisting	:set_last_request_ip
				before_save				:set_last_request_ip
      end
    end

    module Config
     
    end

    module Methods

			def set_last_request_ip
				if record.respond_to? :last_request_ip
					record.last_request_ip = controller.request.remote_ip
				end
			end

    end
  end
end
