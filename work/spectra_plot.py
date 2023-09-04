import numpy as np
import matplotlib.pyplot as plt

d = np.loadtxt('spectra_couple.STAT1.Z')
dp = np.loadtxt('spectra_nocouple.STAT1.Z')
dpp = np.loadtxt('spectra_norot.STAT1.Z')
dppp = np.loadtxt('spectra_self.STAT1.Z')
dpppp = np.loadtxt('spectra_norho.STAT1.Z')

plt.rcParams.update({'font.size': 24})

f = plt.figure()

plt.plot(d[:,0],d[:,3],'k')
plt.plot(dp[:,0],dp[:,3],'r--')
plt.plot(dpp[:,0],dpp[:,3],'g--')
# # plt.plot(dppp[:,0],dppp[:,3],'r--')
# # plt.plot(dpppp[:,0],dpppp[:,3],'b--')

# plt.plot(d[:,0],d[:,3] - dppp[:,3],'k')
# plt.plot(d[:,0],d[:,3] - dpppp[:,3],'r')





plt.gca().set_yticks([])
plt.yticks([])
plt.xlabel('Frequency (mHz)')
# plt.ylabel('Difference with full coupling')
plt.legend(['Full coupling', 'Rotation and ellipticity', 'No rotation or coupling'])
# plt.legend(['Full coupling', 'No rotation or coupling'])
# plt.legend(['Full coupling', 'Rotation and ellipticity'])
# plt.legend(['Self coupling','Full coupling with no density perturbation'])
plt.xlim(0.8,0.86)
# plt.ylim(-5*10**(-5),5*10**(-5))
plt.ylim(0,6*10**(-4))

plt.show()
f.savefig("Coupling_demo_comparison.pdf", bbox_inches='tight')
# f.savefig("Coupling_demo_self_error.pdf", bbox_inches='tight')



    

    




