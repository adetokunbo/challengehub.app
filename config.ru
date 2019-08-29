require 'rack/rewrite'

# Serve the en site by default
use Rack::Rewrite do
  r302 '/', '/en'
end

require 'rack/jekyll'
run Rack::Jekyll.new
