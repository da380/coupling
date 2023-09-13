import numpy as np
import matplotlib.pyplot as plt

d = np.loadtxt('spectra_couple.STAT1.Z')
dp = np.loadtxt('spectra_nocouple.STAT1.N')
dpp = np.loadtxt('spectra_norot.STAT1.Z')
dppp = np.loadtxt('spectra_self.STAT1.Z')
dpppp = np.loadtxt('spectra_norho.STAT1.Z')
d2 = np.loadtxt('testrawspec.out')

plt.rcParams.update({'font.size': 24})

f = plt.figure()
idx = 0
idx2 = 0
while idx < d2.shape[0]:
    idx2 = 0
    while idx2 < d2.shape[1]:
        if abs(d2[idx,idx2]) > 1:
            d2[idx,idx2] = 0
        idx2 += 1
    idx+=1
plt.plot(d2[:,2],'k')
# plt.plot(dp[:,0],dp[:,3],'r--')
# plt.plot(dpp[:,0],dpp[:,3],'g--')
# # plt.plot(dppp[:,0],dppp[:,3],'r--')
# # plt.plot(dpppp[:,0],dpppp[:,3],'b--')

# plt.plot(d[:,0],d[:,3] - dppp[:,3],'k')
# plt.plot(d[:,0],d[:,3] - dpppp[:,3],'r')





plt.gca().set_yticks([])
plt.yticks([])
plt.xlabel('Frequency (mHz)')
# plt.ylabel('Difference with full coupling')
# plt.legend(['Full coupling', 'Rotation and ellipticity', 'No rotation or coupling'])
# plt.legend(['Full coupling', 'No rotation or coupling'])
# plt.legend(['Full coupling', 'Rotation and ellipticity'])
# plt.legend(['Self coupling','Full coupling with no density perturbation'])
# plt.xlim(0.8,0.86)
# plt.ylim(-5*10**(-5),5*10**(-5))
# plt.ylim(0,6*10**(-4))

plt.show()
# f.savefig("Coupling_demo_comparison.pdf", bbox_inches='tight')
# f.savefig("Coupling_demo_self_error.pdf", bbox_inches='tight')



    

    




