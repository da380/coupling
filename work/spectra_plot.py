import numpy as np
import matplotlib.pyplot as plt

d = np.loadtxt('spectra_test.STAT1.N')


plt.rcParams.update({'font.size': 24})

f = plt.figure()

plt.plot(d[:,0],d[:,3],'k')





plt.gca().set_yticks([])
plt.yticks([])
plt.xlabel('Frequency (mHz)')
plt.show()




    

    




