class Srno_avg
    
    def initialize(n)
        n=n.split('-', 3)
        @sr_no=n.clone
    end

    def findOutputString()
        digit3=(@sr_no[1].to_f+@sr_no[2].to_f)/2
        out=@sr_no[0]<<"-"<<"%0.2f" %digit3 
    end
    
end

number="002-10.00-20.00"
sr=Srno_avg.new(number)
OutputString=sr.findOutputString()
puts OutputString
