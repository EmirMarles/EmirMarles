import pandas as pd
import matplotlib.pyplot as plt

df1 = pd.read_csv(r"C:\Users\emirm\Desktop\final_table.csv")

print(df1)


                 
data = {
    'Job Category': ['Customer Service', 'Manager', 'Engineer', 'Finance', 'HR', 'Data', 'Sales', 'SAP'],
    'Job Count': [112, 168, 109, 64, 26, 33, 39, 41]  # Example job counts
}

df = pd.DataFrame(data)

plt.pie(df['Job Count'], labels=df['Job Category'], autopct='%1.1f%%', startangle=90)
plt.show()