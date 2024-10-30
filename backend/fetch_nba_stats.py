import requests
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/nba-stats/<player_id>', methods=['GET'])
def get_player_stats(player_id):
    # Fetch stats from NBA API (replace URL with actual API endpoint)
    response = requests.get(f"https://api.nba.com/stats/{player_id}")
    data = response.json()
    return jsonify(data)

if __name__ == '__main__':
    app.run(port=5000)
