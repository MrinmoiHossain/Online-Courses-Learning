if __name__ == '__main__':
    fname = input("Enter file name: ")
    if len(fname) < 1:
        fname = "mbox-short.txt"

    fh = open(fname)
    con = 0

    for line in fh:
        line = line.strip()
        if not line.startswith('From '):
            continue
        ls = line.split()
        print(ls[1])
        con += 1

    print('There were %d lines in the file with From as the first word' % con)