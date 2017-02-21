Card.create({name: 'ねこカード', info: 'ねこのカードです。'})
Card.create({name: 'ぺるしゃねこカード', info: 'ぺるしゃねこのカードです。'})
Card.create({name: 'いぬカード', info: 'いぬのカードです。'})
Card.create({name: 'いぬねこカード', info: 'いぬねこのカードです。'})
10.times do |i|
  Card.create(
      name:    "いぬねこカード#{i}",
      info: "いぬねこのカードです#{i}"
  )
end