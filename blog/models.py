from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Category(models.Model):
    name = models.CharField(verbose_name='Kategori Adı', max_length=64)
    
    class Meta:
        verbose_name = 'Blog Kategori'
        verbose_name_plural = 'Blog Kategoriler'
    
    def __str__(self):
        return self.name


class Post(models.Model):
    user = models.ForeignKey(User, verbose_name='Kullanıcı', on_delete=models.CASCADE)
    category = models.ForeignKey(Category, verbose_name='Kategori', on_delete=models.CASCADE)
    title = models.CharField(verbose_name='Başlık', max_length=64)
    content = models.TextField(verbose_name='İçerik', null=True, blank=True)
    created_date = models.DateTimeField(verbose_name='Oluşturulma Tarihi', auto_now_add=True)
    updated_date = models.DateTimeField(verbose_name='Güncelleme Tarihi', auto_now=True)
    
        
    class Meta:
        verbose_name = 'Blog Yazısı'
        verbose_name_plural = 'Blog Yazıları'
    
    def __str__(self):
        return self.category + ' / ' + self.title