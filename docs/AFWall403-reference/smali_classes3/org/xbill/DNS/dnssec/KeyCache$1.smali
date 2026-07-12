.class Lorg/xbill/DNS/dnssec/KeyCache$1;
.super Ljava/util/LinkedHashMap;
.source "KeyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xbill/DNS/dnssec/KeyCache;-><init>(Ljava/time/Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xbill/DNS/dnssec/KeyCache;


# direct methods
.method constructor <init>(Lorg/xbill/DNS/dnssec/KeyCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/KeyCache$1;->this$0:Lorg/xbill/DNS/dnssec/KeyCache;

    .line 57
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lorg/xbill/DNS/dnssec/KeyCache$CacheEntry;",
            ">;)Z"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/KeyCache$1;->size()I

    move-result p1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/KeyCache$1;->this$0:Lorg/xbill/DNS/dnssec/KeyCache;

    invoke-static {v0}, Lorg/xbill/DNS/dnssec/KeyCache;->access$000(Lorg/xbill/DNS/dnssec/KeyCache;)I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
