
from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    
  
#   working urls till now - 21072023
#crud operations of registration of route no to vts id 
    path('Register/',views.create_route,name='Registration'),
    path('edit_route/<str:route_no>/',views.edit_route,name='edit_route'),
    path('assigned_routes/',views.view_routes,name='assigned_routes'),
    path('delete_route/<str:route_id>/',views.delete_route,name='delete_route'),   
    
    #IMPORT DATA FROM FRONT END ....
     path('import_routes/', views.import_routes, name='import_routes'),
    path('base/',views.base,name='base'),
    path('dashboard/',views.dashboard,name='dashboard'),

    #this url is to recive the json data .
    path('data1/', views.collect_data, name='collect_data'),  
    path('get_trackdata_markers/', views.get_trackdata_markers, name='get_trackdata_markers'),
    #  path('get_trackdata_markers/', views.get_trackdata_markers, name='get_trackdata_markers'),
    path('display_map/', views.display_map, name='display_map'),
    # path('search/', views.route_viewer, name='search')
    path('route_viewer/',views.route_viewer,name='route_viewer'),
    path ('stop/',views.add_route_stop,name='stop'),
    path('edit_stop/<str:route_no>/<int:stop_no>/', views.edit_stop, name='edit_stop'),
    path('route_stop_view/',views.route_stop_view,name='route_stop_view'), 


    
 #new code testing -
 path('route_location/', views.route_location, name='route_location'),
 
 # new code for sending api response through cookies and student id 
  path('route_location_api/', views.route_location_api, name='route_location_api'),

    
 
]

