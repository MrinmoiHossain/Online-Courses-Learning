from twython import TwythonStreamer

C_key = ''
C_secret = ''
A_token = ''
A_secret = ''

class MyStreamer(TwythonStreamer):
    def on_success(self, data):
        if 'text' in data:
            print('Found It {}!'.format(data['text']))
            MyStreamer.i += 1
            if MyStreamer.i >= 3:
                print('Ian G. Harris is popular!')
                
if __name__ == '__main__':
    stream = MyStreamer(C_key, C_secret, A_token, A_secret)
    stream.statuses.filter(track='Ian G. Harris')