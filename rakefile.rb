task :default => :rps

desc "Run ppt.rb with ruby"
task :rps do
  sh "ruby PPT.rb "
end

desc "clean the temporal files"
task :clean do
  sh "rm -fr *.gz *~ *swp"
end
