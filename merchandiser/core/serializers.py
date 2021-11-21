from rest_framework import serializers

from .models import ProductAvailability, Category, Product


class ProductAvailabilitySerializer(serializers.ModelSerializer):
    product = serializers.CharField(
        source = 'product.name',
        read_only = True
    )
    shop = serializers.SerializerMethodField()
    category = serializers.CharField(
        source='product.category.name',
        read_only=True
    )

    def get_shop(self, obj):
        return '{}-{} на {}'.format(obj.shop.commercial_network.name, obj.shop.format, obj.shop.address)

    class Meta:
        model = ProductAvailability
        fields = '__all__'


class RecursiveField(serializers.Serializer):
    def to_representation(self, value):
        serializer = self.parent.parent.__class__(value, context=self.context)
        return serializer.data


class CategoryProductAvailabilitySerializer(serializers.ModelSerializer):
    shop = serializers.SerializerMethodField()

    def get_shop(self, obj):
        return '{}-{} на {}'.format(obj.shop.commercial_network.name, obj.shop.format, obj.shop.address)

    class Meta:
        model = ProductAvailability
        fields = ['id', 'shop', 'number_in_shop']


class CategoryProductSerializer(serializers.ModelSerializer):
    product_availability = CategoryProductAvailabilitySerializer(many=True)

    class Meta:
        model = Product
        fields = ['id', 'name', 'product_availability']


class CategoryProductSerializer(serializers.ModelSerializer):
    children = RecursiveField(many=True, read_only = True)
    product = CategoryProductSerializer(many=True)

    class Meta:
        model = Category
        fields = ['name', 'children', 'product']
