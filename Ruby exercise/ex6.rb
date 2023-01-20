
require "base64"
class ConvertBase
    def create_file(content)
        file=File.open("content", "w") { |f| f.puts content.to_s }
    end

    def read_file()
        file = File.read('./content')
        if file 
            puts file
            return true
        else
            return false
        end

    end

    def encode_file(str)
        file = File.read('./content')
        if file
            file[str]=Base64.encode64(str).chomp()
            File.write("./Ramjeet.txt",file)
            return true
        else
            puts "File cannot be opened"
            return false
        end
    
    end
end

content = "Originally, John Doe was a sham name used to indicate any plaintiff in an
action of ejectment (a legal action to regain property) in civil court [ “
the string that will be base encoded ”]. Richard Roe was the counterpart, to
indicate the defendant. These fake names were used in delicate legal matters,
a practice that was abolished in English law in 1852.
"
str="the string that will be base encoded"

conv=ConvertBase.new
conv.create_file(content)
conv.read_file()
conv.encode_file(str)