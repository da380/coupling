import numpy as np
import matplotlib.pyplot as plt

d = np.loadtxt('test.out', delimiter = ';')




plt.plot(d[:,0],d[:,1],'k')

# # plt.plot(dppp[:,0],dppp[:,3],'r--')
# # plt.plot(dpppp[:,0],dpppp[:,3],'b--')

# plt.plot(d[:,0],d[:,3] - dppp[:,3],'k')
# plt.plot(d[:,0],d[:,3] - dpppp[:,3],'r')





# plt.gca().set_yticks([])
# plt.yticks([])
plt.xlabel('Frequency (mHz)')
plt.show()