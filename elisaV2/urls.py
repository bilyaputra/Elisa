from django.contrib import admin
from django.conf.urls.static import static
from django.conf import Settings, settings
from django.urls import path
from elisaapp.views import login, input_surat, dashboard

urlpatterns = [
    path('admin/', admin.site.urls),
    path('login/', login),
    path('input_surat/', input_surat),
    path('dashboard/', dashboard),
    # path('arsip/', arsip)
    # path('disposisi/', disposisi)
] 
# + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
