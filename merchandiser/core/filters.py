import django_filters

from .models import ProductAvailability, Category


class CharFilterInFilter(django_filters.BaseInFilter, django_filters.CharFilter):
    pass


class ProductAvailabilityFilter(django_filters.FilterSet):
    commercial_network = CharFilterInFilter(
        field_name = 'shop__commercial_network__name',
        lookup_expr = 'in'
    )
    shop_format = CharFilterInFilter(
        field_name = 'shop__format',
        lookup_expr = 'in'
    )
    address = CharFilterInFilter(
        field_name = 'shop__address',
        lookup_expr = 'in'
    )
    product = CharFilterInFilter(
        field_name = 'product__name',
        lookup_expr = 'in'
    )
    product_category = CharFilterInFilter(
        field_name = 'product__category__name',
        lookup_expr = 'in'
    )
    min_number = django_filters.NumberFilter(field_name="number_in_shop", lookup_expr='gte')
    max_number = django_filters.NumberFilter(field_name="number_in_shop", lookup_expr='lte')

    class Meta:
        model = ProductAvailability
        fields = (
            'commercial_network',
            'shop_format',
            'address',
            'product',
            'product_category',
            'min_number',
            'max_number'
        )
