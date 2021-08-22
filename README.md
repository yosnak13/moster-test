# モンスターがレベルアップ・進化するメソッドを探す旅

- モンスターの初期レベル１
- レベルアップに必要な経験値：30
- 次のレベルアップに必要な経験値＝前のレベルアップに必要な経験値*1.1
- 最大レベル：50

https://taiyoproject.com/post-142
https://qiita.com/yuki82511988/items/479d959609e9b7f36675

閾値必要

level += 1, thresold (current_level - 1) * 1.1
レコード必要？
Level 2, thresold 50
Level 3, thresold 100

Characters has_one LevelSetting(※キャラによって異なる)

1~10LEVELに必要な経験値をテーブルに保存？
