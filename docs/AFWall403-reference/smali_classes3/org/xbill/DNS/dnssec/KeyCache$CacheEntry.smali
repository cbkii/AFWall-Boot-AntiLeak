.class Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;
.super Ljava/lang/Object;
.source "KeyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/dnssec/KeyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheEntry"
.end annotation


# instance fields
.field private final expiration:Ljava/time/Instant;

.field private final keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

.field final synthetic this$0:Lorg/xbill/DNS/dnssec/KeyCache;


# direct methods
.method constructor <init>(Lorg/xbill/DNS/dnssec/KeyCache;Lorg/xbill/DNS/dnssec/KeyEntry;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;->this$0:Lorg/xbill/DNS/dnssec/KeyCache;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p2}, Lorg/xbill/DNS/dnssec/KeyEntry;->getTTL()J

    move-result-wide v0

    cmp-long v2, v0, p3

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p3, v0

    .line 163
    :goto_0
    invoke-static {p1}, Lorg/xbill/DNS/dnssec/KeyCache;->access$300(Lorg/xbill/DNS/dnssec/KeyCache;)Ljava/time/Clock;

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object p1

    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/time/temporal/ChronoUnit;

    move-result-object v0

    invoke-static {p1, p3, p4, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;->expiration:Ljava/time/Instant;

    iput-object p2, p0, Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    return-void
.end method

.method static synthetic access$100(Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;)Ljava/time/Instant;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;->expiration:Ljava/time/Instant;

    return-object p0
.end method

.method static synthetic access$200(Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;)Lorg/xbill/DNS/dnssec/KeyEntry;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    return-object p0
.end method
