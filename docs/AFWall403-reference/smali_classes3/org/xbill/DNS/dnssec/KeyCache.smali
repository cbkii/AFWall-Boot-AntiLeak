.class final Lorg/xbill/DNS/dnssec/KeyCache;
.super Ljava/lang/Object;
.source "KeyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CACHE_SIZE:I = 0x3e8

.field private static final DEFAULT_MAX_TTL:I = 0x384

.field public static final MAX_CACHE_SIZE_CONFIG:Ljava/lang/String; = "dnsjava.dnssec.keycache.max_size"

.field public static final MAX_TTL_CONFIG:Ljava/lang/String; = "dnsjava.dnssec.keycache.max_ttl"


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Ljava/time/Clock;

.field private maxCacheSize:I

.field private maxTtl:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/dnssec/KeyCache;-><init>(Ljava/time/Clock;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Clock;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x384

    iput-wide v0, p0, Lorg/xbill/DNS/dnssec/KeyCache;->maxTtl:J

    const/16 v0, 0x3e8

    iput v0, p0, Lorg/xbill/DNS/dnssec/KeyCache;->maxCacheSize:I

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/KeyCache;->clock:Ljava/time/Clock;

    .line 55
    new-instance p1, Lorg/xbill/DNS/dnssec/KeyCache$1;

    invoke-direct {p1, p0}, Lorg/xbill/DNS/dnssec/KeyCache$1;-><init>(Lorg/xbill/DNS/dnssec/KeyCache;)V

    .line 56
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/KeyCache;->cache:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/dnssec/KeyCache;)I
    .locals 0

    .line 22
    iget p0, p0, Lorg/xbill/DNS/dnssec/KeyCache;->maxCacheSize:I

    return p0
.end method

.method static synthetic access$300(Lorg/xbill/DNS/dnssec/KeyCache;)Ljava/time/Clock;
    .locals 0

    .line 22
    iget-object p0, p0, Lorg/xbill/DNS/dnssec/KeyCache;->clock:Ljava/time/Clock;

    return-object p0
.end method

.method private key(Lorg/xbill/DNS/Name;I)Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "K"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private lookupEntry(Ljava/lang/String;)Lorg/xbill/DNS/dnssec/KeyEntry;
    .locals 4

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/KeyCache;->cache:Ljava/util/Map;

    .line 139
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 144
    :cond_0
    invoke-static {v0}, Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;->access$100(Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;)Ljava/time/Instant;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/dnssec/KeyCache;->clock:Ljava/time/Clock;

    invoke-static {v3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;Ljava/time/Instant;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/KeyCache;->cache:Ljava/util/Map;

    .line 145
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 149
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;->access$200(Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public find(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/dnssec/KeyEntry;
    .locals 2

    .line 101
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    if-lez v0, :cond_1

    .line 102
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/dnssec/KeyCache;->key(Lorg/xbill/DNS/Name;I)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, Lorg/xbill/DNS/dnssec/KeyCache;->lookupEntry(Ljava/lang/String;)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Ljava/util/Properties;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "dnsjava.dnssec.keycache.max_ttl"

    .line 82
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/dnssec/KeyCache;->maxTtl:J

    :cond_1
    const-string v0, "dnsjava.dnssec.keycache.max_size"

    .line 87
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/dnssec/KeyCache;->maxCacheSize:I

    :cond_2
    return-void
.end method

.method public store(Lorg/xbill/DNS/dnssec/KeyEntry;)V
    .locals 4

    .line 121
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->isGood()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->getType()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    return-void

    .line 129
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->getDClass()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/dnssec/KeyCache;->key(Lorg/xbill/DNS/Name;I)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;

    iget-wide v2, p0, Lorg/xbill/DNS/dnssec/KeyCache;->maxTtl:J

    invoke-direct {v1, p0, p1, v2, v3}, Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;-><init>(Lorg/xbill/DNS/dnssec/KeyCache;Lorg/xbill/DNS/dnssec/KeyEntry;J)V

    iget-object p1, p0, Lorg/xbill/DNS/dnssec/KeyCache;->cache:Ljava/util/Map;

    .line 131
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
