from django.shortcuts import render
from django.views.generic import View
from rest_framework import generics
from django_filters import rest_framework as filters

from .models import ProductAvailability, Category
from .serializers import ProductAvailabilitySerializer, CategoryProductSerializer
from .filters import ProductAvailabilityFilter


class ProductAvailabilityListView(generics.ListAPIView):
    queryset = ProductAvailability.objects.all().order_by('id')
    serializer_class = ProductAvailabilitySerializer
    filter_backends = [filters.DjangoFilterBackend]
    filter_class = ProductAvailabilityFilter


class ProductAvailabilityTreeView(generics.RetrieveAPIView):
    queryset = Category.objects.all()
    serializer_class = CategoryProductSerializer


class Exc2(View):
    @staticmethod
    def get(request):
        return render(request, 'exc2.html')
