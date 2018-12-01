```
# clone
git clone https://github.com/ryo-kondo/myapp.git
cd myapp/
# build image
docker-compose build

docker-compose up
# another terminal
docker-compose run web rake db:create
# browser
localhost:3000
```