from django.db import models

from django.db import models

class Route(models.Model):
    route_no = models.CharField(max_length=50, unique=True)
    route_name = models.CharField(max_length=50)
    vehicle_no = models.CharField(max_length=15, unique=True)
    vts_id = models.CharField(max_length=20, unique=True)

    def __str__(self):
        return self.route_no
    class Meta:
        db_table="route_table"  

class RouteStop(models.Model):
    route_no = models.CharField(max_length=50, null=True)
    stop_no = models.IntegerField(null=True)
    stop_name = models.CharField(max_length=100, null=True)
    latitude = models.DecimalField(max_digits=9, decimal_places=6, null=True)
    longitude = models.DecimalField(max_digits=9, decimal_places=6, null=True)
    
    def __str__(self):
        return self.route_no

    class Meta:
        db_table = 'route_stop'















