.class public Lcom/topjohnwu/superuser/internal/RootServiceServer;
.super Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub;
.source "RootServiceServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/topjohnwu/superuser/internal/RootServiceServer$AppObserver;,
        Lcom/topjohnwu/superuser/internal/RootServiceServer$ClientProcess;,
        Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/topjohnwu/superuser/internal/RootServiceServer;


# instance fields
.field private final clients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/topjohnwu/superuser/internal/RootServiceServer$ClientProcess;",
            ">;"
        }
    .end annotation
.end field

.field private final isDaemon:Z

.field private final observer:Landroid/os/FileObserver;

.field private final services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 78
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub;-><init>()V

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->services:Ljava/util/Map;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->clients:Landroid/util/SparseArray;

    const-string v0, "LIBSU_VERBOSE_LOGGING"

    .line 79
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/topjohnwu/superuser/Shell;->enableVerboseLogging:Z

    .line 80
    sput-object p1, Lcom/topjohnwu/superuser/internal/Utils;->context:Landroid/content/Context;

    const-string v0, "LIBSU_DEBUGGER"

    .line 83
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":root"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->setAppName(Ljava/lang/String;)V

    const-string v0, "Waiting for debugger to be attached..."

    const-string v3, "IPC"

    .line 86
    invoke-static {v3, v0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :goto_1
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v4, 0xc8

    .line 91
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :cond_1
    const-string v0, "Debugger attached!"

    .line 94
    invoke-static {v3, v0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_2
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceServer$AppObserver;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v3}, Lcom/topjohnwu/superuser/internal/RootServiceServer$AppObserver;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceServer;Ljava/io/File;)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->observer:Landroid/os/FileObserver;

    .line 98
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 99
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_5

    .line 101
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 102
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->isDaemon:Z

    if-eqz v1, :cond_3

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/RootServerMain;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    :cond_3
    aget-object p1, v0, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->broadcast(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_4

    .line 117
    sget-object p1, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :catch_1
    move-exception p1

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 112
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected Context to be Callable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/topjohnwu/superuser/internal/RootServiceServer;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->exit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/topjohnwu/superuser/internal/RootServiceServer;)Landroid/util/SparseArray;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->clients:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/topjohnwu/superuser/internal/RootServiceServer;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->unbindServices(I)V

    return-void
.end method

.method private bindInternal(ILandroid/content/Intent;)Landroid/os/IBinder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->clients:Landroid/util/SparseArray;

    .line 207
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/topjohnwu/superuser/internal/RootServiceServer$ClientProcess;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 211
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->services:Ljava/util/Map;

    .line 213
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;

    if-nez v2, :cond_1

    .line 215
    sget-object v2, Lcom/topjohnwu/superuser/internal/Utils;->context:Landroid/content/Context;

    .line 216
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 217
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v5, 0x1

    .line 218
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v4, v4, [Ljava/lang/Object;

    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->attachBaseContext(Ljava/lang/Object;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->services:Ljava/util/Map;

    .line 222
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;

    if-nez v2, :cond_1

    return-object v1

    .line 228
    :cond_1
    iget-object v1, v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->binder:Landroid/os/IBinder;

    const-string v3, "IPC"

    if-eqz v1, :cond_2

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rebind"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    iget-boolean p2, v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->rebind:Z

    if-eqz p2, :cond_3

    .line 231
    iget-object p2, v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->service:Lcom/topjohnwu/superuser/ipc/RootService;

    iget-object v0, v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Lcom/topjohnwu/superuser/ipc/RootService;->onRebind(Landroid/content/Intent;)V

    goto :goto_0

    .line 233
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " bind"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    iget-object v0, v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->service:Lcom/topjohnwu/superuser/ipc/RootService;

    invoke-virtual {v0, p2}, Lcom/topjohnwu/superuser/ipc/RootService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->binder:Landroid/os/IBinder;

    .line 235
    invoke-virtual {p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object p2

    iput-object p2, v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->intent:Landroid/content/Intent;

    .line 237
    :cond_3
    :goto_0
    iget-object p2, v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->users:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object p1, v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method private connectInternal(ILandroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->clients:Landroid/util/SparseArray;

    .line 135
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->clients:Landroid/util/SparseArray;

    .line 138
    new-instance v1, Lcom/topjohnwu/superuser/internal/RootServiceServer$ClientProcess;

    invoke-direct {v1, p0, p2, p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer$ClientProcess;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceServer;Landroid/os/IBinder;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object p1, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "IPC"

    .line 141
    invoke-static {p2, p1}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private exit(Ljava/lang/String;)V
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Terminate process: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IPC"

    invoke-static {v0, p1}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 300
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/topjohnwu/superuser/internal/RootServiceServer;
    .locals 1

    sget-object v0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->mInstance:Lcom/topjohnwu/superuser/internal/RootServiceServer;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceServer;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/RootServiceServer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->mInstance:Lcom/topjohnwu/superuser/internal/RootServiceServer;

    :cond_0
    sget-object p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->mInstance:Lcom/topjohnwu/superuser/internal/RootServiceServer;

    return-object p0
.end method

.method private unbindInternal(Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;ILjava/lang/Runnable;)V
    .locals 4

    .line 243
    iget-object v0, p1, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->users:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 244
    iget-object v2, p1, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->users:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-ltz p2, :cond_0

    .line 245
    iget-object v2, p1, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->users:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p1, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->service:Lcom/topjohnwu/superuser/ipc/RootService;

    iget-object v2, p1, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lcom/topjohnwu/superuser/ipc/RootService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->rebind:Z

    :cond_1
    if-ltz p2, :cond_2

    iget-boolean p2, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->isDaemon:Z

    if-nez p2, :cond_4

    .line 250
    :cond_2
    iget-object p2, p1, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->service:Lcom/topjohnwu/superuser/ipc/RootService;

    invoke-virtual {p2}, Lcom/topjohnwu/superuser/ipc/RootService;->onDestroy()V

    .line 251
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 254
    iget-object p2, p1, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->users:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->clients:Landroid/util/SparseArray;

    .line 255
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/topjohnwu/superuser/internal/RootServiceServer$ClientProcess;

    if-nez p3, :cond_3

    goto :goto_0

    .line 258
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 259
    iput v1, v0, Landroid/os/Message;->what:I

    iget-boolean v2, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->isDaemon:Z

    .line 260
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 261
    iget-object v2, p1, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    :try_start_0
    iget-object p3, p3, Lcom/topjohnwu/superuser/internal/RootServiceServer$ClientProcess;->m:Landroid/os/Messenger;

    invoke-virtual {p3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p3

    :try_start_1
    const-string v2, "IPC"

    .line 265
    invoke-static {v2, p3}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 267
    :goto_2
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 268
    throw p1

    :cond_4
    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->services:Ljava/util/Map;

    .line 272
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "No active services"

    .line 273
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->exit(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private unbindService(ILandroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->services:Ljava/util/Map;

    .line 278
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    new-instance v1, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2}, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda6;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceServer;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->unbindInternal(Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;ILjava/lang/Runnable;)V

    return-void
.end method

.method private unbindServices(I)V
    .locals 3

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->services:Ljava/util/Map;

    .line 286
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;

    if-gez p1, :cond_0

    .line 292
    iget-object v2, v1, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;->users:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 294
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda7;-><init>(Ljava/util/Iterator;)V

    invoke-direct {p0, v1, p1, v2}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->unbindInternal(Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/IBinder;

    .line 162
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->getCallingUid()I

    move-result v1

    .line 163
    new-instance v2, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda1;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceServer;[Landroid/os/IBinder;ILandroid/content/Intent;)V

    invoke-static {v2}, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->runAndWait(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public broadcast(I)V
    .locals 3

    .line 148
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->getCallingUid()I

    move-result p1

    .line 149
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "broadcast to uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPC"

    invoke-static {v1, v0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->isDaemon:Z

    .line 150
    invoke-static {p0, v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->getBroadcastIntent(Landroid/os/IBinder;Z)Landroid/content/Intent;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 152
    invoke-static {p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 153
    sget-object v1, Lcom/topjohnwu/superuser/internal/Utils;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 155
    :cond_1
    sget-object p1, Lcom/topjohnwu/superuser/internal/Utils;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public connect(Landroid/os/IBinder;)V
    .locals 2

    .line 130
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->getCallingUid()I

    move-result v0

    .line 131
    new-instance v1, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda4;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceServer;ILandroid/os/IBinder;)V

    invoke-static {v1}, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$bind$1$com-topjohnwu-superuser-internal-RootServiceServer([Landroid/os/IBinder;ILandroid/content/Intent;)V
    .locals 0

    .line 165
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->bindInternal(ILandroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "IPC"

    .line 167
    invoke-static {p2, p1}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$connect$0$com-topjohnwu-superuser-internal-RootServiceServer(ILandroid/os/IBinder;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->connectInternal(ILandroid/os/IBinder;)V

    return-void
.end method

.method synthetic lambda$selfStop$4$com-topjohnwu-superuser-internal-RootServiceServer(Landroid/content/ComponentName;)V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " selfStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPC"

    invoke-static {v1, v0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 197
    invoke-direct {p0, v0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->unbindService(ILandroid/content/ComponentName;)V

    return-void
.end method

.method synthetic lambda$stop$3$com-topjohnwu-superuser-internal-RootServiceServer(Landroid/content/ComponentName;I)V
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPC"

    invoke-static {v1, v0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 188
    invoke-direct {p0, v0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->unbindService(ILandroid/content/ComponentName;)V

    .line 190
    invoke-virtual {p0, p2}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->broadcast(I)V

    return-void
.end method

.method synthetic lambda$unbind$2$com-topjohnwu-superuser-internal-RootServiceServer(Landroid/content/ComponentName;I)V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unbind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPC"

    invoke-static {v1, v0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    invoke-direct {p0, p2, p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->unbindService(ILandroid/content/ComponentName;)V

    return-void
.end method

.method synthetic lambda$unbindService$5$com-topjohnwu-superuser-internal-RootServiceServer(Landroid/content/ComponentName;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->services:Ljava/util/Map;

    .line 281
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Lcom/topjohnwu/superuser/ipc/RootService;)V
    .locals 2

    .line 202
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer$ServiceRecord;-><init>(Lcom/topjohnwu/superuser/ipc/RootService;)V

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->services:Ljava/util/Map;

    .line 203
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/ipc/RootService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer;->clients:Landroid/util/SparseArray;

    .line 123
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "No active clients"

    .line 124
    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->exit(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public selfStop(Landroid/content/ComponentName;)V
    .locals 1

    .line 195
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda3;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceServer;Landroid/content/ComponentName;)V

    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop(Landroid/content/ComponentName;I)V
    .locals 1

    .line 185
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->getCallingUid()I

    move-result p2

    .line 186
    :goto_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda5;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceServer;Landroid/content/ComponentName;I)V

    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unbind(Landroid/content/ComponentName;)V
    .locals 2

    .line 175
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->getCallingUid()I

    move-result v0

    .line 176
    new-instance v1, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0}, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda2;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceServer;Landroid/content/ComponentName;I)V

    invoke-static {v1}, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->run(Ljava/lang/Runnable;)V

    return-void
.end method
