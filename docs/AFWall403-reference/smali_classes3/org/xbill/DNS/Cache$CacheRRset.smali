.class Lorg/xbill/DNS/Cache$CacheRRset;
.super Lorg/xbill/DNS/RRset;
.source "Cache.java"

# interfaces
.implements Lorg/xbill/DNS/Cache$Element;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheRRset"
.end annotation


# instance fields
.field credibility:I

.field expire:I

.field isAuthenticated:Z


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/RRset;IJZ)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/RRset;)V

    iput p2, p0, Lorg/xbill/DNS/Cache$CacheRRset;->credibility:I

    .line 65
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide p1

    invoke-static {p1, p2, p3, p4}, Lorg/xbill/DNS/Cache;->access$000(JJ)I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/Cache$CacheRRset;->expire:I

    iput-boolean p5, p0, Lorg/xbill/DNS/Cache$CacheRRset;->isAuthenticated:Z

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Record;IJZ)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lorg/xbill/DNS/RRset;-><init>()V

    iput p2, p0, Lorg/xbill/DNS/Cache$CacheRRset;->credibility:I

    .line 57
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v0

    invoke-static {v0, v1, p3, p4}, Lorg/xbill/DNS/Cache;->access$000(JJ)I

    move-result p2

    iput p2, p0, Lorg/xbill/DNS/Cache$CacheRRset;->expire:I

    iput-boolean p5, p0, Lorg/xbill/DNS/Cache$CacheRRset;->isAuthenticated:Z

    .line 59
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Cache$CacheRRset;->addRR(Lorg/xbill/DNS/Record;)V

    return-void
.end method


# virtual methods
.method public final compareCredibility(I)I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Cache$CacheRRset;->credibility:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final expired()Z
    .locals 4

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lorg/xbill/DNS/Cache$CacheRRset;->expire:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/Cache$CacheRRset;->isAuthenticated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/xbill/DNS/RRset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/xbill/DNS/Cache$CacheRRset;->credibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
