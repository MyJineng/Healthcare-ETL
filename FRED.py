import requests
import pandas as pd
key = ''
state_ids = ['AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL',
             'GA', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA',
             'ME', 'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE',
             'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK',
             'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'TN', 'UT',
             'VT', 'VA', 'WA', 'WI', 'WY']

for x in state_ids:
  HCPC = f"https://api.stlouisfed.org/fred/series/observations?series_id={x}PCEPCHLTHCARE&api_key={key}&file_type=json"
  RINCPC = f"https://api.stlouisfed.org/fred/series/observations?series_id={x}RPIPC&api_key={key}&file_type=json"
  response = requests.get(RINCPC)
  series = pd.DataFrame(response.json()["observations"])
  series["value"] = series.rename(columns={'value': x}, inplace=True)
  series = series[['date', x]]
  if x == state_ids[0]:
    df = series
  else:
    df = pd.merge(df, series, on='date', how='inner')

df.to_csv('realincome.csv', encoding='utf-8', index=False)