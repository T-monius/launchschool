# searching_files.rb

desc 'Display inventory of all files'
task :inventory do
  Find.find('.') do |name|
    next if name.include?('/.') # Excludes files and directories with . names
    puts name if File.file?(name)
  end
end
