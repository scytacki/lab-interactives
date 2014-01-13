#!/usr/bin/env ruby

require 'fileutils'

out = File.new(ARGV[0].sub(".json", ".html"), "w")
out << <<END.chomp
---
layout: interactive
lab_version: 0.7.0
---
<script>
INTERACTIVE= 
END

File.foreach(ARGV[0]) do |line|
  out << line
end

out << ";\n</script>\n"
out.close

FileUtils.rm ARGV[0]