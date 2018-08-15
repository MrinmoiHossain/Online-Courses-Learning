if __name__ == '__main__':
    try:
        fname = input('Enter file name: ')
        fn = open(fname)
        ls = list()
        lsm = [line.split() for line in fn]
        for i in lsm:
            for j in i:
                if j not in ls:
                    ls.append(j)

        ls.sort()
        print(ls)
    except:
        pass