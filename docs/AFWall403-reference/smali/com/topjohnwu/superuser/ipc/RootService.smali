.class public abstract Lcom/topjohnwu/superuser/ipc/RootService;
.super Landroid/content/ContextWrapper;
.source "RootService.java"


# static fields
.field public static final CATEGORY_DAEMON_MODE:Ljava/lang/String; = "com.topjohnwu.superuser.DAEMON_MODE"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static asRunnable(Lcom/topjohnwu/superuser/Shell$Task;)Ljava/lang/Runnable;
    .locals 1

    .line 193
    new-instance v0, Lcom/topjohnwu/superuser/ipc/RootService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/ipc/RootService$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/Shell$Task;)V

    return-object v0
.end method

.method public static bind(Landroid/content/Intent;Landroid/content/ServiceConnection;)V
    .locals 1

    .line 126
    sget-object v0, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0, p1}, Lcom/topjohnwu/superuser/ipc/RootService;->bind(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public static bind(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)V
    .locals 1

    .line 110
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->isRootImpossible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/topjohnwu/superuser/ipc/RootService;->bindOrTask(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lcom/topjohnwu/superuser/Shell$Task;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 114
    sget-object p1, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lcom/topjohnwu/superuser/ipc/RootService;->asRunnable(Lcom/topjohnwu/superuser/Shell$Task;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static bindOrTask(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lcom/topjohnwu/superuser/Shell$Task;
    .locals 1

    .line 146
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->getInstance()Lcom/topjohnwu/superuser/internal/RootServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->createBindTask(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lcom/topjohnwu/superuser/Shell$Task;

    move-result-object p0

    return-object p0
.end method

.method public static createBindTask(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Ljava/lang/Runnable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    invoke-static {p0, p1, p2}, Lcom/topjohnwu/superuser/ipc/RootService;->bindOrTask(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lcom/topjohnwu/superuser/Shell$Task;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 290
    :cond_0
    invoke-static {p0}, Lcom/topjohnwu/superuser/ipc/RootService;->asRunnable(Lcom/topjohnwu/superuser/Shell$Task;)Ljava/lang/Runnable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$asRunnable$0(Lcom/topjohnwu/superuser/Shell$Task;)V
    .locals 2

    .line 195
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v0, p0}, Lcom/topjohnwu/superuser/Shell;->execTask(Lcom/topjohnwu/superuser/Shell$Task;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 200
    invoke-static {p0}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static stop(Landroid/content/Intent;)V
    .locals 1

    .line 171
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->isRootImpossible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-static {p0}, Lcom/topjohnwu/superuser/ipc/RootService;->stopOrTask(Landroid/content/Intent;)Lcom/topjohnwu/superuser/Shell$Task;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 175
    sget-object v0, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lcom/topjohnwu/superuser/ipc/RootService;->asRunnable(Lcom/topjohnwu/superuser/Shell$Task;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static stopOrTask(Landroid/content/Intent;)Lcom/topjohnwu/superuser/Shell$Task;
    .locals 1

    .line 189
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->getInstance()Lcom/topjohnwu/superuser/internal/RootServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->createStopTask(Landroid/content/Intent;)Lcom/topjohnwu/superuser/Shell$Task;

    move-result-object p0

    return-object p0
.end method

.method public static unbind(Landroid/content/ServiceConnection;)V
    .locals 1

    .line 157
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->getInstance()Lcom/topjohnwu/superuser/internal/RootServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->unbind(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 211
    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/Utils;->getContextImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/ipc/RootService;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 212
    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->getInstance(Landroid/content/Context;)Lcom/topjohnwu/superuser/internal/RootServiceServer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->register(Lcom/topjohnwu/superuser/ipc/RootService;)V

    .line 213
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/ipc/RootService;->onCreate()V

    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 240
    sget-object v0, Lcom/topjohnwu/superuser/internal/Utils;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 2

    .line 235
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected onAttach(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p1
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final stopSelf()V
    .locals 2

    .line 274
    invoke-static {p0}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->getInstance(Landroid/content/Context;)Lcom/topjohnwu/superuser/internal/RootServiceServer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/ipc/RootService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->selfStop(Landroid/content/ComponentName;)V

    return-void
.end method
