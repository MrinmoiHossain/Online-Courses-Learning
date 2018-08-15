# Use the file name mbox-short.txt as the file name

if __name__ == '__main__':
    fname = input("Enter file name: ")
    fh = open(fname)
    s = 0.0
    con = 0

    for line in fh:
        if not line.startswith("X-DSPAM-Confidence:"):
            continue
        else:
            try:
                l = len(line)
                temp = line.find(':')
                v = float(line[temp + 1:l])
                s  = s + v
                con += 1
            except:
                pass

    print("Average spam confidence: %0.12f" % (s / con))
