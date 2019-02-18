def karatsuba(x, y):
    aS = str(x)
    bS = str(y)
    if x < 10 or y < 10:
        return x * y

    maxLength = max(len(aS), len(bS))
    splitLenght = maxLength // 2

    #Splitstring
    a, b = int(aS[:-splitLenght]), int(aS[-splitLenght:])
    c, d = int(bS[:-splitLenght]), int(bS[-splitLenght:])

    z0 = karatsuba(a, c)
    z1 = karatsuba((a + b), (c + d))
    z2 = karatsuba(b, d)

    return (z0 * 10**(2*splitLenght)) + ((z1 - z0 - z2) * 10**splitLenght) + z2


if __name__ == '__main__':
    a = 3141592653589793238462643383279502884197169399375105820974944592
    b = 2718281828459045235360287471352662497757247093699959574966967627
    
    print(karatsuba(a, b))
