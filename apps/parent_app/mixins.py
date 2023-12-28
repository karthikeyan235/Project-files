from django.shortcuts import redirect
from django.utils.decorators import method_decorator
from functools import wraps
from django.contrib.auth.decorators import login_required
from django.contrib import messages




def parent_required(view_func):
    @wraps(view_func)
    def _wrapped_view(request, *args, **kwargs):
        if request.user.profile.user_type != 'parent':
            messages.error(request, 'You do not have permission to access')
            return redirect("login")
        return view_func(request, *args, **kwargs)
    return _wrapped_view

class ParentRequiredMixin:
    @method_decorator(login_required)
    @method_decorator(parent_required)
    def dispatch(self, *args, **kwargs):
        return super().dispatch(*args, **kwargs)