import pandas as pd
import matplotlib as plt

tabela = pd.read_csv ('order_products__train.csv')

proizvoda_po_narudzbi = tabela.groupby ('product_id').count()

resenje = proizvoda_po_narudzbi['order_id'].idxmax() 

print (resenje)

#proizvoda_po_narudzbi = tabela.groupby('order_id').count().reset_index()