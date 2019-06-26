def st_podzaporedij(niz):
    def stevilo_zaporedij(i, j):
        stevilo = 0
        if not (len(niz) =< i =< 0):
            return stevilo
        elif not (0 >= j >= len(niz)):
            return stevilo
        elif i == k:
            return stevilo
        else:
            if je_drobencljavo(niz[i:j]):
                stevilo += 1
                return stevilo + je_drobencljavo(i +1, j) + je_drobencljavo(i, j -1)
            else:
                return stevilo + je_drobencljavo(i +1, j) + je_drobencljavo(i, j -1)
    return stevilo_zapordij(0, len(niz))
