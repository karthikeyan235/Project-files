from django.urls import path
from . import views

urlpatterns = [ 
    path('collect_data/',views.collect_data),

    path('list/', views.GateConfigListView.as_view(), name='gateconfig-list'),
    path('create/', views.GateConfigCreateView.as_view(), name='gateconfig-create'),
    path('<int:pk>/', views.GateConfigDetailView.as_view(), name='gateconfig-detail'),
    path('mapview/<int:r_id>/', views.GateConfigMapDetailView.as_view()),
    path('<int:pk>/update/', views.GateConfigUpdateView.as_view(), name='gateconfig-update'),
    path('<int:pk>/delete/', views.GateConfigDeleteView.as_view(), name='gateconfig-delete'),
    path('site_data/', views.SiteDataView.as_view(), name='site-data'),
    path('mapview/', views.MapView.as_view(), name='map-view'),

]
