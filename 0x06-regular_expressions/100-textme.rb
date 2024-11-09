#!/usr/bin/env ruby
#by: mariam deborah raji 
puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")
