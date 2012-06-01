#!/usr/bin/env ruby


def calculate_size(file)
  #p 'calculating ' + file

  if File.directory? file
    i = 0
    Dir.open(file).each do |f|
      i += calculate_size(file + "/" + f).to_i unless f == '.' || f == '..'
    end
    #p "#{file} directory size: " + i.to_s
    return i
  else
    #p "#{file} file size: " + File.size?(file).to_s
    return File.size?(file)
  end
end

def puts_size(file)
  size = calculate_size(file)
  p "#{size.to_f / 1024 / 1024} Mb"
end


