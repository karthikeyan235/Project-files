from django.urls import path
from . import views
from django.contrib.auth import views as auth_viwes

urlpatterns = [
	path('login/',views.LoginView.as_view(),name = 'login'),
	path('applogin/',views.ApiLoginView.as_view()),
	path('homepage/',views.HomepageView.as_view(),name = 'homepage'),
	path('home/',views.HomeView.as_view(),name = 'home'),
	path('logout/',views.LogoutView.as_view(),name = 'logout'),
	path('login-accounts/', views.LoginAccountsListView.as_view(), name='login-accounts-list'),
	path('login-account-edit/<str:usr>', views.LoginAccountEditView.as_view(), name='login-account-edit'),
	path('login-account-delete/<str:usr>', views.LoginAccountDeleteView.as_view(), name='login-account-delete'),
	path('change-password/', views.CustomPasswordChangeView.as_view(), name='password_change'),
	path('app_change_password/', views.ChangePasswordView.as_view(), name='app-change-password'),
	path('reset_password/',auth_viwes.PasswordResetView.as_view(template_name='registration/reset_password.html'), name='reset_password'),
	path('reset_password_sent/',auth_viwes.PasswordResetDoneView.as_view(template_name='registration/password_reset_sent.html'), name='password_reset_done'),
	path('rest/<uidb64>/<token>',auth_viwes.PasswordResetConfirmView.as_view(template_name='registration/reset_password_confirm.html'), name='password_reset_confirm'),
	path('reset_password_complete/',auth_viwes.PasswordResetCompleteView.as_view(template_name='registration/reset_password_done.html'), name='password_reset_complete'),
]