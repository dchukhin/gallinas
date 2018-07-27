from django.conf.urls import include, url
from rest_framework.routers import DefaultRouter

from .views import RestaurantViewSet


# API Router
router = DefaultRouter()
router.register(r'restaurants', RestaurantViewSet, base_name='restaurant')

urlpatterns = [
    url('', include((router.urls, 'api'), namespace='api')),
]
