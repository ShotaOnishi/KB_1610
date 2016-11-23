class SightseeingMessage
  def update(changed_callback)
    event = changed_callback.event
    if Message.is_postback?(event)
    elsif Message.is_message?(event)
      if /(観光地)/ =~ event.message['text']
        Message.reply(event, output)
      end
    end
  end

  def output
    @tests = Test.all
    sample = @tests.sample
    menu1 = @tests.sample
    menu2 = @tests.sample
    menu3 = @tests.sample
    [
    {
           type: "text",
           text: "オススメの観光地を紹介するね！"
    },
    {
        "type": "template",
        "altText": "this is a carousel template",
        "template": {
            "type": "carousel",
            "columns": [
                {
                    "thumbnailImageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVgNGVdkLM-8JWb-uJTFaaiHP9rTksGMCZftXmaUtJ_85AbWIG",
                    "title": "石川動物園",
                    "text": "動物と触れ合えます！",
                    "actions": [
                        {
                            "type": "postback",
                            "label": "Uber",
                            "data": "action=buy&itemid=111"
                        },
                        {
                            "type": "postback",
                            "label": "HP",
                            "data": "action=add&itemid=111"
                        },
                        {
                            "type": "uri",
                            "label": "地図で見る",
                            "uri": "http://example.com/page/111"
                        }
                    ]
                },
                {
                    "thumbnailImageUrl": "https://www.hot-ishikawa.jp/kanko/nomi/images/tatsujinnichi-main.jpg",
                    "title": "九谷陶芸村",
                    "text": "九谷焼き体験ができるよ！",
                    "actions": [
                        {
                            "type": "postback",
                            "label": "Uber",
                            "data": "action=buy&itemid=111"
                        },
                        {
                            "type": "postback",
                            "label": "HP",
                            "data": "action=add&itemid=111"
                        },
                        {
                            "type": "uri",
                            "label": "地図で見る",
                            "uri": "http://example.com/page/111"
                        }
                    ]
                },
                {
                    "thumbnailImageUrl": "https://d2goguvysdoarq.cloudfront.net/system/facility_photos/photos/6817/normal.JPG?1365966776",
                    "title": "手取フィッシュランド",
                    "text": "子供に人気の遊園地！",
                    "actions": [
                        {
                            "type": "postback",
                            "label": "Uber",
                            "data": "action=buy&itemid=222"
                        },
                        {
                            "type": "postback",
                            "label": "HP",
                            "data": "action=add&itemid=222"
                        },
                        {
                            "type": "uri",
                            "label": "地図で見る",
                            "uri": "http://example.com/page/222"
                        }
                    ]
                }
            ]
        }
    },
    {
        "type": "template",
        "altText": "this is a Entry or Exit message",
        "template": {
            "type": "buttons",
            "title": "Uber呼び出し確認",
            "text": "所要時間約２０分",
            "actions": [
                {
                    "type": "postback",
                    "label": "呼ぶ",
                    "data": "action=welcome&shop_id=1"
                },
                {
                    "type": "postback",
                    "label": "キャンセル",
                    "data": "action=exit"
                }
            ]
        }
    }
  ]
  end
  def choice_image
    # images = [
    #     'https://pbs.twimg.com/media/B_QHDbSVEAA1adJ.jpg',
    #     'https://pbs.twimg.com/media/BuHSdwCCAAELvUK.jpg',
    #     'https://i.ytimg.com/vi/6nQyHeiDHu0/hqdefault.jpg',
    #     'https://s-media-cache-ak0.pinimg.com/564x/f2/a2/4f/f2a24f58f13823def4053e1ae32f2557.jpg',
    #     'https://pbs.twimg.com/media/CZQMsB-UYAQ-GJA.jpg',
    #     'https://ssl-stat.amebame.com/pub/content/8265872137/user/article/194267610976870743/ea20fa0d12335b8b2735d1a768d0932a/cached.jpg',
    #     'https://s-media-cache-ak0.pinimg.com/236x/f6/5c/8d/f65c8dfee01d6407e9e9cd8298cbeb5d.jpg',
    #     'https://pbs.twimg.com/media/CMTT-vPUAAErxqJ.png',
    #     'https://pbs.twimg.com/media/Bc7INKDCQAAp1d8.jpg',
    #     'https://pbs.twimg.com/media/B5RSK0pCYAA45il.png'
    # ]
    # images.sample
    num = rand(1..9)
    menu = Menu.find(num)
end
end