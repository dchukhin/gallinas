from django.conf.urls import include, url

from .views import HomePage


urlpatterns = [
    url(r'^$', HomePage.as_view()),
]
