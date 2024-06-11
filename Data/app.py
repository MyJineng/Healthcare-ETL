from flask import Flask, jsonify
import pandas as pd
from sqlalchemy import create_engine

app = Flask(__name__)

# Database connection parameters
db_params = {
    'dbname': 'healthcare_data',
    'user': 'postgres',
    'password': 'postgres',
    'host': 'localhost',
    'port': '5433'
}

# Create the connection string
connection_string = f"postgresql+psycopg2://{db_params['user']}:{db_params['password']}@{db_params['host']}:{db_params['port']}/{db_params['dbname']}"

# Create the SQLAlchemy engine
engine = create_engine(connection_string)

def fetch_data():
    # Query to fetch data
    query = "SELECT * FROM combined_health_data"
    # Reading data into a Pandas DataFrame
    df = pd.read_sql(query, engine)
    return df

@app.route('/data', methods=['GET'])
def get_data():
    df = fetch_data()
    return jsonify(df.to_dict(orient='records'))

if __name__ == '__main__':
    app.run(debug=True)