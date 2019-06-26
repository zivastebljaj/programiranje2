def st_stolpov(n):
    if n == 1:
        return 1
    elif n == 2:
        return 2
    elif n == 3:
        return 4
    else:
        return st_stolpov(n-1) + st_stolpov(n-2)+ st_stolpov(n-3)
def st_barvnih(n):
    def stevilo_modrih(n):
        if n ==1 :
            return 1
        elif n == 2:
            return 2
        else:
            return stevilo_rdecih(n-2) + stevilo_rdecih(n-1)
    def stevilo_rdecih(n):
        if n == 1:
            return 1
        elif n == 2:
            return 1
        elif n == 3:
            return 3
        else:
            return stevilo_modrih(n-1) + stevilo_modrih(n-3)
    return stevilo_modrih(n) + stevilo_rdecih(n)
