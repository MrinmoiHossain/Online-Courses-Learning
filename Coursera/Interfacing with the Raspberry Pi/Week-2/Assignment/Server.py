import socket
import sys

if __name__ == '__main__':
    ms = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    ip = 'x.x.x.x'
    port = 1234
    
    try:
        ms.bind((ip, port))
    except socket.error:
        print('Failed to connect')
        sys.exit()
    
    ms.listen(5)
    
    while True:
        connection, address = ms.accept()
        data = connection.recv(1000)
        if data:
            print('Got a request!')
        
        
    connection.close()
    ms.close()
        
