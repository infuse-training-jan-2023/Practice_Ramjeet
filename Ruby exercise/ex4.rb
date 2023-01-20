
class SkipS
    def skip_sports(arr,n)
        if n>arr.length or n<0 or arr.length==0
            return false
        end
        # if n<0
        #     return false
        # end
        i=n
        xyz=Hash.new
        while i< arr.length
            xyz.store(i,arr[i])
            i=i+1
        end
        return xyz
    end
end

sks=SkipS.new

puts sks.skip_sports(['Cricket','TT','Football','Hockey'],2)