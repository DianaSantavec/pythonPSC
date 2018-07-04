#import pandas as pd

#readed1 = pd.read_csv('orders.csv', names = ['user_id'])

#colone1 = readed1["user_id"]

#colone1 = readed1["user_id"].drop_duplicates()

#nr = colone1.count()
#nr = readed1.domain.nunique()

#print (nr)

import pandas as pd

orders = pd.read_csv ('orders.csv')
#print (orders.count()['order_id'])
print(orders['order_id'].count)

products = pd.read_csv ('products.csv')
print (products.count()['product_id'])
                        #max
print(orders['user_id'].drop_duplicates().count())


