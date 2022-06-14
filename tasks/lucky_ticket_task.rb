def happy?(ticket)
    ticket_length = ticket.to_s.length
    half = ticket_length / 2
    first_part_of_ticket = ticket.to_s[0, half]
    second_part_of_ticket = ticket.to_s[half..]
    count_num_of_ticket(first_part_of_ticket) == count_num_of_ticket(second_part_of_ticket)
end
  
def count_num_of_ticket(num)
    result = 0
    num.each_char do |c|
      result += c.to_i
    end
    result
end