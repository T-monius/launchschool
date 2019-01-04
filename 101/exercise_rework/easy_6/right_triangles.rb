# right_triangles.rb

def produce_tri(n)
  right_tri = ''
  n.times do |idx|
    spaces = n - idx
    right_tri << "#{' ' * spaces}#{'*' * idx}\n"
  end
  right_tri
end

def triangle(n)
  puts produce_tri(n)
end
