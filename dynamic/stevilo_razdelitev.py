zabojniki = [1,3,4,7,10]
def natovori(n):
    def pomozna(i, n):
        if n == 0:
            return 1
        elif n < 0:
            return 0
##        elif i >= len(zabojniki):
##            return 0
        else:
            vsote = [pomozna(i + 1, n - zabojnik) for zabojnik in zabojniki]
            return sum(vsote)
    return pomozna(0, n)
