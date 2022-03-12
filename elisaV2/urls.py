from unicodedata import name
from django.contrib import admin
from django.conf.urls.static import static
from django.conf import Settings, settings
from django.urls import path
from elisaapp.views import *
from django.contrib.auth.views import LoginView, LogoutView

urlpatterns = [
    path('admin/', admin.site.urls),
    path('login/', LoginView.as_view(), name='login'),
    path('logout/', LogoutView.as_view(next_page='dashboard'), name='logout'),
    path('input-surat/', input_surat, name='input_surat'),
    path('dashboard/', dashboard, name='dashboard'),
    path('dashboard-admin/', dashAdmin, name='dashAdmin'),
    path('arsip/', arsip, name='arsip'),
    path('tes/', tes, name='tes'),
    path('disposisi/', disposisi, name='disposisi'),
    path('coba/', coba, name='coba'),
] 
# + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
