# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import migrations, models

class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Cours(models.Model):
    numcours = models.IntegerField(primary_key=True)
    matprof = models.ForeignKey('Prof', models.DO_NOTHING, db_column='matprof', blank=True, null=True)
    heures_total = models.TextField(blank=True, null=True)
    ue = models.IntegerField(blank=True, null=True)
    objects = models.Manager()
    class Meta:
        managed = False
        db_table = 'cours'


class CoursSemaine(models.Model):
    coursnum = models.ForeignKey(Cours, models.DO_NOTHING, db_column='coursnum', blank=True, null=True)
    semainenum = models.ForeignKey('Semaine', models.DO_NOTHING, db_column='semainenum', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'cours_semaine'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Jours(models.Model):
    nomjour = models.CharField(primary_key=True, max_length=20)
    seancesf = models.ForeignKey('Seance', models.DO_NOTHING, db_column='seancesf', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'jours'


class Prof(models.Model):
    nummat = models.AutoField(primary_key=True)
    nomprof = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'prof'


class Seance(models.Model):
    idseance = models.AutoField(primary_key=True)
    heure_debut = models.TextField(blank=True, null=True)
    heure_fin = models.TextField(blank=True, null=True)
    local = models.CharField(max_length=15, blank=True, null=True)
    groupe = models.TextField(blank=True, null=True)  # This field type is a guess.
    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'seance'


class Semaine(models.Model):
    numsemaine = models.IntegerField(primary_key=True)

    class Meta:
        managed = False
        db_table = 'semaine'


class Ue(models.Model):
    idue = models.TextField(primary_key=True)
    nom = models.TextField(blank=True, null=True)
    quadri = models.IntegerField(blank=True, null=True)
    nbcredit = models.FloatField(blank=True, null=True)
    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'ue'
