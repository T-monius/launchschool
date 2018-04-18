# q_3.rb

# In the last question Alyssa showed Alan this code which keeps track of
# items for a shopping cart application:

class InvoiceEntry
  attr_accessor :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    self.quantity = updated_count if updated_count >= 0
  end

  def to_s
    "#{product_name}: #{quantity}."
  end
end

entry = InvoiceEntry.new('waffles', 5)
puts entry
entry.update_quantity(4)
puts entry

# Alan noticed that this will fail when update_quantity is called. Since
# quantity is an instance variable, it must be accessed with the
# @quantity notation when setting it. One way to fix this is to change
# attr_reader to attr_accessor and change quantity to self.quantity.

# Is there anything wrong with fixing it this way?
# Answer:
# Fixing it this way could expose the information to potential tampering
# since the product name as well as the quantity would be accessible
# through getter and setter methods inside and outside of the class
# definition. Depending on the nature of the information it may not be
# wise to allow a party foreign to the class to access or even manipulate
# the date stored in the entries.

# LS explanation uses the term 'clients of the class' instead of 'foreign
# party' to describe outside third parties making alterations.
