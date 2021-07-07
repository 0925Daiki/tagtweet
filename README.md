# README
- タグ付け機能の実装を練習するアプリ

# database design
## tweets table
### association
- has_many :tweet_tag_relations
- has_many :tags, through: :tweet_tag_relations

## tags table
### association


## tweet_tag_relations
### association
- 
