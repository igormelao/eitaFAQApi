class Rack::Attack

 Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

 safelist('allow-localhost') do |req|
   '127.0.0.1' == req.ip || '::1' == req.ip
 end

 throttle('req/ip', limit: 100, period: 1.day) do |req|
   req.ip
 end

end
