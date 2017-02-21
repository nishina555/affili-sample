Loan.create(amount: 100)
Loan.create(amount: 300)
Card.create({name: 'ねこカード', info: 'ねこのカードです。', loan_id: 1})
Card.create({name: 'ぺるしゃねこカード', info: 'ぺるしゃねこのカードです。', loan_id: 2})
Card.create({name: 'いぬカード', info: 'いぬのカードです。', loan_id: 1})
Card.create({name: 'いぬねこカード', info: 'いぬねこのカードです。'})
10.times do |i|
  Card.create(
      name:    "いぬねこカード#{i}",
      info: "いぬねこのカードです#{i}",
      loan_id: 1
  )
end
