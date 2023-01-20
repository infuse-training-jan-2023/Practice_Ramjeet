require 'json'

class JSONOps
    def create_file()
        per = {"Name"=>"Nicole Smith", "Age"=>25, "salary"=>25552.67}
        file=File.open("person.json", "w") { |f| f.puts per.to_json }
        
    end

    def update_file()
        file = File.read('./person.json')
        if file 
            user = JSON.parse(file)
            names=user["Name"].split()
            user.delete("Name")
            user["First Name"]=names[0]
            user["Last Name"]=names[1]
            File.write("./Ramjeet_#{Time.now.utc.strftime("%Y-%m-%d%H-%M-%S")}.json", JSON.dump(user))
            return user
        else  
            return false
        end
#{Time.now.utc.to_s.delete(' ')  
    end
end

jsonObj=JSONOps.new
jsonObj.create_file()

jsonObj.update_file()