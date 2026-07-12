.class Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;
.super Ljava/lang/Object;
.source "UidResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/UidResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation


# instance fields
.field final method:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

.field final name:Ljava/lang/String;

.field final timestamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;)V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;->name:Ljava/lang/String;

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;->timestamp:J

    iput-object p2, p0, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;->method:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    return-void
.end method


# virtual methods
.method isExpired()Z
    .locals 5

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;->timestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
