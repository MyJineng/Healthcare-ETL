import pandas as pd
from sqlalchemy import create_engine

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

# Query to fetch data
query = "SELECT * FROM combined_health_data"

# Reading data into a Pandas DataFrame
df = pd.read_sql(query, engine)

# Display the DataFrame
print(df)