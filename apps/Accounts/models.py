from django.db import models
from django.contrib.auth.models import User


# Create your models here.

class Profile(models.Model):
    USER_TYPE_CHOICES = (
        ('admin', 'Admin'),
        ('parent', 'Parent'),
        ('teacher', 'Teacher'),
        ('others', 'Others'),
    )
    
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name="profile")
    phone_number = models.CharField(max_length=10,null=True,blank=True)
    user_type = models.CharField(max_length=10, choices=USER_TYPE_CHOICES)
    id_number = models.CharField(max_length=100)

    def __str__(self):
        return self.user.username