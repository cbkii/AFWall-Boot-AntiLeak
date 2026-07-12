.class public final Lcom/topjohnwu/superuser/internal/NIOFactory;
.super Ljava/lang/Object;
.source "NIOFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFsService()Lcom/topjohnwu/superuser/internal/FileSystemService;
    .locals 1

    .line 124
    new-instance v0, Lcom/topjohnwu/superuser/internal/FileSystemService;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/FileSystemService;-><init>()V

    return-object v0
.end method

.method public static createLocal()Lcom/topjohnwu/superuser/nio/FileSystemManager;
    .locals 1

    .line 47
    new-instance v0, Lcom/topjohnwu/superuser/internal/NIOFactory$1;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/NIOFactory$1;-><init>()V

    return-object v0
.end method

.method public static createRemote(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/nio/FileSystemManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-static {p0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/internal/IFileSystemService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 101
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v0}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->register(Landroid/os/IBinder;)V

    .line 102
    new-instance v0, Lcom/topjohnwu/superuser/internal/NIOFactory$2;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/NIOFactory$2;-><init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;)V

    return-object v0

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The IBinder provided is invalid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
