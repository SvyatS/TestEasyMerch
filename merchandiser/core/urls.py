from django.urls import path

from . import views


urlpatterns = [
    path("product-availability/", views.ProductAvailabilityListView.as_view(), name="api-product-availability-list"),
    path("product-category/<int:pk>", views.ProductAvailabilityTreeView.as_view(), name="api-product-availability-tree"),
]
