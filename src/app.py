from flask import Flask, render_template
import psycopg2
import os

app = Flask(__name__)

# Get database URL from environment variable
DATABASE_URL = os.getenv("DATABASE_URL")

@app.route('/')
def home():
    return render_template('index.html', message="Hello from Flask & Docker!")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
