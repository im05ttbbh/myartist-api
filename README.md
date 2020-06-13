# 下準備

```bash
git clone https://github.com/im05ttbbh/myartist-api.git
cd myartist-api
bundle install
rails db:seed
rails db:migrate
```

# 使用技術

- Ruby 2.5.1
- Rails 6.0.2（APIモード）
- RSpec
- rubocop
- FactoryBot

# アーティスト登録

```bash
curl -X POST -H "Content-Type: application/json" -d '{"artist":{"genre_content":"（ジャンル）", "artist":"（アーティスト）"}}' localhost:3000/artists
```
【例】
```bash
curl -X POST -H "Content-Type: application/json" -d '{"artist":{"genre_content":"POPS", "artist":"宇多田ヒカル"}}' localhost:3000/artists
```

# アーティスト取得

```bash
curl http://localhost:3000/artists
```
【アーティスト取得パラメーター例】
```bash
{
    "artist": {
        "genre_content": "ROCK"
    }
}
```

# RSpecによるテスト

```bash
bundle exec rspec
```