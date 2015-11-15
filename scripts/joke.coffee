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
  robot.hear /botしね$/i, (msg) ->
    msg.send "
    お前がしね\n
    https://www.google.co.jp/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0CAcQjRxqFQoTCKOt99iTkskCFcuSlAodwLQE4g&url=http%3A%2F%2Fmienaiblue.blog.fc2.com%2Fblog-entry-111.html&psig=AFQjCNECFF8h7n2v9KAsZ9dRxpAhI-J6aA&ust=1447667461948939"
  robot.hear /誰のせい$/i, (msg) ->
    msg.send "大野一択"
  robot.respond /wiki (.*)/i, (msg) ->
      keyword = encodeURIComponent msg.match[1]
          request = msg.http('http://ja.wikipedia.org/w/api.php?'format=json&action=query&prop=info)
                                    .query(titles: keyword)
                                                              .get()
                                                                  request (err, res, body) ->
                                                                        json = JSON.parse body
                                                                              msg.send json.results[0].text if json.results.length > 0
