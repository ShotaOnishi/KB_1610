class IndiaMessage
  def update(changed_callback)
    event = changed_callback.event
    if Message.is_postback?(event)
    elsif Message.is_message?(event)
      if /(インド旅行)/ =~ event.message['text']
        require "geocoder"
        @tests = Test.all
        sample = @tests.sample
        Message.reply(event, output(sample))
      end
    end
  end

  def output(sample)
    [
      {
       type: "text",
       text: "オススメの観光地を紹介するね！"
       },
       {
        "type": "location",
        "title": sample.name,
        "address": sample.address,
        "latitude": sample.latitude,
        "longitude": sample.longitude
        },
        {
        type: "image",
        :originalContentUrl => sample.image.standard.url.sub!(/http:/, "https:"),
        :previewImageUrl => sample.image.thumbnail.url.sub!(/http:/, "https:")
      }
    ]
  end
end