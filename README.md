```
# クローン
git clone https://github.com/ryo-kondo/myapp.git
cd myapp/
# dockerイメージの作成
docker-compose build
# dockerコンテナを立ち上げる
docker-compose up
# 別ウィンドウでターミナルを立ち上げてdbを作成する
# dbのコンテナが立ち上がってないといけないので必ず先にdocker-compose upをすること
docker-compose run web rake db:create
# ブラウザでlocalhost:3000を開く
localhost:3000
```
