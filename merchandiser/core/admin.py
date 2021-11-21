from django.contrib import admin
from django_better_admin_arrayfield.admin.mixins import DynamicArrayMixin

from .models import CommercialNetwork, Shop, Product, ProductAvailability


class ArrayModelAdmin(admin.ModelAdmin, DynamicArrayMixin):
    pass


admin.site.register(CommercialNetwork, ArrayModelAdmin)
admin.site.register(Shop)
admin.site.register(Product, ArrayModelAdmin)
admin.site.register(ProductAvailability)
