module.exports = (robot) ->
  robot.hear /ぬるぽ/, (msg) ->
      msg.send """
```
   Λ＿Λ    ＼＼
（ ・∀・）  | | ｶﾞｯ
 と     ）  | |
 Ｙ /ノ      人
   / ）    <    >_Λ  ∩
＿/し'  ／／ Ｖ｀Д´）/
（＿フ彡            / ←>> @#{msg.message.user.name}
```
                 """
  robot.hear /OMIKUJI$/i, (msg) ->
    msg.send msg.random ["大吉! 後ろから刺されないように気をつけろ", "中吉! いい方だけど油断するなよ", "小吉! まぁそこそこ", "吉! ドンマイ！", "末吉! 世も末", "凶...とりあえず顔を洗ってこい"]
