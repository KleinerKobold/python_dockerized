import os

def main():
    print("Python script running")
    someValue = os.environ.get("someValue")
    print(f"got someValue from the .env file '{someValue}'")

if __name__ == '__main__':
    main()