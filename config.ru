require 'rack/rewrite'

# Serve the en site by default
use Rack::Rewrite do
  r302 '/', '/en'
end

require 'rack'
use Rack::Deflater

require 'rack/contrib/try_static'
use Rack::TryStatic,
  :gzip => true,
  urls: %w[/],
  root: '_site',
  try: ['.html', 'index.html', '/index.html'],
  header_rules: [
    [:all, {'Cache-Control' => 'public, max-age=86400 s-maxage=10800', 'Vary' => 'Accept-Encoding'}],
    [['png', 'svg', 'jpg', 'jpeg'], {'Cache-Control' => 'public, max-age=31536000 s-maxage=10800'}]
  ]

  run lambda { |env|
    [404, { 'Content-Type' => 'text/html' }, File.open('_site/404.html', File::RDONLY)]
  }
