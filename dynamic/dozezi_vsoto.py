##def vsota(seznam, n):
##    def pomozna(i, trenutna):
##        if trenutna == n:
##            return 0
##        elif trenutna != 0 and i > len(seznam):
##            return None
##        else:
##            for j in range(i + 1, len(sez)):
##                if (pomozna(j, trenutna + seznam[j]) != None) and (pomozna(j, trenutna - seznam[j]) != None):
##                    return 1 + pomozna(j, trenutna + seznam[j]) + pomozna(j, trenutna - seznam[j])
##                elif (pomozna(j, trenutna - seznam[j]) == None) and (pomozna(j, trenutna + seznam[j]) != None):
##                    return 1 + pomozna(j, trenutna + seznam[j])
##                elif (pomozna(j, trenutna - seznam[j]) != None) and (pomozna(j, trenutna + seznam[j]) == None):
##                    return 1 + pomozna(j, trenutna - seznam[j])
##
##    return pomozna(0, 0)

def vsota(seznam, tarca):
    k = len(seznam)
    def pomozna (n, tarca):
        if tarca == 0:
            return 1
        if n < 0:
            return 0
        else:
            return pomozna(n-1, tarca) + pomozna(n-1, tarca-seznam[n]) + pomozna(n-1, tarca+seznam[n])
    return pomozna(k - 1, tarca)        

