def najmanj_skokov(zaporedje):
    def skoki(i, n):
        if i == n -1:
            return 0
        min = 10000
        for j in range(i + 1, i + zaporedje[i]):
            print (j)
            st = skoki(j, n)
            print (st)
            if st < min:
                min=st
        return min
    return skoki(0, len(zaporedje))
