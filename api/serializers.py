from rest_framework import serializers

from kuri.models import Restaurant


class RestaurantSerializer(serializers.ModelSerializer):
    class Meta:
        model = Restaurant
        fields = ('id', 'address', 'city', 'state', 'zip_code', 'upload')
