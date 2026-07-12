.class public Leu/chainfire/libsuperuser/Application;
.super Landroid/app/Application;
.source "Application.java"


# static fields
.field private static mApplicationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Leu/chainfire/libsuperuser/Application;->mApplicationHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 40
    :cond_0
    instance-of v0, p0, Leu/chainfire/libsuperuser/Application;

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 44
    :cond_1
    instance-of v0, p0, Leu/chainfire/libsuperuser/Application;

    if-eqz v0, :cond_2

    .line 48
    move-object v0, p0

    check-cast v0, Leu/chainfire/libsuperuser/Application;

    new-instance v1, Leu/chainfire/libsuperuser/Application$1;

    invoke-direct {v1, p0, p1}, Leu/chainfire/libsuperuser/Application$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/Application;->runInApplicationThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    :try_start_0
    const-string v0, "android.os.AsyncTask"

    .line 75
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public runInApplicationThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Leu/chainfire/libsuperuser/Application;->mApplicationHandler:Landroid/os/Handler;

    .line 65
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
