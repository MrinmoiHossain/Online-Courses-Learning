class Main():
    def __init__(self):
        self.li = []
        for _ in range(3):
            print("Enter a number: ", end='')
            self.li.append(int(input()))

        self.li.sort()

    def output(self):
        print("The sorted list is: ", end='')
        for i in range(len(self.li)):
            print(self.li[i], end=', ')
        print()


if __name__ == '__main__':
    obj = Main()
    obj.output()
