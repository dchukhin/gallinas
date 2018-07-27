from django.db import models

# Create your models here.
class Restaurant(models.Model):
    name = models.CharField(max_length=100, blank=True, default='', unique=True)
    address = models.CharField(max_length=100, blank=True, default='')
    city = models.CharField(max_length=100, blank=True, default='')
    state = models.CharField(max_length=100, blank=True, default='')
    zip_code = models.CharField(max_length=10, blank=True, null=True)
    upload = models.ImageField(upload_to=None, height_field=None, width_field=None, max_length=100)

    def __str__(self):
        return "{}".format(self.name)
