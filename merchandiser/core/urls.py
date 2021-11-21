from django.urls import path

from . import views


urlpatterns = [
    path("product-availability/", views.ProductAvailabilityView.as_view(), name="api-product-availability-list"),
]
