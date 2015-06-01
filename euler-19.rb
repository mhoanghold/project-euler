month_days = [
  31, #jan
  28, #feb
  31, #mar
  30, #apr
  31, #may
  30, #jun
  31, #jul
  31, #aug
  30, #sep
  31, #oct
  30, #nov
  31, #dec
]

leap_year_month_days = [
    31, #jan
    29, #feb
    31, #mar
    30, #apr
    31, #may
    30, #jun
    31, #jul
    31, #aug
    30, #sep
    31, #oct
    30, #nov
    31, #dec
]

def leap?(year)
  year % 4 == 0
end

first_day_of_month = 2
first_sundays = 0
(1901..2000).each do |year|
  if leap?(year)
    days = leap_year_month_days
  else
    days = month_days
  end
  (0..11).each do |month|
    days_in_month = days[month]
    first_day_of_month = days_in_month % 28 + first_day_of_month
    if first_day_of_month > 6
      first_day_of_month = first_day_of_month - 7
    end
    if first_day_of_month == 0
      first_sundays += 1
    end
  end
end

puts first_sundays