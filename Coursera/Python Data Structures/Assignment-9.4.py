if __name__ == '__main__':
    try:
        name = input("Enter file:")
        if len(name) < 1:
            name = "mbox-short.txt"
        handle = open(name)

        m = dict()
        for word in handle:
            if word.startswith('From '):
                word = word.split()
                mail = word[1]
                m[mail] = m.get(mail, 0) + 1
        for key in m:
            if m[key] == max(m.values()):
                print(key, m[key])
    except:
        #print("Can not open file")
        pass
