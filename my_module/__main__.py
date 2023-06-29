"""Basic example of a python script running in a docker container

Will print the currect time received from http://worldtimeapi.org
and some basic information.
"""
import os

import requests


def get_current_time() -> str:
    """Get current time from http://worldtimeapi.org

    Returns:
        str: string representation of the current time
    """
    url = "http://worldtimeapi.org/api/timezone/Europe/Berlin"

    response = requests.get(url=url, timeout=5)
    if response.status_code == 200:
        data = response.json()
        current_time = data["datetime"]
        return current_time
    print(f'could not get time from {url}: ', response.status_code)
    return None

def main() -> None:
    """main function that does all the magic and prints to stdout
    """
    print(f'Python script {__name__} is running')
    some_value = os.environ.get("someValue")
    print(f'got someValue from the .env file "{some_value}"')
    current_time = get_current_time()
    if current_time:
        print("current time: ", current_time)

if __name__ == '__main__':
    main()
