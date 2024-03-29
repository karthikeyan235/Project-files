# Generated by Django 4.2.5 on 2023-12-25 09:22

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Route',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('route_no', models.CharField(max_length=50, unique=True)),
                ('route_name', models.CharField(max_length=50)),
                ('vehicle_no', models.CharField(max_length=15, unique=True)),
                ('vts_id', models.CharField(max_length=20, unique=True)),
            ],
            options={
                'db_table': 'route_table',
            },
        ),
        migrations.CreateModel(
            name='RouteStop',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('route_no', models.CharField(max_length=50, null=True)),
                ('stop_no', models.IntegerField(null=True)),
                ('stop_name', models.CharField(max_length=100, null=True)),
                ('latitude', models.DecimalField(decimal_places=6, max_digits=9, null=True)),
                ('longitude', models.DecimalField(decimal_places=6, max_digits=9, null=True)),
            ],
            options={
                'db_table': 'route_stop',
            },
        ),
    ]
