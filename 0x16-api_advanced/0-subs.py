#!/usr/bin/python3
"""
Script that queries the number of subscribers on a given Reddit subreddit.
"""

import requests

def number_of_subscribers(subreddit):
    """
    Return the total number of subscribers on a given subreddit.

    Args:
    subreddit (str): The subreddit name to query

    Returns:
    int: The number of subscribers if the subreddit exists, otherwise 0.

    Example:
    number_of_subscribers("python")  # Returns the subscriber count of the Python subreddit
    """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {"User-Agent": "app:v1.0 (by /u/yourusername)"}
    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        if response.status_code == 200:
            data = response.json()
            return data['data']['subscribers']
        else:
            return 0
        except requests.RequestException as e:
            print(f"An error occurred: {e}")
            return 0

        if __name__ == "__main__":
            # Example usage
            subreddit = "python"
            print(f"Subscribers in r/{subreddit}: {number_of_subscribers(subreddit)}")

