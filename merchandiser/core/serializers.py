from rest_framework import serializers

from .models import ProductAvailability


class ProductAvailabilitySerializer(serializers.ModelSerializer):
    product = serializers.CharField(
        source = 'product.name',
        read_only = True
    )
    shop = serializers.SerializerMethodField()
    category = serializers.ListSerializer(
        child=serializers.CharField(),
        source='product.category'
    )

    def get_shop(self, obj):
        return '{}-{} на {}'.format(obj.shop.commercial_network.name, obj.shop.format, obj.shop.address)

    class Meta:
        model = ProductAvailability
        fields = '__all__'