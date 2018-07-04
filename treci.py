#import pandas as pd

#orders = pd.read_csv ('order_products_prior.csv')

#groups = orders.groupby(by= "order_id")

#br_products: group["product_id"].count

#print (br_products)

#print(orders_id['order_id'].drop_duplicates().count())


import pandas as pd
orders = pd.read_csv ('order_products_prior.csv')
#orders.groupby('user_id').count () #.max
brr_kor=orders.groupby('user_id').count ()['order_id']

print(brr_kor.mean())

#orders.groupby('user_id').count ().groupby('order_id').count()['eval_set']
import matplotlib as plt               #reset_index()
#brbr=orders.groupby('user_id').count ().groupby('order_id').count()['eval_set']
brbr=brr_kor.groupby('order_id').count()['eval_set']
brbrplt.plot()
plt.show()

#reset_index()