require 'rack/rewrite'

# Serve the en site by default
use Rack::Rewrite do
  r302 '/', '/en'
  r302 '/en/2020/11/11/how-challengebot-brings-value-back-to-the-classroom-experience/', '/en/2020/11/11/challenge-hub-and-social-learning/'
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
    [:all, {'Cache-Control' => 'public, max-age=86400, s-maxage=86400', 'Vary' => 'Accept-Encoding'}],
    [['png', 'svg', 'jpg', 'jpeg'], {'Cache-Control' => 'public, max-age=31536000, s-maxage=31536000'}]
  ]

  run lambda { |env|
    [404, { 'Content-Type' => 'text/html' }, File.open('_site/en/404.html', File::RDONLY)]
  }
