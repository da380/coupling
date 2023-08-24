import numpy as np
import matplotlib.pyplot as plt

d = np.loadtxt('spectra.STAT1.Z')


plt.rcParams.update({'font.size': 18})

plt.figure()

plt.plot(d[:,0],d[:,3],'k')

plt.gca().set_yticks([])
plt.yticks([])
plt.xlabel('frequency (mHz)')



plt.show()




    

    




