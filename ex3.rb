class HashProb
    def HashFun(xyz_hash)
        if xyz_hash.empty?()
            return false
        end
        xyz_hash.each do |key, value|
            if key.is_a? Integer
                if((key%2)==0)
                    xyz_hash.delete(key)
                end
            end
        end
        puts xyz_hash
        return xyz_hash
    end
    def demo_method(num)
        begin
            if(num==0)
                raise
            else
                puts "demo_works"
            end
        rescue 
            puts 'error'
        end
    end
end

h=HashProb.new

xyz_hash=Hash.new
xyz_hash.store("543121",100)
h.HashFun(xyz_hash)
