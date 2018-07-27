from django.db import models

# Create your models here.
class Restaurant(models.Model):
    name = models.CharField(max_length=100, blank=True, default='')
    address = models.CharField(max_length=100, blank=True, default='')
    upload = models.ImageField(upload_to=None, height_field=None, width_field=None, max_length=100)

    def __str__(self):
        return "{}".format(self.name)
