.class public Lcom/topjohnwu/superuser/internal/RootServiceManager;
.super Ljava/lang/Object;
.source "RootServiceManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;,
        Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;,
        Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;,
        Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;,
        Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;,
        Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;,
        Lcom/topjohnwu/superuser/internal/RootServiceManager$BindTask;
    }
.end annotation


# static fields
.field private static final API_27_DEBUG:Ljava/lang/String; = "-Xrunjdwp:transport=dt_android_adb,suspend=n,server=y -Xcompiler-option --debuggable"

.field private static final API_28_DEBUG:Ljava/lang/String; = "-XjdwpProvider:adbconnection -XjdwpOptions:suspend=n,server=y -Xcompiler-option --debuggable"

.field private static final BUNDLE_BINDER_KEY:Ljava/lang/String; = "binder"

.field private static final DAEMON_EN_ROUTE:I = 0x2

.field static final DEBUG_ENV:Ljava/lang/String; = "LIBSU_DEBUGGER"

.field private static final INTENT_BUNDLE_KEY:Ljava/lang/String; = "extra.bundle"

.field private static final INTENT_DAEMON_KEY:Ljava/lang/String; = "extra.daemon"

.field private static final JVMTI_ERROR:Ljava/lang/String; = " \n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n! Warning: JVMTI agent is enabled. Please enable the !\n! \'Always install with package manager\' option in    !\n! Android Studio. For more details and information,  !\n! check out RootService\'s Javadoc.                   !\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"

.field static final LOGGING_ENV:Ljava/lang/String; = "LIBSU_VERBOSE_LOGGING"

.field static final MSG_STOP:I = 0x1

.field private static final RECEIVER_BROADCAST:Ljava/lang/String; = "com.topjohnwu.superuser.RECEIVER_BROADCAST"

.field private static final RECEIVER_REGISTERED:I = 0x4

.field private static final REMOTE_EN_ROUTE:I = 0x1

.field static final TAG:Ljava/lang/String; = "IPC"

.field private static mInstance:Lcom/topjohnwu/superuser/internal/RootServiceManager;


# instance fields
.field private final connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ServiceConnection;",
            "Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private flags:I

.field private mDaemon:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

.field private mRemote:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

.field private final pendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/topjohnwu/superuser/internal/RootServiceManager$BindTask;",
            ">;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;",
            "Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->pendingTasks:Ljava/util/List;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->services:Ljava/util/Map;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->connections:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mRemote:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    return-object p0
.end method

.method static synthetic access$002(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mRemote:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    return-object p1
.end method

.method static synthetic access$100(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mDaemon:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    return-object p0
.end method

.method static synthetic access$102(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mDaemon:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    return-object p1
.end method

.method static synthetic access$200(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Ljava/util/Map;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->services:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->dropConnections(Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;)V

    return-void
.end method

.method static synthetic access$472(Lcom/topjohnwu/superuser/internal/RootServiceManager;I)I
    .locals 1

    .line 70
    iget v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    return p1
.end method

.method static synthetic access$500(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->pendingTasks:Ljava/util/List;

    return-object p0
.end method

.method private bindInternal(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;
    .locals 6

    .line 248
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->enforceMainThread()V

    .line 251
    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->parseIntent(Landroid/content/Intent;)Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    move-result-object v0

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->services:Ljava/util/Map;

    .line 252
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->connections:Ljava/util/Map;

    .line 254
    new-instance v3, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;

    invoke-direct {v3, v1, p2}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;Ljava/util/concurrent/Executor;)V

    invoke-interface {p1, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget p1, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->refCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->refCount:I

    .line 256
    iget-object p1, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->binder:Landroid/os/IBinder;

    .line 257
    new-instance v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3, v0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda3;-><init>(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v2

    .line 261
    :cond_0
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->isDaemon()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mDaemon:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mRemote:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    .line 266
    :cond_2
    :try_start_0
    iget-object v3, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->mgr:Lcom/topjohnwu/superuser/internal/IRootServiceManager;

    invoke-interface {v3, p1}, Lcom/topjohnwu/superuser/internal/IRootServiceManager;->bind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 268
    new-instance v3, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    invoke-direct {v3, v0, p1, v1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)V

    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->connections:Ljava/util/Map;

    .line 269
    new-instance v5, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;

    invoke-direct {v5, v3, p2}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;Ljava/util/concurrent/Executor;)V

    invoke-interface {v4, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->services:Ljava/util/Map;

    .line 270
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v3, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, p3, v0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda4;-><init>(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;)V

    invoke-interface {p2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt p1, v3, :cond_4

    .line 273
    new-instance p1, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p3, v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda5;-><init>(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    const-string p2, "IPC"

    .line 276
    invoke-static {p2, p1}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->binderDied()V

    return-object v0
.end method

.method private dropConnections(Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;)V
    .locals 4

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->connections:Ljava/util/Map;

    .line 320
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 321
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;

    .line 324
    invoke-virtual {v2}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;->getService()Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;->eval(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;->disconnect(Landroid/content/ServiceConnection;)V

    .line 326
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static enforceMainThread()V
    .locals 2

    .line 121
    invoke-static {}, Lcom/topjohnwu/superuser/ShellUtils;->onMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method can only be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getBroadcastIntent(Landroid/os/IBinder;Z)Landroid/content/Intent;
    .locals 2

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "binder"

    .line 112
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 113
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.topjohnwu.superuser.RECEIVER_BROADCAST"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget v1, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->FLAG_RECEIVER_FROM_SHELL:I

    .line 115
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    const-string v1, "extra.daemon"

    .line 116
    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra.bundle"

    .line 117
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/topjohnwu/superuser/internal/RootServiceManager;
    .locals 1

    sget-object v0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mInstance:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceManager;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;-><init>()V

    sput-object v0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mInstance:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    :cond_0
    sget-object v0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mInstance:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    return-object v0
.end method

.method static synthetic lambda$bindInternal$1(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;)V
    .locals 0

    .line 257
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$bindInternal$2(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;)V
    .locals 0

    .line 271
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$bindInternal$3(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;)V
    .locals 0

    .line 273
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ServiceConnection;Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic lambda$startRootProcess$0(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-static {p0}, Lcom/topjohnwu/superuser/internal/Utils;->hasStartupAgents(Landroid/content/Context;)Z

    move-result p0

    const-string p4, "IPC"

    if-eqz p0, :cond_0

    const-string p0, " \n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n! Warning: JVMTI agent is enabled. Please enable the !\n! \'Always install with package manager\' option in    !\n! Android Studio. For more details and information,  !\n! check out RootService\'s Javadoc.                   !\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"

    .line 172
    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->getDeContext()Landroid/content/Context;

    move-result-object p0

    .line 176
    new-instance p5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "main.jar"

    invoke-direct {p5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 180
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 181
    :try_start_1
    invoke-static {v0, v1}, Lcom/topjohnwu/superuser/internal/Utils;->pump(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 187
    :cond_1
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->vLog()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    const-string v0, "LIBSU_VERBOSE_LOGGING=1 "

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-lt v2, v3, :cond_4

    .line 192
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "LIBSU_DEBUGGER=1 "

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v3, :cond_3

    const-string v2, "-Xrunjdwp:transport=dt_android_adb,suspend=n,server=y -Xcompiler-option --debuggable"

    goto :goto_1

    :cond_3
    const-string v2, "-XjdwpProvider:adbconnection -XjdwpOptions:suspend=n,server=y -Xcompiler-option --debuggable"

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    const-string v3, " -Xnoimage-dex2oat"

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v3, "daemon"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_6

    const-string v3, "start"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 210
    :cond_5
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v6, [Ljava/lang/Object;

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    const v7, 0x186a0

    div-int/2addr p0, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const-string p0, "--nice-name=%s:root:%d"

    .line 210
    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 214
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "--nice-name="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":root:daemon"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    :goto_2
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->isProcess64Bit()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "64"

    goto :goto_3

    :cond_7
    const-string p0, "32"

    :goto_3
    const-string v3, "/system/bin/app_process"

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 226
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v5

    aput-object p5, v7, v4

    aput-object p0, v7, v6

    const/4 p0, 0x3

    aput-object v2, v7, p0

    const/4 p0, 0x4

    aput-object v1, v7, p0

    const/4 p0, 0x5

    .line 230
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, p0

    .line 231
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x6

    aput-object p0, v7, p2

    const/4 p0, 0x7

    aput-object p1, v7, p0

    const-string p0, "(%s CLASSPATH=%s %s %s /system/bin %s com.topjohnwu.superuser.internal.RootServerMain \'%s\' %d %s >/dev/null 2>&1)&"

    .line 226
    invoke-static {v3, p0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 234
    invoke-static {p4, p0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 237
    invoke-virtual {p3, p0}, Ljava/io/OutputStream;->write([B)V

    const/16 p0, 0xa

    .line 238
    invoke-virtual {p3, p0}, Ljava/io/OutputStream;->write(I)V

    .line 239
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    return-void

    :catchall_0
    move-exception p0

    .line 179
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_8

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw p0
.end method

.method private onServiceStopped(Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;)V
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->services:Ljava/util/Map;

    .line 332
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    if-eqz p1, :cond_0

    .line 334
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda7;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;)V

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->dropConnections(Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;)V

    :cond_0
    return-void
.end method

.method private static parseIntent(Landroid/content/Intent;)Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;
    .locals 3

    .line 128
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    const-string v2, "com.topjohnwu.superuser.DAEMON_MODE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    invoke-direct {v1, v0, p0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;-><init>(Landroid/content/ComponentName;Z)V

    return-object v1

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "RootServices outside of the app are not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The intent does not have a component set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private startRootProcess(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Task;
    .locals 7

    .line 151
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 155
    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "com.topjohnwu.superuser.RECEIVER_BROADCAST"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 160
    new-instance v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;

    invoke-direct {v1, p0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager;)V

    const-string v3, "android.permission.BROADCAST_PACKAGE_REMOVED"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    .line 164
    :cond_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager;)V

    const-string v1, "android.permission.BROADCAST_PACKAGE_REMOVED"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_0
    iget v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    .line 170
    :cond_1
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, v6, p2, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V

    return-object v0
.end method


# virtual methods
.method public createBindTask(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lcom/topjohnwu/superuser/Shell$Task;
    .locals 3

    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->bindInternal(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->pendingTasks:Ljava/util/List;

    .line 287
    new-instance v2, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda6;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->isDaemon()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget p2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    and-int p3, p2, p1

    if-nez p3, :cond_2

    or-int/2addr p1, p2

    iput p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    .line 291
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->isDaemon()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "daemon"

    goto :goto_1

    :cond_1
    const-string p1, "start"

    .line 292
    :goto_1
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->startRootProcess(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Task;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public createStopTask(Landroid/content/Intent;)Lcom/topjohnwu/superuser/Shell$Task;
    .locals 4

    .line 338
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->enforceMainThread()V

    .line 340
    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->parseIntent(Landroid/content/Intent;)Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mDaemon:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mRemote:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 343
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object p1

    const-string v0, "stop"

    invoke-direct {p0, p1, v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->startRootProcess(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Task;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    .line 351
    :cond_2
    :try_start_0
    iget-object v0, v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->mgr:Lcom/topjohnwu/superuser/internal/IRootServiceManager;

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Lcom/topjohnwu/superuser/internal/IRootServiceManager;->stop(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "IPC"

    .line 353
    invoke-static {v2, v0}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    :goto_1
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->onServiceStopped(Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;)V

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 362
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 363
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v3, v2}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;-><init>(Landroid/content/ComponentName;Z)V

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->onServiceStopped(Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;)V

    :cond_1
    return v1
.end method

.method synthetic lambda$createBindTask$4$com-topjohnwu-superuser-internal-RootServiceManager(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .locals 0

    .line 287
    invoke-direct {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->bindInternal(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public unbind(Landroid/content/ServiceConnection;)V
    .locals 4

    .line 299
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->enforceMainThread()V

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->connections:Ljava/util/Map;

    .line 301
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;->getService()Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    move-result-object v1

    .line 304
    iget v2, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->refCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->refCount:I

    .line 305
    iget v2, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->refCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->services:Ljava/util/Map;

    .line 307
    iget-object v3, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->key:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :try_start_0
    iget-object v2, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->host:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    iget-object v2, v2, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->mgr:Lcom/topjohnwu/superuser/internal/IRootServiceManager;

    iget-object v1, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->key:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    invoke-virtual {v1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/topjohnwu/superuser/internal/IRootServiceManager;->unbind(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "IPC"

    .line 311
    invoke-static {v2, v1}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;->disconnect(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method
