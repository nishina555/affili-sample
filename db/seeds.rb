Loan.create(amount: 100)
Loan.create(amount: 300)
LoanMethod.create(method: '口座振込')
LoanMethod.create(method: 'コンビニ')
LoanMethod.create(method: '店舗窓口')
CardLoanMethod.create(card_id: 1, loan_method_id: 1)
CardLoanMethod.create(card_id: 1, loan_method_id: 2)
CardLoanMethod.create(card_id: 1, loan_method_id: 3)
CardLoanMethod.create(card_id: 2, loan_method_id: 1)
CardLoanMethod.create(card_id: 2, loan_method_id: 2)
CardLoanMethod.create(card_id: 3, loan_method_id: 1)
CardLoanMethod.create(card_id: 4, loan_method_id: 1)
CardLoanMethod.create(card_id: 5, loan_method_id: 1)
CardLoanMethod.create(card_id: 6, loan_method_id: 1)
CardLoanMethod.create(card_id: 7, loan_method_id: 1)
Card.create({name: 'ねこカード', info: 'ねこのカードです。', loan_id: 1})
Card.create({name: 'ぺるしゃねこカード', info: 'ぺるしゃねこのカードです。', loan_id: 2})
Card.create({name: 'いぬカード', info: 'いぬのカードです。', loan_id: 1})
Card.create({name: 'いぬねこカード', info: 'いぬねこのカードです。', loan_id: 2})
3.times do |i|
  Card.create(
      name:    "ねずみカード#{i}",
      info: "ねずみのカードです#{i}",
      loan_id: 1
  )
end
