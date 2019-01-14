from django.http import HttpResponse


def index(request):
    return HttpResponse('Hello Codebar! You\'re at the bar!!!!')
