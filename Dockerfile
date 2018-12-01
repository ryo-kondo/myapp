# ベースイメージ(親イメージを持たないイメージ)の指定
FROM ruby:2.5.3
# 環境変数key,valueのセット(rails c)
ENV LANG C.UTF-8
# 既存イメージ上の新しいレイヤであらゆるコマンドを実行し、その結果をコミットする命令
# コミットの結果得られたイメージはDockerfileの次のステップで利用
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
# ソースにある新しいファイルやディレクトリをコピー、あるいはリモートのURLからコピー
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install
ADD . /myapp