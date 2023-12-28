# app/routers.py

class SecondDBRouter:
    def db_for_read(self, model, **hints):
        if model._meta.app_label == 'apps.admin_apps.app':  # Update 'your_app_name' to 'app'
            return 'second_db'
        return None

    def db_for_write(self, model, **hints):
        if model._meta.app_label == 'apps.admin_apps.app':  # Update 'your_app_name' to 'app'
            return 'second_db'
        return None

    def allow_relation(self, obj1, obj2, **hints):
        if (
            obj1._meta.app_label == 'apps.admin_apps.app'  # Update 'your_app_name' to 'app'
            or obj2._meta.app_label == 'apps.admin_apps.app'  # Update 'your_app_name' to 'app'
        ):
            return True
        return None

    def allow_migrate(self, db, app_label, model_name=None, **hints):
        if app_label == 'apps.admin_apps.app':  # Update 'your_app_name' to 'app'
            return db == 'second_db'
        return None
  