import numpy as np
import matplotlib.pyplot as plt

d = np.loadtxt("spectra_test.STAT1.Z")
dp = np.loadtxt("fspectra.r1.out", delimiter=";")

plt.rcParams.update({"font.size": 24})

f = plt.figure()

plt.subplot(1,2,1)
plt.plot(d[:, 0], d[:, 3], "k")
plt.plot(dp[:, 0], dp[:, 3], "r")

plt.subplot(1,2,2)
plt.plot(d[:, 0], abs(dp[5:9447, 3] - d[:,3]), "r")
# print(len(d))
# print(len(dp))
# print(d[0:10,0])
# print(dp[0:10,0])

# print(d[9435:9442,0])
# print(dp[9440:9448,0])

# plt.gca().set_yticks([])
# plt.yticks([])
plt.xlabel("Frequency (mHz)")
plt.show()
