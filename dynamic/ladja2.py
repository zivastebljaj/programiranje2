zabojniki = [1, 3, 4, 7, 10]
def natovori(n):
    moznosti = [z for z in zabojniki if n >= z]
    def p(n, sez):
        if sez == []:
            return 0
        elif n - sez[-1] == 0:
            return 1 + p(n, sez[:-1])
        elif n - sez[-1] < 0:
            return p(n, sez[:-1])
        else:
            return p(n - sez[-1], sez)+ p(n, sez[:-1])
    return p(n, moznosti)
