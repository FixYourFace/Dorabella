#!/usr/bin/env ruby

seq_combos_cw = {
  1 =>  %w[abc def ghi klm nop qrs tuw xyz],
  2 =>  %w[xyz abc def ghi klm nop qrs tuw],
  3 =>  %w[tuw xyz abc def ghi klm nop qrs],
  4 =>  %w[qrs tuw xyz abc def ghi klm nop],
  5 =>  %w[nop qrs tuw xyz abc def ghi klm],
  6 =>  %w[klm nop qrs tuw xyz abc def ghi],
  7 =>  %w[ghi klm nop qrs tuw xyz abc def],
  8 =>  %w[def ghi klm nop qrs tuw xyz abc],

  9  => %w[cba fed ihg mlk pon srq wut zyx],
  10 => %w[zyx cba fed ihg mlk pon srq wut],
  11 => %w[wut zyx cba fed ihg mlk pon srq],
  12 => %w[srq wut zyx cba fed ihg mlk pon],
  13 => %w[pon srq wut zyx cba fed ihg mlk],
  14 => %w[mlk pon srq wut zyx cba fed ihg],
  15 => %w[ihg mlk pon srq wut zyx cba fed],
  16 => %w[fed ihg mlk pon srq wut zyx cba]
}

alt_combos_cw = {
  1 =>  %w[abc fed ghi mlk nop srq tuw zyx],
  2 =>  %w[xyz cba def ihg klm pon qrs wut],
  3 =>  %w[tuw zyx abc fed ghi mlk nop srq],
  4 =>  %w[qrs wut xyz cba def ihg klm pon],
  5 =>  %w[nop srq tuw zyx abc fed ghi mlk],
  6 =>  %w[klm pon qrs wut xyz cba def ihg],
  7 =>  %w[ghi mlk nop srq tuw zyx abc fed],
  8 =>  %w[def ihg klm pon qrs wut xyz cba],

  9  => %w[cba def ihg klm pon qrs wut xyz],
  10 => %w[zyx abc fed ghi mlk nop srq tuw],
  11 => %w[wut xyz cba def ihg klm pon qrs],
  12 => %w[srq tuw zyx abc fed ghi mlk nop],
  13 => %w[pon qrs wut xyz cba def ihg klm],
  14 => %w[mlk nop srq tuw zyx abc fed ghi],
  15 => %w[ihg klm pon qrs wut xyz cba def],
  16 => %w[fed ghi mlk nop srq tuw zyx abc]
}

seq_combos_ccw = {
  1 => seq_combos_cw[1].reverse,
  2 => seq_combos_cw[2].reverse,
  3 => seq_combos_cw[3].reverse,
  4 => seq_combos_cw[4].reverse,
  5 => seq_combos_cw[5].reverse,
  6 => seq_combos_cw[6].reverse,
  7 => seq_combos_cw[7].reverse,
  8 => seq_combos_cw[8].reverse,

  9  => seq_combos_cw[9].reverse,
  10 => seq_combos_cw[10].reverse,
  11 => seq_combos_cw[11].reverse,
  12 => seq_combos_cw[12].reverse,
  13 => seq_combos_cw[13].reverse,
  14 => seq_combos_cw[14].reverse,
  15 => seq_combos_cw[15].reverse,
  16 => seq_combos_cw[16].reverse
}

alt_combos_ccw = {
  1 => alt_combos_cw[1].reverse,
  2 => alt_combos_cw[2].reverse,
  3 => alt_combos_cw[3].reverse,
  4 => alt_combos_cw[4].reverse,
  5 => alt_combos_cw[5].reverse,
  6 => alt_combos_cw[6].reverse,
  7 => alt_combos_cw[7].reverse,
  8 => alt_combos_cw[8].reverse,

  9  => alt_combos_cw[9].reverse,
  10 => alt_combos_cw[10].reverse,
  11 => alt_combos_cw[11].reverse,
  12 => alt_combos_cw[12].reverse,
  13 => alt_combos_cw[13].reverse,
  14 => alt_combos_cw[14].reverse,
  15 => alt_combos_cw[15].reverse,
  16 => alt_combos_cw[16].reverse
}

def keymaker(key:)
  key = key.join.split('')
  result = "#{key[23]}     #{key[2]}     #{key[5]}\n"
  result += "  #{key[22]}   #{key[1]}   #{key[4]}\n"
  result += "    #{key[21]} #{key[0]} #{key[3]}\n"
  result += "#{key[20]} #{key[19]} #{key[18]}   #{key[6]} #{key[7]} #{key[8]}\n"
  result += "    #{key[15]} #{key[12]} #{key[9]}\n"
  result += "  #{key[16]}   #{key[13]}   #{key[10]}\n"
  result += "#{key[17]}     #{key[14]}     #{key[11]}\n"
end

def plaintext(key:)
  key = key.join.split('')
  row1 = "#{key[19]}#{key[8]}#{key[22]}#{key[20]}#{key[18]}#{key[1]}#{key[12]}#{key[20]}#{key[3]}#{key[16]}#{key[23]}#{key[10]}#{key[9]}#{key[21]}#{key[10]}#{key[2]}#{key[10]}#{key[10]}#{key[1]}#{key[8]}#{key[8]}#{key[10]}#{key[21]}#{key[15]}#{key[16]}#{key[15]}#{key[0]}#{key[23]}#{key[11]}\n"
  row2 = "#{key[12]}#{key[10]}#{key[12]}#{key[1]}#{key[12]}#{key[20]}#{key[3]}#{key[4]}#{key[20]}#{key[22]}#{key[10]}#{key[10]}#{key[22]}#{key[1]}#{key[0]}#{key[9]}#{key[12]}#{key[10]}#{key[23]}#{key[10]}#{key[1]}#{key[13]}#{key[11]}#{key[9]}#{key[21]}#{key[15]}#{key[3]}#{key[3]}#{key[15]}#{key[23]}#{key[11]}\n"
  row3 = "#{key[22]}#{key[11]}#{key[1]}#{key[13]}#{key[11]}#{key[22]}#{key[21]}#{key[13]}#{key[14]}#{key[0]}#{key[11]}#{key[22]}#{key[10]}#{key[1]}#{key[13]}#{key[9]}#{key[11]}#{key[21]}#{key[20]}#{key[8]}#{key[0]}#{key[11]}#{key[1]}#{key[20]}#{key[21]}#{key[15]}#{key[20]}\n"
  row1 + row2 + row3
  #row1.reverse + row2.reverse + row3.reverse
end

seq_combos_cw.each do |key, value|
  key = keymaker(key: value)
  plaintext = plaintext(key: value)
  puts key
  puts plaintext
  puts
end

alt_combos_cw.each do |key, value|
  key = keymaker(key: value)
  plaintext = plaintext(key: value)
  puts key
  puts plaintext
  puts
end

seq_combos_ccw.each do |key, value|
  key = keymaker(key: value)
  plaintext = plaintext(key: value)
  puts key
  puts plaintext
  puts
end

alt_combos_ccw.each do |key, value|
  key = keymaker(key: value)
  plaintext = plaintext(key: value)
  puts key
  puts plaintext
  puts
end
