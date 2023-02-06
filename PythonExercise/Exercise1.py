

class SrnoAvg:
    
    def __init__(self,serial_no):    
        self.sr_no=serial_no

    def findOutputString(self) -> str:
        try:
            self.sr_no=self.sr_no.split('-', 3)
            # raise ValueError("hey wrong iput")
            digit3=(float(self.sr_no[1])+float(self.sr_no[2]))/2
            out="%s-%0.2f" %(self.sr_no[0], digit3)
            return out  
        except Exception as e:
            print(e)
            raise e
    
            # raise Exception(e.__notes__)

    

# number="002-10.00-20.00"
# sr=SrnoAvg('002-1x.00-40')
# OutputString=sr.findOutputString()
# # print(OutputString)

