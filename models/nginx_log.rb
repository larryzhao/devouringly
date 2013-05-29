class NginxLog
  include Mongoid::Document
  field :remote_addr, type: String
  field :time_local, type: String
  field :request, type: String
  field :body_bytes_sent, type: String
  field :http_user_agent, type: String
  field :request_time, type: String
  field :upstream_response_time, type: String
end
