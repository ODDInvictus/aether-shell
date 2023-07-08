import os
import atexit

FIFO = './data/spotify/fifo/fifo'
    
def main():
    print("Starting reader")
    with open(FIFO) as fifo:
        print(fifo)
        while True:
            line = fifo.read()
            print(repr(line))

if __name__ == "__main__":
    main()