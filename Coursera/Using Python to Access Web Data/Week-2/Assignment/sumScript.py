import re

if __name__ == '__main__':
    file = open('regex_sum_110092.txt')
    sm = 0
    wd = 0
    for line in file:
        temp = line.rstrip()
        temp = re.findall('[0-9]+', temp)
        #print(temp)
        #print('\n')
        if len(temp) > 0:
            for w in temp:
                wd += 1
                sm += int(w)

    print('The sum for the sample text above is %d\n' % sm)
