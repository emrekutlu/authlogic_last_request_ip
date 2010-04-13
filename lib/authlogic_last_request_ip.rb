require "authlogic_last_request_ip/session"

if ActiveRecord::Base.respond_to?(:add_acts_as_authentic_module)
  Authlogic::Session::Base.send(:include, AuthlogicLastRequestIp::Session)
end
