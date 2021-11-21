from django.urls import path

from . import views


urlpatterns = [
    path("product-availability/", views.ProductAvailabilityListView.as_view(), name="api-product-availability-list"),
]
