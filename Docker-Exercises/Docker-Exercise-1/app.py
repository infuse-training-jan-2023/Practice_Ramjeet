import sys
import os
import numpy as np
print(sys.argv[1]+", operation:"+os.environ['arg1'])
arr = np.array([3, 2, 4, 1,5])

if(os.environ['arg1']=="Add"):
    print(np.sum(arr))
else:
   
    print(np.sort(arr))
