import pandas as pd
import sqlite3

# Read the spreadsheet data into a DataFrame
df = pd.read_csv('supermarket_sales.csv')

# Connect to a SQLite database (creates a new one if it doesn't exist)
conn = sqlite3.connect('market.db')

# Write the DataFrame to a new table in the database
df.to_sql('market', conn, if_exists='replace', index=False)
