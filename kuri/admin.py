from django.contrib import admin
from kuri.models import (
    Restaurant,
)

# Register your models here.
@admin.register(Restaurant)
class RestaurantAdmin(admin.ModelAdmin):
    pass