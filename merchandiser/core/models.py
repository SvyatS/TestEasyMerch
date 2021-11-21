from django.db import models

from django_better_admin_arrayfield.models.fields import ArrayField


class CommercialNetwork(models.Model):
    name = models.CharField('Commercial Network name', max_length=128)
    format = ArrayField(models.CharField('Commercial Network format', max_length=128))

    def __str__(self):
        return self.name


class Shop(models.Model):
    commercial_network = models.ForeignKey(CommercialNetwork, related_name='shop', on_delete=models.CASCADE)
    format = models.CharField('Shop format', max_length=128, blank=True, null=True)
    address = models.CharField('Shop address', max_length=256)

    def __str__(self):
        return '{} {}'.format(self.commercial_network.name, self.address)


class Product(models.Model):
    name = models.CharField('Product name', max_length=128)
    category = ArrayField(models.CharField('Product category', max_length=128))

    def __str__(self):
        return self.name


class ProductAvailability(models.Model):
    product = models.ForeignKey(Product, related_name='product_availability', on_delete=models.CASCADE)
    shop = models.ForeignKey(Shop, related_name='product_availability', on_delete=models.CASCADE)
    number_in_shop = models.IntegerField('Number in shop', max_length=99999)

    def __str__(self):
        return '{} {}ш в {} на {}'.format(self.product.name, self.number_in_shop, self.shop.commercial_network.name, self.shop.address)