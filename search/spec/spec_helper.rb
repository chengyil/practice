Dir.glob(File.join('/opt/ruby/lib/**','*.rb')).each do |file|
  require file
end
