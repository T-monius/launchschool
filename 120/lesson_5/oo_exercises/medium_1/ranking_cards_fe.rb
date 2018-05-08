# ranking_cards_fe.rb

# Assume you're playing a game in which cards of the same rank are
# unequal. In such a game, each suit also has a ranking. Suppose that,
# in this game, a 4 of Spades outranks a 4 of Hearts which outranks a 4
# of Clubs which outranks a 4 of Diamonds. A 5 of Diamonds, though,
# outranks a 4 of Spades since we compare ranks first. Update the Card
# class so that #min and #max pick the card of the appropriate suit if
# two or more cards of the same rank are present in the Array.

# Understanding:
# Can use a conditional in #<=> that only executes if the values are
# the same.
# Make and array of the suits by their 'rank', and order by index.
#   - Do I have to make a suits object with it's own #<=> ?
#   - Even if I don't have to, would that be eaiser?