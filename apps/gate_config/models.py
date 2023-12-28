from django.db import models

class GateConfigMaster(models.Model):
    gatereaderid = models.IntegerField(unique=True)
    imei = models.BigIntegerField()
    gatereadername = models.CharField(max_length=45, null=True, blank=True)
    simno = models.BigIntegerField()
    ipaddress = models.CharField(max_length=45, null=True, blank=True)
    ssid = models.CharField(max_length=45, null=True, blank=True)
    subnetmask = models.CharField(max_length=45, null=True, blank=True)
    defaultgateway = models.CharField(max_length=45, null=True, blank=True)
    routerpassword = models.CharField(max_length=45, null=True, blank=True)
    lat = models.FloatField(null=True, blank=True)
    lang = models.FloatField(null=True, blank=True)
    updatestatus = models.BooleanField(null=True, blank=True)
    updatedts = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.gatereaderid)

    class Meta:
        db_table = 'tblgateconfigmaster'


class RawData(models.Model):
    ts = models.DateTimeField()
    version = models.FloatField()
    signalstength = models.IntegerField()
    tagcount = models.IntegerField()
    gatereaderid = models.IntegerField()
    imei = models.BigIntegerField()
    gatereadername = models.CharField(max_length=100, null=True, blank=True)
    simno = models.BigIntegerField(null=True, blank=True)
    ipaddress = models.CharField(max_length=45, null=True, blank=True)
    ssid = models.CharField(max_length=45, null=True, blank=True)
    subnetmask = models.CharField(max_length=45, null=True, blank=True)
    defaultgateway = models.CharField(max_length=45, null=True, blank=True)
    routerpassword = models.CharField(max_length=45, null=True, blank=True)
    latitude = models.FloatField(null=True, blank=True)
    longitude = models.FloatField(null=True, blank=True)
    tagdata = models.CharField(max_length=5000)

    def __str__(self):
        return str(self.gatereaderid)

    class Meta:
        db_table = 'tblrawdata'


class SiteInfo(models.Model):
    sitename = models.CharField(max_length=45)
    siteid = models.CharField(max_length=45)
    lat = models.FloatField()
    lng = models.FloatField()
    enabled = models.BooleanField()

    def __str__(self):
        return str(self.siteid)

    class Meta:
        db_table = 'tblsiteinfo'