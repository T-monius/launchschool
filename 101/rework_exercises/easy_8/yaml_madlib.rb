# yaml_madlib.rb

require 'yaml'
words = YAML.load_file('mad_libs.yml')

sentence = [words['one']['verb'], words['two']['adjective'],
            words['two']['noun'], words['one']['adverb']]
sentence1 = [words["one"]['adjective'], words['one']['noun'],
             words['one']['verb'], words['one']['adverb']]
sentence2 = [words['two']['noun'], words['two']['adverb'],
             words['two']['verb'], words['two']['adjective']]
sentence3 = [words['two']['verb'], words['one']['adjective'],
             words['one']['noun'], words['two']['adverb']]
sentence4 = [words['two']['adjective'], words['two']['noun'],
             words['one']['verb'], words['one']['adverb']]
sentence5 = [words['one']['noun'], words['one']['adverb'],
             words['two']['verb'], words['two']['adjective']]

puts "Do you %s your %s %s %s?" % sentence
puts "The %s %s %ss %s over the lazy dog." % sentence1
puts "The %s %s %ss up %s Joe's turtle." % sentence2

puts "Do you %s your %s %s %s?" % sentence3
puts "The %s %s %ss %s over the lazy dog." % sentence4
puts "The %s %s %ss up %s Joe's turtle." % sentence5
