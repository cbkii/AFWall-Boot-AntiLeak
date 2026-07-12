.class public final Lorg/xbill/DNS/ResolverConfig;
.super Ljava/lang/Object;
.source "ResolverConfig.java"


# static fields
.field public static final CONFIGPROVIDER_SKIP_INIT:Ljava/lang/String; = "dnsjava.configprovider.skipinit"

.field private static configProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/config/ResolverConfigProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static currentConfig:Lorg/xbill/DNS/ResolverConfig;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private ndots:I

.field private final searchlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation
.end field

.field private final servers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/ResolverConfig;

    .line 45
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ResolverConfig;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    const-class v0, Lorg/xbill/DNS/ResolverConfig;

    .line 97
    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;

    const-string v1, "dnsjava.configprovider.skipinit"

    .line 100
    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;

    .line 101
    new-instance v2, Lorg/xbill/DNS/config/PropertyResolverConfigProvider;

    invoke-direct {v2}, Lorg/xbill/DNS/config/PropertyResolverConfigProvider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;

    .line 102
    new-instance v2, Lorg/xbill/DNS/config/ResolvConfResolverConfigProvider;

    invoke-direct {v2}, Lorg/xbill/DNS/config/ResolvConfResolverConfigProvider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;

    .line 103
    new-instance v2, Lorg/xbill/DNS/config/WindowsResolverConfigProvider;

    invoke-direct {v2}, Lorg/xbill/DNS/config/WindowsResolverConfigProvider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;

    .line 104
    new-instance v2, Lorg/xbill/DNS/config/AndroidResolverConfigProvider;

    invoke-direct {v2}, Lorg/xbill/DNS/config/AndroidResolverConfigProvider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;

    .line 105
    new-instance v2, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider;

    invoke-direct {v2}, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;

    .line 106
    new-instance v2, Lorg/xbill/DNS/config/SunJvmResolverConfigProvider;

    invoke-direct {v2}, Lorg/xbill/DNS/config/SunJvmResolverConfigProvider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;

    .line 107
    new-instance v2, Lorg/xbill/DNS/config/FallbackPropertyResolverConfigProvider;

    invoke-direct {v2}, Lorg/xbill/DNS/config/FallbackPropertyResolverConfigProvider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/config/ResolverConfigProvider;

    .line 113
    invoke-interface {v1}, Lorg/xbill/DNS/config/ResolverConfigProvider;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :try_start_1
    invoke-interface {v1}, Lorg/xbill/DNS/config/ResolverConfigProvider;->initialize()V

    iget-object v2, p0, Lorg/xbill/DNS/ResolverConfig;->servers:Ljava/util/List;

    .line 116
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/xbill/DNS/ResolverConfig;->servers:Ljava/util/List;

    .line 117
    invoke-interface {v1}, Lorg/xbill/DNS/config/ResolverConfigProvider;->servers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v2, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:Ljava/util/List;

    .line 120
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    invoke-interface {v1}, Lorg/xbill/DNS/config/ResolverConfigProvider;->searchPaths()Ljava/util/List;

    move-result-object v2

    .line 122
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:Ljava/util/List;

    .line 123
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    invoke-interface {v1}, Lorg/xbill/DNS/config/ResolverConfigProvider;->ndots()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    :cond_3
    iget-object v1, p0, Lorg/xbill/DNS/ResolverConfig;->servers:Ljava/util/List;

    .line 128
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catch Lorg/xbill/DNS/config/InitializationException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_1

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lorg/xbill/DNS/ResolverConfig;->log:Lorg/slf4j/Logger;

    const-string v3, "Failed to initialize provider"

    .line 133
    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:Ljava/util/List;

    .line 138
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:Ljava/util/List;

    .line 139
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 140
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0x35

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 110
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static checkInitialized()V
    .locals 1

    sget-object v0, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;

    if-nez v0, :cond_1

    .line 63
    :cond_0
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->refresh()V

    :cond_1
    return-void
.end method

.method public static declared-synchronized getConfigProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/config/ResolverConfigProvider;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/xbill/DNS/ResolverConfig;

    monitor-enter v0

    .line 79
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->checkInitialized()V

    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;

    .line 80
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;
    .locals 2

    const-class v0, Lorg/xbill/DNS/ResolverConfig;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->checkInitialized()V

    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static refresh()V
    .locals 2

    .line 90
    new-instance v0, Lorg/xbill/DNS/ResolverConfig;

    invoke-direct {v0}, Lorg/xbill/DNS/ResolverConfig;-><init>()V

    const-class v1, Lorg/xbill/DNS/ResolverConfig;

    .line 91
    monitor-enter v1

    :try_start_0
    sput-object v0, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;

    .line 93
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized setConfigProviders(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/config/ResolverConfigProvider;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lorg/xbill/DNS/ResolverConfig;

    monitor-enter v0

    .line 85
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lorg/xbill/DNS/ResolverConfig;->configProviders:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public ndots()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    return v0
.end method

.method public searchPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:Ljava/util/List;

    return-object v0
.end method

.method public server()Ljava/net/InetSocketAddress;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:Ljava/util/List;

    const/4 v1, 0x0

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public servers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:Ljava/util/List;

    return-object v0
.end method
