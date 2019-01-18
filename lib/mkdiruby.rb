
#ressource
def create 
puts "Entrer le nom de dossier a creer"
a = gets.chomp.to_s


Dir.mkdir("#{a}")
Dir.mkdir("#{a}/lib")
File.new("#{a}/README.md", "w+")
File.new("#{a}/Gemfile", "w+")
gemfile = File.open("#{a}/Gemfile","a")
gemfile.puts("source \"https://rubygems.org\"")
gemfile.close

Dir.chdir("#{a}")
system("bundle install")
system("rspec --init")

end
create