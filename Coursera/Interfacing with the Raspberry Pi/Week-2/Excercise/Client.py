import socket
import sys

if __name__ == '__main__':
    ip = 'x.x.x.x'
    port = 1234
    
    try:
        mysocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    except socket.errror:
        print("Failed to create socket")
        sys.exit()

    '''
    try:
        host = socket.gethostbyname("www.google.com")
    except socket.gaierror:
        print('Failed to get host')
        sys.exit()
    '''
    
    mysocket.connect((ip, port))
    message = b'Hello World!!! Mrinmoi\n'

    try:
        mysocket.sendall(message)
    except socket.error:
        print('Failed to send')
        sys.exit()
    
    data = mysocket.recv(1024)
    print(data)
    mysocket.close()
    
    

    
