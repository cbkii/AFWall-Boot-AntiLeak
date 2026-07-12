.class public abstract Lorg/xbill/DNS/config/BaseResolverConfigProvider;
.super Ljava/lang/Object;
.source "BaseResolverConfigProvider.java"

# interfaces
.implements Lorg/xbill/DNS/config/ResolverConfigProvider;


# static fields
.field private static final ipv4only:Z

.field private static final ipv6first:Z


# instance fields
.field protected final log:Lorg/slf4j/Logger;

.field private final nameservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field protected final searchlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "java.net.preferIPv4Stack"

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->ipv4only:Z

    const-string v0, "java.net.preferIPv6Addresses"

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->ipv6first:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->nameservers:Ljava/util/List;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->log:Lorg/slf4j/Logger;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->searchlist:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$servers$0(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I
    .locals 0

    .line 98
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    array-length p0, p0

    .line 97
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$servers$1(Ljava/net/InetSocketAddress;)Z
    .locals 0

    .line 103
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet4Address;

    return p0
.end method


# virtual methods
.method protected addNameserver(Ljava/net/InetSocketAddress;)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->nameservers:Ljava/util/List;

    .line 63
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->nameservers:Ljava/util/List;

    .line 64
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->log:Lorg/slf4j/Logger;

    const-string v1, "Added {} to nameservers"

    .line 65
    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected addSearchPath(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    :try_start_0
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->searchlist:Ljava/util/List;

    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->searchlist:Ljava/util/List;

    .line 54
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->log:Lorg/slf4j/Logger;

    const-string v2, "Added {} to search paths"

    .line 55
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->log:Lorg/slf4j/Logger;

    const-string v1, "Could not parse search path {} as a dns name, ignoring"

    .line 58
    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic isEnabled()Z
    .locals 1

    invoke-static {p0}, Lorg/xbill/DNS/config/ResolverConfigProvider$-CC;->$default$isEnabled(Lorg/xbill/DNS/config/ResolverConfigProvider;)Z

    move-result v0

    return v0
.end method

.method public synthetic ndots()I
    .locals 1

    invoke-static {p0}, Lorg/xbill/DNS/config/ResolverConfigProvider$-CC;->$default$ndots(Lorg/xbill/DNS/config/ResolverConfigProvider;)I

    move-result v0

    return v0
.end method

.method protected parseNdots(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_1

    const/16 v0, 0xf

    if-le p1, v0, :cond_0

    const/16 p1, 0xf

    :cond_0
    return p1

    :catch_0
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected parseSearchPathList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 39
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->addSearchPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final reset()V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->nameservers:Ljava/util/List;

    .line 33
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->searchlist:Ljava/util/List;

    .line 34
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final searchPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->searchlist:Ljava/util/List;

    .line 113
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final servers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->ipv6first:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->nameservers:Ljava/util/List;

    .line 94
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/config/BaseResolverConfigProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/xbill/DNS/config/BaseResolverConfigProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 95
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 99
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    sget-boolean v0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->ipv4only:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->nameservers:Ljava/util/List;

    .line 102
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/config/BaseResolverConfigProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/xbill/DNS/config/BaseResolverConfigProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 103
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 104
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/config/BaseResolverConfigProvider;->nameservers:Ljava/util/List;

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
