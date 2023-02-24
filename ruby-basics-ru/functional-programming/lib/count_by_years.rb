# frozen_string_literal: true

# BEGIN

# END
require 'date'

def count_by_years(users)
  man_users = users.select { |user| user[:gender] == 'male' }
  count_by_years_man = {}

  man_users.map do |man_user|
    years_man = Date.parse(man_user[:birthday]).year.to_s
    count_by_years_man[years_man] ||= 0
    count_by_years_man[years_man] += 1
  end
  count_by_years_man
end


# ### lib/count_by_years.rb

# Реализуйте функцию `count_by_years()`, которая принимает список пользователей и возвращает хеш, где ключ - это год рождения (в виде строки), а значение - это количество мужчин, родившихся в этот год.

# ```ruby
users = [
  { name: 'Bronn', gender: 'male', birthday: '1973-03-23' },
  { name: 'Reigar', gender: 'male', birthday: '1973-11-03' },
  { name: 'Eiegon', gender: 'male', birthday: '1963-11-03' },
  { name: 'Sansa', gender: 'female', birthday: '2012-11-03' },
  { name: 'Jon', gender: 'male', birthday: '1980-11-03' },
  { name: 'Robb', gender: 'male', birthday: '1980-05-14' },
  { name: 'Tisha', gender: 'female', birthday: '2012-11-03' },
  { name: 'Rick', gender: 'male', birthday: '2012-11-03' },
  { name: 'Joffrey', gender: 'male', birthday: '1999-11-03' },
  { name: 'Edd', gender: 'male', birthday: '1973-11-03' },
]

count_by_years(users)
# # {
# #    '1973' => 3,
# #    '1963' => 1,
# #    '1980' => 2,
# #    '2012' => 1,
# #    '1999' => 1,
# #  }
# ```