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
  robot.hear /だれのせいだ?$/i, (msg) ->
    msg.send "大野一択"
  robot.hear /wiki (.*)/i, (msg) ->
    keyword = encodeURIComponent msg.match[1]
    msg.send "https://ja.wikipedia.org/wiki/#{keyword}"
  robot.hear /大野/i, (msg) ->
    msg.send "ねえ知ってる？大野のナニは爪楊枝の13分の1に匹敵するんだって！"
  robot.hear /猪狩/i, (msg) ->
    msg.send "ねえ知ってる？猪狩の顔の広さは東京ドーム13個分に匹敵するんだって！"
  robot.hear /my job$/i, (msg) ->
    msg.send msg.random ["すっぴん", "Knight", "Monk", "Thief", "白魔道士", "黒魔道士","青魔道士","Berserker","魔法剣士","時魔道士","召喚士","赤魔道士","ものまねし","Ninja","魔獣使い","風水士","吟遊詩人","狩人","Samurai","竜騎士","薬師","踊り子","剣闘士","砲撃士","予言士","ネクロマンサー"]
  robot.hear /満たせ満たせ満たせ満たせ満たせ$/i, (msg) ->
    msg.send msg.random ["http://dic.nicovideo.jp/oekaki/519886.png","http://livedoor.blogimg.jp/pspbox/imgs/0/6/06c0bd9b.jpg","http://livedoor.blogimg.jp/otaku_blog/imgs/3/5/35aa9cae.jpg","https://pbs.twimg.com/profile_images/717194851/Fate03.jpg","http://livedoor.blogimg.jp/otaku_blog/imgs/6/2/62aed581.jpg","http://totuzenheni.com/wp-content/uploads/2014/10/fate_sn00_20.png","http://tn-skr1.smilevideo.jp/smile?i=17619696.L","https://ssl-stat.amebame.com/pub/content/8265872137/user/article/120034041256594211/87bc8d375824901b0c0e992b0fd32598/uploaded.jpg?width=546","http://blogs.c.yimg.jp/res/blog-a3-5d/justice20a/folder/489645/69/16184369/img_0","http://pic.prepics-cdn.com/animealbum/35649392.jpeg","http://blog-imgs-44.fc2.com/b/o/s/bosel/20141026043105fd0.jpg","http://makotama.c.blog.so-net.ne.jp/_images/blog/_980/makotama/FATE200320015-a955d.jpg?c=a216","http://lohas.nicoseiga.jp/thumb/1667516i?"]
