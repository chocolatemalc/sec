#!/usr/bin/ruby
#using shell ping (very slow)
#this is because the script waits for the ping result to save before outputting.

(35..100).each do |n|
	out = `ping -c 1 10.11.1.#{n} |grep 'bytes from' |cut -d' ' -f 4 |cut -d':' -f 1 &`
	unless out.to_s.strip.empty?
		puts out
	end
end
