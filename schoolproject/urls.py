"""schoolproject URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',include('apps.Accounts.urls')),
    path('teacher/',include('apps.teacher_app.urls')),
    path('gate_config/',include('apps.gate_config.urls')),
    path('admin_apps/',include('apps.admin_apps.registration_app.urls')),
    path('student/',include('apps.parent_app.urls')),
    path('staff/',include('apps.staff_app.urls')),
    path('tracking_app/',include('apps.admin_apps.app.urls')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
