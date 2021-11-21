import django_filters

from .models import ProductAvailability


class ProductAvailabilityFilter(django_filters.FilterSet):

    class Meta:
        model = ProductAvailability
        fields = '__all__'