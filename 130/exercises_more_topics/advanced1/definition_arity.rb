# definition_arity.rb

# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
# #<Proc:0x00000002526ff0@(irb):1>
puts my_proc
# #<Proc:0x00000002526ff0@(irb):1>
# => nil
puts my_proc.class
# Proc
# => nil
my_proc.call
# Proc
# => nil
my_proc.call('cat')
# This is a cat.
# => nil

# Breakdown:
# - The assignment of a proc to the variable returns a proc object
#   + The proc is initialized without a `Proc.new`
# - Outputting the proc stored in the variable `my_proc` by
#   invoking `puts` outputs the `to_s` call of the proc object
#   which is a mundane representation of the object id.
#   + The call to `puts` returns `nil`
# - The invocation of `class` on the proc output by `puts` is
#   `Proc` and `nil` is returned.
# - The invocation of `call` on the proc invokes the block.
#   + The block contains a call to `puts` which outputs string
#     to the standard output.
#   + As regards arity, the block parameter is ignored as the
#     invocation of `call` on the proc is made without an
#     argument.
#   + No error is thrown by referencing a non-existent parameter
#     in the interpolated string.
# - When the `call` method is invoked on the proc with an
#   argument, the argument is interpolated into the string.

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}" }
# #<Proc:0x000000013a6f78@(irb):1 (lambda)>
my_second_lambda = -> (thing) { puts "This is a #{thing}" }
# #<Proc:0x000000016d68d8@(irb):2 (lambda)> 
puts my_lambda
# #<Proc:0x000000013a6f78@(irb):1 (lambda)>
# => nil
puts my_second_lambda
# #<Proc:0x000000016d68d8@(irb):2 (lambda)>
# => nil
puts my_lambda.class
# Proc
# => nil
my_lambda.call('dog')
# This is a dog
# => nil
my_lambda.call
#  ArgumentError: wrong number of arguments (given 0, expected 1)
#    from (irb):1:in `block in irb_binding'
#    from (irb):7
#    from /usr/share/rvm/rubies/ruby-2.4.1/bin/irb:11:in `<main>'
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }
# NameError: uninitialized constant Lambda
#    from (irb):8
#    from /usr/share/rvm/rubies/ruby-2.4.1/bin/irb:11:in `<main>'

# Breakdown 2:
# - Assigning the lambda to the variable returns a Proc object
#   with a `lambda` suffix
# - A second assigment of a lambda to a variable with a different
#   syntax also returns a proc object with a lambda suffix
# - Invoking `puts` on either lambda outputs the mundane
#   object id
#   + `nil` is returned
# - Outputting the class outputs `Proc` with `nil` returned by
#   `puts`
# - Invoking `call` with a variable interpolates that variable
#   into the string referenced in the block through the block
#   parameter which is referenced in the string interpolation.
# - An invocation of `call` without an argument throughs an
#   error apparently enforcing the arity of the block parameter
# - An invocation of call on `Lambda` throws an error
#   + Apparently, there is not lambda obeject/class
#   + A lambda is created through a proc object

# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
block_method_1('seal')

# Breakdown 3:
# - The definition of a method returns a method
#   + Referenced through a symbol?
# - Invoking the method with an argument doesn't through an
#   error even though the argument isn't yielded to the
#   implicit block passed references on
# - Invoking the method without passing in a block throws a
#   jump error as the yield method is referenced and expects
#   a block.

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

# Breakdown 4:
# - Defining the method returns a method/symbol?
# - Invoking the block with an argument and a block returns
#   as string with the argument interpolated as the argument
#   is passed to the `yield` method call and then referenced
#   in the block through the parameter and interpolation.
# - Invoking the method with and argument and then a block with
#   two parameters interpolates the first parameter referenced
#   into a string. The second block parameter although referenced
#   in the string outputs an empty string as the parameter does
#   not reference a second argument passed by the method or 
#   yielded to the block
#   + Loose arity.
# - A third invocation of the block with an argument and a block
#   throws an error.
#   + The argument is yielded to the block but the block
#     references an uninitialized local variable since there
#     is no block parameter by the name of the variable.
#   + Also, no value was assigned to the variable referenced
#     prior to the string interpolation reference.

# Final Thoughts:
# - Although blocks, procs, and lambdas all deal with blocks
#   and block arguments, they all handle the arity of the 
#   block slightly differently. 
#   + It seems that the lambda has a stricter enforcement of
#     arity but is still a proc object.
#   + The block has loose arity, but if a yield is invoked in
#     the block, the block itself as an argument is strictly
#     enforced.
#   + Lambdas and procs must both be invoked with `call`.
# - It seems that blocks are most appropriate as implicit method
#   arguments where the block is a subtle aspect of the block.
#   + Utilizing implicit blocks yielded to only if passed as
#     well as loose arguments can allow for extremely generic
#     method.
#   + This is a powerful concept.
# - If a method were to be written to take a very strict type
#   of proc or lambda to which to be yielded, it could force
#   a method to be used in a very concise way.
# - Also, for a more targeted use case for a chunk of code
#   which does not have a very broad application, a lambda may
#   be appropriate.
# - A proc is a bit of a middling of the two which is why it's
#   appropriate that both the block and lambda are written
#   throught the `Proc` class.
#   + Uses may be for code that is not as generic but somewhat
#     less targetted than a proc.
#   + Loose but still confined to one project or program.
