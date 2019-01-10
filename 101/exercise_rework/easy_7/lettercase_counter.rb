# lettercase_counter.rb

def letter_case_count(str)
  { lowercase: str.count('a-z'), uppercase: str.count('A-Z'),
    neither: str.count('^A-Za-z') }
end
