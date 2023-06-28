import os

import requests

def get_current_time():
    url = "http://worldtimeapi.org/api/timezone/Europe/Berlin" 

    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        current_time = data["datetime"]
        return current_time
    else:
        print("error on request: ", response.status_code)
        return None
    

def main():
    print("Python script running")
    someValue = os.environ.get("someValue")
    print(f"got someValue from the .env file '{someValue}'")
    current_time = get_current_time()
    if current_time:
        print("current time: ", current_time)

if __name__ == '__main__':
    main()
