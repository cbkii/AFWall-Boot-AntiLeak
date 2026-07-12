.class Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;
.super Ljava/lang/Object;
.source "RootServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/RootServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteServiceRecord"
.end annotation


# instance fields
.field final binder:Landroid/os/IBinder;

.field final host:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

.field final key:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

.field refCount:I


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)V
    .locals 1

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->refCount:I

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->key:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->binder:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->host:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    return-void
.end method
