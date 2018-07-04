#import pandas as pd

#orders = pd.read_csv ('order_products_prior.csv')

#groups = orders.groupby(by= "order_id")

#br_products: group["product_id"].count

#print (br_products)

#print(orders_id['order_id'].drop_duplicates().count())


import pandas as pd
orders = pd.read_csv ('order_products_prior.csv')
orders.groupby('user_id').count () #.max
orders.groupby('user_id').count ()['order_id'].mean