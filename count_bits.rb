#!/usr/bin/env ruby
# ===========================================================================
# count 1 bits (and by inference count zero bits)
#

# count the bits in +file+ opened in binary mode
def count_bits(file)
  ones = 0
  zeros = 0
  file.each_byte do |byte|
    binary_text = byte.to_s(2)
    counted_ones = binary_text.count("1")
    ones = ones + counted_ones
    zeros = zeros + (8 - counted_ones)
  end

  puts "There are #{ones} 1-bits and #{zeros} 0-bits in file #{file.path}"
end

# check command line, if there is exactly one argument and it is an
# existing and readable file then invoke countbits on it. Otherwise
# mope and count my own bits...
if ARGV.count == 1
  filename = ARGV[0]
  if File.exists?(filename)
    if File.readable?(filename)
      count_bits(File.new(filename, 'rb'))
    else
      puts "Sorry! Can't read file #{filename} :("
    end
  else
    puts "Sorry! Can't find file #{filename} :("
  end
else
  puts("OK I'll count my own 1-bits then. Add a filename on the commandline to count bits of that file.")
  count_bits(File.new(__FILE__))
end






