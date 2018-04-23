def greeting

  greeting_text = ARGV[0]
  ARGV.each_with_index do |name, index|
    next if index == 0
    puts "#{greeting_text} #{name}"
  end

end

greeting
