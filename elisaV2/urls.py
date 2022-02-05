<<<<<<< HEAD
=======
from unicodedata import name
>>>>>>> 96f546e (login dan input surat)
from django.contrib import admin
from django.conf.urls.static import static
from django.conf import Settings, settings
from django.urls import path
<<<<<<< HEAD
from elisaapp.views import login, input_surat, dashboard

urlpatterns = [
    path('admin/', admin.site.urls),
    path('login/', login),
    path('input_surat/', input_surat),
    path('dashboard/', dashboard),
=======
from elisaapp.views import input_surat, dashboard
from django.contrib.auth.views import LoginView, LogoutView

urlpatterns = [
    path('admin/', admin.site.urls),
    path('login/', LoginView.as_view(), name='login'),
    path('logout/', LogoutView.as_view(next_page='dashboard'), name='logout'),
    path('input-surat/', input_surat, name='input_surat'),
    path('dashboard/', dashboard, name='dashboard'),
>>>>>>> 96f546e (login dan input surat)
    # path('arsip/', arsip)
    # path('disposisi/', disposisi)
] 
# + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
