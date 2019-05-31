bundle exec jekyll build
rsync -avr _site/ alecrem.com:~/alecrem.com/apps.public/ch/
