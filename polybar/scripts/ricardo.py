import requests
from tabulate import tabulate

RICORDO_URL = "https://www.ricardo.ch"
PERSONAL_ACCOUNT = "neutron66"


def get_product_price(product_url):
    """
    Returns the price of the value if sold

    Throw exception if the item is unsold
    """
    result = requests.get(RICORDO_URL + product_url)

    page = result.text.split('value--1bdsK">')[1]
    amount = page.split("</p>")[0]

    return amount


def get_products_url_by_user(user):
    """
    Returns all listed item of that user
    """
    result = requests.get("{}/de/shop/{}".format(RICORDO_URL, user))
    products = []

    all_names = result.text.split('MuiGrid-grid-md-3" href="')
    all_names.pop(0)

    for name in all_names:
        product = name.split('/"><div')[0]
        products.append(product)

    return products


def get_total_of_products(user_name=PERSONAL_ACCOUNT):
    """
    Prints the current total of all sold prodcts.
    For the unsold get accordingly markt
    """
    total = 0

    for product in get_products_url_by_user(user_name):
        try:
            amount = get_product_price(product)
            total = total + float(amount)
        except IndexError:
            continue

    return total


def get_bill_of_total(user_name=PERSONAL_ACCOUNT):
    """
    Prints the current total of all sold prodcts.
    For the unsold get accordingly markt
    """
    bill = []
    total = 0

    for product in get_products_url_by_user(user_name):
        try:
            amount = get_product_price(product)
            total = total + float(amount)
            bill.append([(product.split("/de/a/")[1].replace("-", " ")), amount])
        except IndexError:
            bill.append([(product.split("/de/a/")[1].replace("-", " ")), "NOT SOLD"])

    bill.append(["Total", total])
    return bill


print(get_total_of_products())

# bill = get_bill_of_total()
# print(tabulate(bill, headers=["Product", "Price CHF"]))
