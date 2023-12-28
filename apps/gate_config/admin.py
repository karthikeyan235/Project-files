from django.contrib import admin
from .models import GateConfigMaster,RawData

@admin.register(GateConfigMaster)
class GateConfigMasterAdmin(admin.ModelAdmin):
    list_display = ('gatereaderid', 'imei', 'gatereadername', 'simno', 'ipaddress', 'ssid', 'subnetmask', 'defaultgateway', 'routerpassword', 'lat', 'lang', 'updatestatus', 'updatedts')
    list_filter = ('updatestatus',)
    search_fields = ('gatereaderid', 'gatereadername', 'ipaddress', 'ssid')



@admin.register(RawData)
class RawDataAdmin(admin.ModelAdmin):
    list_display = ('ts', 'gatereaderid', 'tagcount', 'signalstength', 'gatereadername','simno','imei')
    list_filter = ('gatereaderid',)
    search_fields = ('gatereaderid', 'gatereadername')