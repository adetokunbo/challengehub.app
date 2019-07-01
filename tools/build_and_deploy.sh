bundle exec jekyll build
rsync -avr _site/ alecrem.com:~/challengehub.app/public/
