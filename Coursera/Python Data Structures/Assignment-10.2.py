if __name__ == '__main__':
    fname = input('Enter file:')
    if len(fname) < 1:
        fname = 'mbox-short.txt'

    handle = open(fname)
    m = dict()
    a = dict()
    
    for line in handle:
        line = line.strip()
        if line.startswith('From ') and len(line.split()) > 2:
            wd = line.split()
            m[wd[5][:2]] = m.get(wd[5][:2], 0) + 1

    for key in sorted(m.keys()):
        print(key, m[key])
            
