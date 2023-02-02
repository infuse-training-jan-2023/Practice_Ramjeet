

class Srno_avg:
    
    def __init__(self,n):    
        self.sr_no=n

    def findOutputString(self) -> str:
        try:
            self.sr_no=self.sr_no.split('-', 3)
            digit3=(float(self.sr_no[1])+float(self.sr_no[2]))/2
            out="%s-%0.2f" %(self.sr_no[0], digit3)
            return out  
        except:
            return 'error'

    

# number="002-10.00-20.00"
# sr=Srno_avg(number)
# OutputString=sr.findOutputString()
# print(OutputString)

