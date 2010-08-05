@repositories = Hash.new{|h,k| h[k] = []}

def which(bin)
  `which #{bin}`.chomp
end

def add(label, path)
  @repositories[label.to_s] << FlatRepository.new(path)
end

if which('ruby') == '/Users/adam/.rvm/rubies/ruby-1.9.1-p378/bin/ruby'
  add :gem,  '/Users/adam/.rvm/gems/ruby-1.9.1-p378/gems/'
  add :ruby, '/Users/adam/.rvm/rubies/ruby-1.9.1-p378/lib/ruby/1.9.1/'
end