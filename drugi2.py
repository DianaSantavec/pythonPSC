import pandas as pd
import matplotlib.pyplot as plt

tabela = pd.read_csv ('order_products__train.csv')

#broj_porudzbina = tabela['order_id'].drop_duplicates().count()

proizvoda_po_narudzbi = tabela.groupby('order_id').count().reset_index()

broj_porudzbina = proizvoda_po_narudzbi.groupby('product_id').count()["order_id"]



print (broj_porudzbina)
print (proizvoda_po_narudzbi)

broj_porudzbina.plot()
plt.show()