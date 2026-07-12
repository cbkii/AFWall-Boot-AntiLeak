.class public Leu/chainfire/libsuperuser/Shell$Pool;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;
    }
.end annotation


# static fields
.field public static final SH:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

.field public static final SU:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

.field public static final defaultOnNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

.field private static onNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

.field private static pool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Leu/chainfire/libsuperuser/Shell$Threaded;",
            ">;>;"
        }
    .end annotation
.end field

.field private static poolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3025
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Pool$1;

    invoke-direct {v0}, Leu/chainfire/libsuperuser/Shell$Pool$1;-><init>()V

    sput-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->defaultOnNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->onNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

    .line 3037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    const/4 v0, 0x4

    sput v0, Leu/chainfire/libsuperuser/Shell$Pool;->poolSize:I

    const-string v0, "sh"

    .line 3339
    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Pool;->getWrapper(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    move-result-object v0

    sput-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->SH:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    const-string v0, "su"

    .line 3344
    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Pool;->getWrapper(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    move-result-object v0

    sput-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->SU:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$4600(Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 0

    .line 3007
    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Pool;->releaseReservation(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    return-void
.end method

.method static synthetic access$4700(Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 0

    .line 3007
    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Pool;->removeShell(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    return-void
.end method

.method private static cleanup(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    .locals 13

    sget-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    .line 3141
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_9

    aget-object v5, v0, v3

    sget-object v6, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    .line 3142
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3144
    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$SU;->isSU(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget v7, Leu/chainfire/libsuperuser/Shell$Pool;->poolSize:I

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    .line 3148
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ltz v8, :cond_5

    .line 3149
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 3150
    invoke-virtual {v11}, Leu/chainfire/libsuperuser/Shell$Threaded;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_2

    if-eq v11, p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 3156
    invoke-static {v11}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5000(Leu/chainfire/libsuperuser/Shell$Threaded;)Z

    move-result v11

    if-nez v11, :cond_4

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_2
    :goto_3
    if-eqz p1, :cond_3

    .line 3151
    invoke-virtual {v11}, Leu/chainfire/libsuperuser/Shell$Threaded;->closeWhenIdle()V

    :cond_3
    const-string v11, "shell removed"

    .line 3152
    invoke-static {v11}, Leu/chainfire/libsuperuser/Debug;->logPool(Ljava/lang/String;)V

    .line 3153
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_5
    if-le v9, v7, :cond_7

    if-le v10, v4, :cond_7

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v9, v7

    .line 3163
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3164
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    :goto_5
    if-ltz v8, :cond_7

    .line 3165
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 3166
    invoke-static {v9}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5000(Leu/chainfire/libsuperuser/Shell$Threaded;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v9}, Leu/chainfire/libsuperuser/Shell$Threaded;->isIdle()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3167
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v10, "shell killed"

    .line 3168
    invoke-static {v10}, Leu/chainfire/libsuperuser/Debug;->logPool(Ljava/lang/String;)V

    .line 3170
    invoke-static {v9, v4}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5100(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V

    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 3178
    :cond_7
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    .line 3179
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 3183
    :cond_9
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    .line 3184
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    .line 3186
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3187
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_b

    .line 3188
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/chainfire/libsuperuser/Shell$Threaded;

    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5000(Leu/chainfire/libsuperuser/Shell$Threaded;)Z

    move-result v5

    if-eqz v5, :cond_a

    add-int/lit8 v3, v3, 0x1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3190
    :cond_b
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    const/4 p1, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, p1

    const-string p1, "cleanup: shell:%s count:%d reserved:%d"

    invoke-static {v2, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leu/chainfire/libsuperuser/Debug;->logPool(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    return-void
.end method

.method public static declared-synchronized closeAll()V
    .locals 3

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3315
    :try_start_0
    invoke-static {v1, v2}, Leu/chainfire/libsuperuser/Shell$Pool;->cleanup(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3316
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static get(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3212
    invoke-static {p0, v0}, Leu/chainfire/libsuperuser/Shell$Pool;->get(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 3234
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Leu/chainfire/libsuperuser/Shell$Pool;

    .line 3236
    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3237
    :try_start_0
    invoke-static {v3, v2}, Leu/chainfire/libsuperuser/Shell$Pool;->cleanup(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V

    sget-object v2, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    .line 3240
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 3242
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 3243
    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5000(Leu/chainfire/libsuperuser/Shell$Threaded;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3245
    invoke-static {v5, v4}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5200(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 3250
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_8

    .line 3254
    invoke-static {p0, p1, v4}, Leu/chainfire/libsuperuser/Shell$Pool;->newInstance(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v5

    .line 3255
    invoke-virtual {v5}, Leu/chainfire/libsuperuser/Shell$Threaded;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 3258
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->onMainThread()Z

    move-result p0

    if-nez p0, :cond_3

    .line 3259
    :cond_2
    invoke-virtual {v5, v3}, Leu/chainfire/libsuperuser/Shell$Threaded;->waitForOpened(Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_3
    const-class p0, Leu/chainfire/libsuperuser/Shell$Pool;

    .line 3265
    monitor-enter p0

    .line 3266
    :try_start_1
    invoke-virtual {v5}, Leu/chainfire/libsuperuser/Shell$Threaded;->wasPoolRemoveCalled()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    .line 3267
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    .line 3268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p1, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    .line 3270
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3272
    :cond_5
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 3260
    :cond_6
    new-instance p0, Leu/chainfire/libsuperuser/Shell$ShellDiedException;

    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$ShellDiedException;-><init>()V

    throw p0

    .line 3256
    :cond_7
    new-instance p0, Leu/chainfire/libsuperuser/Shell$ShellDiedException;

    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$ShellDiedException;-><init>()V

    throw p0

    :cond_8
    if-eqz p1, :cond_9

    .line 3277
    invoke-virtual {v5}, Leu/chainfire/libsuperuser/Shell$Threaded;->startCallback()V

    .line 3278
    iget-object p0, v5, Leu/chainfire/libsuperuser/Shell$Threaded;->handler:Landroid/os/Handler;

    new-instance v0, Leu/chainfire/libsuperuser/Shell$Pool$2;

    invoke-direct {v0, p1, v5}, Leu/chainfire/libsuperuser/Shell$Pool$2;-><init>(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Leu/chainfire/libsuperuser/Shell$Threaded;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_1
    return-object v5

    :catchall_1
    move-exception p0

    .line 3250
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static declared-synchronized getOnNewBuilderListener()Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;
    .locals 2

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    :try_start_0
    sget-object v1, Leu/chainfire/libsuperuser/Shell$Pool;->onNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3047
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPoolSize()I
    .locals 2

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    :try_start_0
    sget v1, Leu/chainfire/libsuperuser/Shell$Pool;->poolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3072
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getUnpooled(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1

    const/4 v0, 0x0

    .line 3112
    invoke-static {p0, v0}, Leu/chainfire/libsuperuser/Shell$Pool;->getUnpooled(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object p0

    return-object p0
.end method

.method public static getUnpooled(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3126
    invoke-static {p0, p1, v0}, Leu/chainfire/libsuperuser/Shell$Pool;->newInstance(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object p0

    return-object p0
.end method

.method public static getWrapper(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$PoolWrapper;
    .locals 2

    .line 3327
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->SH:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    if-eqz v0, :cond_0

    return-object v0

    .line 3329
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->SU:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    if-eqz v0, :cond_1

    return-object v0

    .line 3332
    :cond_1
    new-instance v0, Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    invoke-direct {v0, p0}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static newBuilder()Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    .line 3096
    monitor-enter v0

    :try_start_0
    sget-object v1, Leu/chainfire/libsuperuser/Shell$Pool;->onNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

    if-eqz v1, :cond_0

    .line 3098
    invoke-interface {v1}, Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;->newBuilder()Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    sget-object v1, Leu/chainfire/libsuperuser/Shell$Pool;->defaultOnNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

    .line 3100
    invoke-interface {v1}, Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;->newBuilder()Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static newInstance(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 4

    .line 3130
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "newInstance(shell:%s, pooled:%d)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->logPool(Ljava/lang/String;)V

    .line 3131
    invoke-static {}, Leu/chainfire/libsuperuser/Shell$Pool;->newBuilder()Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Leu/chainfire/libsuperuser/Shell$Builder;->setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object p0

    invoke-static {p0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Builder;->access$4900(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object p0

    return-object p0
.end method

.method private static releaseReservation(Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 1

    const-string v0, "releaseReservation"

    .line 3298
    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->logPool(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3299
    invoke-static {p0, v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5200(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V

    const/4 p0, 0x0

    .line 3300
    invoke-static {p0, v0}, Leu/chainfire/libsuperuser/Shell$Pool;->cleanup(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V

    return-void
.end method

.method private static declared-synchronized removeShell(Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 2

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    :try_start_0
    const-string v1, "removeShell"

    .line 3307
    invoke-static {v1}, Leu/chainfire/libsuperuser/Debug;->logPool(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3308
    invoke-static {p0, v1}, Leu/chainfire/libsuperuser/Shell$Pool;->cleanup(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3309
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setOnNewBuilderListener(Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;)V
    .locals 1

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    :try_start_0
    sput-object p0, Leu/chainfire/libsuperuser/Shell$Pool;->onNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3057
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setPoolSize(I)V
    .locals 2

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3088
    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sget v1, Leu/chainfire/libsuperuser/Shell$Pool;->poolSize:I

    if-eq p0, v1, :cond_0

    sput p0, Leu/chainfire/libsuperuser/Shell$Pool;->poolSize:I

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 3091
    invoke-static {p0, v1}, Leu/chainfire/libsuperuser/Shell$Pool;->cleanup(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3093
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
