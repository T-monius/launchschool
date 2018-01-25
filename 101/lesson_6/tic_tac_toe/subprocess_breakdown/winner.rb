# winner.rb

# Understanding:
# 3 in a row, column, or diagonal signifies victory
# (a1..a3).all? 'x' or 'o'
# (b1..b3).all? 'x' or 'o'
# (c1..c3).all? 'x' or 'o'
# (a1, b1, c1) all 'x' or 'o'
# (a2, b2, c2) all 'x' or 'o'
# (a3, b3, c3) all 'x' or 'o'
# (a1, b2, c3) all 'x' or 'o'
# (c1, b2, a3) all 'x' or 'o'
# victory? method
#   takes hash input
#   returns true or false
# How do I determine if user or computer?
#   Change order of higher level flow chart?
#   Have separate methods: user_victory? & comp_victory?
