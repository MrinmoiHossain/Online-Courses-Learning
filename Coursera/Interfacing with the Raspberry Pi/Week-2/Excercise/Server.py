import socket
import sys
#b
if __name__ == '__main__':
    ip = 'x.x.x.x'
    port = 1234
    
    mysocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    try:
        mysocket.bind((ip, 1234))
    except socket.error:
        print("Failed to bind")
        sys.exit()

    mysocket.listen(5)

    while True:
        connection, addr = mysocket.accept()
        data = connection.recv(1000)
        if not data:
            break
        print(data)
        #connection.sendall(data)

    connection.close()
    mysocket.close()
