from flask import Flask, render_template, request, jsonify
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import io
import base64

app = Flask(__name__)

# Load CSV data into DataFrames
data_files = {
    "realincome": "data/realincome.csv",
    "physician_and_clinics": "data/Physician and Clinics.csv",
    "other_professionals": "data/Other Professionals.csv",
    "nursing": "data/Nursing.csv",
    "home_health": "data/Home Health.csv",
    "healthexpenditures": "data/healthexpenditures.csv",
    "medicare": "data/cleaned_Medicare.csv",
    "medicaid": "data/cleaned_Medicaid.csv",
    "private_enrollee": "data/cleaned_PriVenrollee_Data.csv",
    "personal_health_care": "data/Personal Health Care.csv",
    "hospital": "data/Hospital.csv"
}

data = {name: pd.read_csv(path) for name, path in data_files.items()}

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/columns', methods=['GET'])
def columns():
    dataset = request.args.get('dataset')
    df = data[dataset]
    columns = df.columns.tolist()
    return jsonify({'columns': columns})

@app.route('/plot', methods=['POST'])
def plot():
    dataset1 = request.form['dataset1']
    dataset2 = request.form['dataset2']
    x_col = request.form['x_col']
    y_col = request.form['y_col']
    plot_type = request.form['plot_type']

    sns.set(style="whitegrid")

    fig, ax = plt.subplots(figsize=(14, 8))  # Increase the figure size

    if dataset1 and dataset2:
        df1 = data[dataset1]
        df2 = data[dataset2]
        if plot_type == 'bar':
            sns.barplot(data=df1, x=x_col, y=y_col, ax=ax, palette="muted", label=dataset1)
            sns.barplot(data=df2, x=x_col, y=y_col, ax=ax, palette="bright", label=dataset2)
        elif plot_type == 'line':
            sns.lineplot(data=df1, x=x_col, y=y_col, ax=ax, marker="o", palette="muted", label=dataset1)
            sns.lineplot(data=df2, x=x_col, y=y_col, ax=ax, marker="o", palette="bright", label=dataset2)
        elif plot_type == 'scatter':
            sns.scatterplot(data=df1, x=x_col, y=y_col, ax=ax, palette="muted", label=dataset1)
            sns.scatterplot(data=df2, x=x_col, y=y_col, ax=ax, palette="bright", label=dataset2)
        elif plot_type == 'histogram':
            sns.histplot(data=df1, x=x_col, ax=ax, kde=True, color="skyblue", label=dataset1)
            sns.histplot(data=df2, x=x_col, ax=ax, kde=True, color="salmon", label=dataset2)
    elif dataset1:
        df = data[dataset1]
        if plot_type == 'bar':
            sns.barplot(data=df, x=x_col, y=y_col, ax=ax, palette="muted")
        elif plot_type == 'line':
            sns.lineplot(data=df, x=x_col, y=y_col, ax=ax, marker="o", palette="muted")
        elif plot_type == 'scatter':
            sns.scatterplot(data=df, x=x_col, y=y_col, ax=ax, palette="muted")
        elif plot_type == 'histogram':
            sns.histplot(data=df, x=x_col, ax=ax, kde=True, color="skyblue")

    plt.title(f'{plot_type.capitalize()} Plot of {y_col} vs {x_col}', fontsize=16)
    plt.xlabel(x_col, fontsize=14)
    plt.ylabel(y_col, fontsize=14)
    plt.xticks(rotation=45, ha='right')
    plt.legend()
    plt.tight_layout()

    buf = io.BytesIO()
    plt.savefig(buf, format='png')
    buf.seek(0)
    image_base64 = base64.b64encode(buf.getvalue()).decode('utf-8')
    plt.close(fig)
    return jsonify({'image': f'data:image/png;base64,{image_base64}'})

if __name__ == '__main__':
    app.run(debug=True)