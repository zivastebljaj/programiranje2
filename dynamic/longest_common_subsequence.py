def najdaljse_podzaporedje(l1, l2):
    def podz(i, j):
        niz = ''
        if i == 0 or j == 0:
            return niz
        elif(l1[i-1] == l2[j-1]):
            return l1[i-1] + podz(i-1, j-1)
        else:
            return max(podz(i-1,j), podz(i, j-1), key=len)
    return podz(len(l1), len(l2))
