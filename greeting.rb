def greeting

  greeting_text = ARGV[0]
  ARGV.each_with_index do |name, index|
    next if index == 0
    puts "#{greeting_text} #{name}"
  end

end

greeting

=begin
BLOC's solution

greeting = ARGV.shift

ARGV.each do |name|
  p "#{greeting} #{name}"
end

=end
