require 'rake'
path = File.dirname(__FILE__)
files = `find #{path} -maxdepth 1  -iname '\.?*' -not -name '.git'`.to_a

task :install do
  files.each do |x|
    x.strip!
    system("ln -nfs #{x} ~/")
    puts "\e[32m#{File.basename(x)} Installed\e[0m"
  end
  puts "\e[33mInstall Complete\e[0m"
end

task :remove do
  files.each do |x|
    x.strip!
    system("rm -f ~/#{File.basename(x)}")
    puts "\e[32m#{File.basename(x)} Removed\e[0m"
  end
  puts "\e[33mAll Removed\e[0m"
end