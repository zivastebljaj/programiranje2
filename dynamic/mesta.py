def najmanjsa_cena(matrika, n):
    min_cost = matrika[0][n]
    for i in range(1, n):
        min_cost += min(min_cost, najmanjsa_cena(matrika, i))
    return min_cost
                
                                  
