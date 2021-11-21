from rest_framework.response import Response
from rest_framework.views import APIView

from .models import ProductAvailability
from .serializers import ProductAvailabilitySerializer


class ProductAvailabilityView(APIView):
    def get(self, request):
        try:
            queryset = ProductAvailability.objects.all()
            serializer = ProductAvailabilitySerializer(queryset, many=True)
            return Response(serializer.data)
        except Exception as e:
            return Response(e)
