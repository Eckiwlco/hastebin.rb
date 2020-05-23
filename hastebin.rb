require "net/http"
require "json"
require "uri"

base = "https://hastebin.com/documents"
uri = URI(base)
https = Net::HTTP.new(uri.host, uri.port)
https.use_ssl = true
req = Net::HTTP::Post.new(uri.path, data: "") # you have to replace
res = https.request(req)
json = JSON.parse(res.body)
puts "https://hastebin.com/#{json['key']}"
