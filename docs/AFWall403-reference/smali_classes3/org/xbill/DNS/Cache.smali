.class public Lorg/xbill/DNS/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Cache$CacheMap;,
        Lorg/xbill/DNS/Cache$Element;,
        Lorg/xbill/DNS/Cache$CacheRRset;,
        Lorg/xbill/DNS/Cache$NegativeElement;
    }
.end annotation


# static fields
.field private static final defaultMaxEntries:I = 0xc350

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final data:Lorg/xbill/DNS/Cache$CacheMap;

.field private final dclass:I

.field private maxcache:I

.field private maxncache:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/Cache;

    .line 26
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/Cache;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 197
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    iput v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    iput p1, p0, Lorg/xbill/DNS/Cache;->dclass:I

    .line 188
    new-instance p1, Lorg/xbill/DNS/Cache$CacheMap;

    const v0, 0xc350

    invoke-direct {p1, v0}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object p1, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Cache;-><init>(Lorg/xbill/DNS/Master;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Master;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Cache;-><init>(Lorg/xbill/DNS/Master;)V

    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/Master;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xbill/DNS/Master;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lorg/xbill/DNS/Cache;-><init>()V

    .line 218
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Cache;->addRecord(Lorg/xbill/DNS/Record;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Master;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Master;->close()V

    .line 223
    throw v0
.end method

.method static synthetic access$000(JJ)I
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->limitExpire(JJ)I

    move-result p0

    return p0
.end method

.method private declared-synchronized addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 289
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 291
    invoke-virtual {v0, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 294
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    .line 295
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 297
    check-cast v0, Ljava/util/List;

    const/4 p1, 0x0

    .line 298
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 299
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Cache$Element;

    .line 300
    invoke-interface {v2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 301
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 305
    :cond_2
    :try_start_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    :cond_3
    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    .line 308
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 309
    invoke-virtual {v0, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 311
    :cond_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 312
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 314
    invoke-virtual {p2, p1, v1}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;IZ)V
    .locals 13

    move-object v1, p0

    move-object v0, p1

    move/from16 v6, p4

    monitor-enter p0

    const-wide/16 v2, 0x0

    if-eqz p3, :cond_0

    .line 447
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lorg/xbill/DNS/SOARecord;->getMinimum()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Lorg/xbill/DNS/SOARecord;->getTTL()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const/4 v7, 0x0

    move v8, p2

    .line 449
    invoke-direct {p0, p1, p2, v7}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v7

    cmp-long v9, v4, v2

    if-nez v9, :cond_1

    if-eqz v7, :cond_3

    .line 451
    invoke-interface {v7, v6}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v2

    if-gtz v2, :cond_3

    .line 452
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    .line 455
    invoke-interface {v7, v6}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v2

    if-gtz v2, :cond_2

    const/4 v7, 0x0

    :cond_2
    if-nez v7, :cond_3

    .line 459
    new-instance v10, Lorg/xbill/DNS/Cache$NegativeElement;

    iget v2, v1, Lorg/xbill/DNS/Cache;->maxncache:I

    int-to-long v11, v2

    move-object v2, v10

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-wide v7, v11

    move/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lorg/xbill/DNS/Cache$NegativeElement;-><init>(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;IJZ)V

    invoke-direct {p0, p1, v10}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addRRset(Lorg/xbill/DNS/RRset;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/xbill/DNS/Record;",
            ">(",
            "Lorg/xbill/DNS/RRset;",
            "IZ)V"
        }
    .end annotation

    monitor-enter p0

    .line 406
    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v0

    .line 407
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 408
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    const/4 v4, 0x0

    .line 409
    invoke-direct {p0, v2, v3, v4}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_0

    if-eqz v4, :cond_3

    .line 411
    invoke-interface {v4, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result p1

    if-gtz p1, :cond_3

    .line 412
    invoke-direct {p0, v2, v3}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 415
    invoke-interface {v4, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v4, 0x0

    :cond_1
    if-nez v4, :cond_3

    .line 420
    instance-of v0, p1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v0, :cond_2

    .line 421
    check-cast p1, Lorg/xbill/DNS/Cache$CacheRRset;

    goto :goto_0

    .line 423
    :cond_2
    new-instance v0, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v6, v1

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/RRset;IJZ)V

    move-object p1, v0

    .line 425
    :goto_0
    invoke-direct {p0, v2, p1}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized addRecord(Lorg/xbill/DNS/Record;IZ)V
    .locals 7

    monitor-enter p0

    .line 376
    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 377
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    .line 378
    invoke-static {v1}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 379
    monitor-exit p0

    return-void

    .line 381
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, v1, p2}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    if-nez v0, :cond_1

    .line 383
    new-instance v0, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v4, v1

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/Record;IJZ)V

    .line 384
    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;IZ)V

    goto :goto_0

    .line 385
    :cond_1
    invoke-interface {v0, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result p2

    if-nez p2, :cond_2

    .line 386
    instance-of p2, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz p2, :cond_2

    .line 387
    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    .line 388
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheRRset;->addRR(Lorg/xbill/DNS/Record;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;
    .locals 2

    monitor-enter p0

    .line 235
    :try_start_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 237
    check-cast p1, Ljava/util/List;

    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 239
    new-array v0, v0, [Lorg/xbill/DNS/Cache$Element;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/xbill/DNS/Cache$Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 241
    :cond_0
    :try_start_1
    check-cast p1, Lorg/xbill/DNS/Cache$Element;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/xbill/DNS/Cache$Element;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 227
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;
    .locals 1

    monitor-enter p0

    .line 281
    :try_start_0
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 283
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 285
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private findRecords(Lorg/xbill/DNS/Name;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "II)",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation

    .line 570
    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    .line 571
    invoke-virtual {p1}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 572
    invoke-virtual {p1}, Lorg/xbill/DNS/SetResponse;->answers()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCred(IZ)I
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    if-eqz p2, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    if-ne p1, v1, :cond_4

    return v2

    .line 620
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getCred: invalid section"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static limitExpire(JJ)I
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    cmp-long v2, p2, p0

    if-gez v2, :cond_0

    move-wide p0, p2

    .line 43
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v2, 0x3e8

    div-long/2addr p2, v2

    add-long/2addr p2, p0

    cmp-long p0, p2, v0

    if-ltz p0, :cond_2

    const-wide/32 p0, 0x7fffffff

    cmp-long v0, p2, p0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const p0, 0x7fffffff

    return p0
.end method

.method private static markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/RRset;",
            "Ljava/util/Set<",
            "Lorg/xbill/DNS/Name;",
            ">;)V"
        }
    .end annotation

    .line 625
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 630
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 631
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 633
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private declared-synchronized oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;
    .locals 3

    monitor-enter p0

    const/16 v0, 0xff

    if-eq p3, v0, :cond_6

    .line 252
    :try_start_0
    instance-of v0, p2, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 254
    check-cast p2, Ljava/util/List;

    .line 255
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    .line 256
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v2

    if-ne v2, p3, :cond_0

    goto :goto_0

    .line 262
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    .line 263
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 268
    monitor-exit p0

    return-object v1

    .line 270
    :cond_3
    :try_start_1
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 271
    invoke-direct {p0, p1, p3}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    monitor-exit p0

    return-object v1

    .line 274
    :cond_4
    :try_start_2
    invoke-interface {v0, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez p1, :cond_5

    .line 275
    monitor-exit p0

    return-object v1

    .line 277
    :cond_5
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 250
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "oneElement(ANY)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeElement(Lorg/xbill/DNS/Name;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 320
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 322
    monitor-exit p0

    return-void

    .line 324
    :cond_0
    :try_start_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 326
    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 327
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 328
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Cache$Element;

    .line 329
    invoke-interface {v2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 330
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 331
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 332
    invoke-virtual {p2, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    :cond_3
    :try_start_2
    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    .line 339
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v0, p2, :cond_4

    .line 340
    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    iget-object p2, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 342
    invoke-virtual {p2, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeName(Lorg/xbill/DNS/Name;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 231
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 648
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v8

    .line 649
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v9

    .line 650
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 656
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v10

    const/4 v11, 0x3

    const/4 v2, 0x0

    if-eqz v10, :cond_0

    if-ne v10, v11, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    return-object v2

    .line 666
    :cond_2
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 667
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v4

    .line 668
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v0

    .line 672
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const/4 v13, 0x1

    .line 674
    invoke-virtual {v7, v13}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v5

    move-object/from16 v16, v2

    move-object v15, v3

    const/4 v2, 0x0

    const/16 v17, 0x0

    .line 675
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v2, v14, :cond_d

    .line 676
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/xbill/DNS/RRset;

    .line 677
    invoke-virtual {v14}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v11

    if-eq v11, v0, :cond_3

    move/from16 v18, v0

    goto :goto_1

    .line 680
    :cond_3
    invoke-virtual {v14}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v11

    .line 681
    invoke-virtual {v14}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    move/from16 v18, v0

    .line 682
    invoke-direct {v6, v13, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v0

    if-eq v11, v4, :cond_4

    const/16 v13, 0xff

    if-ne v4, v13, :cond_7

    .line 683
    :cond_4
    invoke-virtual {v1, v15}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 684
    invoke-direct {v6, v14, v0, v9}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;IZ)V

    if-ne v15, v3, :cond_6

    if-nez v16, :cond_5

    .line 688
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;)Lorg/xbill/DNS/SetResponse;

    move-result-object v16

    :cond_5
    move-object/from16 v0, v16

    .line 690
    invoke-virtual {v0, v14}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    move-object/from16 v16, v0

    .line 692
    :cond_6
    invoke-static {v14, v12}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    const/4 v13, 0x5

    const/16 v17, 0x1

    goto :goto_2

    :cond_7
    const/16 v13, 0x27

    if-ne v11, v13, :cond_a

    .line 693
    invoke-virtual {v15, v1}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 695
    invoke-direct {v6, v14, v0, v9}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;IZ)V

    if-ne v15, v3, :cond_8

    .line 697
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->DNAME:Lorg/xbill/DNS/SetResponseType;

    invoke-static {v0, v14, v9}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)Lorg/xbill/DNS/SetResponse;

    move-result-object v16

    :cond_8
    add-int/lit8 v0, v2, 0x1

    .line 700
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 701
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    .line 702
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    const/4 v11, 0x5

    if-ne v1, v11, :cond_9

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0, v15}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_1
    const/4 v13, 0x5

    goto :goto_2

    .line 709
    :cond_9
    invoke-virtual {v14}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/DNAMERecord;

    .line 711
    :try_start_0
    invoke-virtual {v15, v0}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v15
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_a
    const/4 v13, 0x5

    if-ne v11, v13, :cond_c

    .line 715
    invoke-virtual {v1, v15}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 717
    invoke-direct {v6, v14, v0, v9}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;IZ)V

    if-ne v15, v3, :cond_b

    .line 719
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->CNAME:Lorg/xbill/DNS/SetResponseType;

    invoke-static {v0, v14, v9}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)Lorg/xbill/DNS/SetResponse;

    move-result-object v16

    .line 721
    :cond_b
    invoke-virtual {v14}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/CNAMERecord;

    .line 722
    invoke-virtual {v0}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v15

    :cond_c
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v18

    const/4 v1, 0x5

    const/4 v11, 0x3

    const/4 v13, 0x1

    goto/16 :goto_0

    :catch_0
    :cond_d
    const/4 v11, 0x2

    .line 726
    invoke-virtual {v7, v11}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v0

    .line 729
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_e
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/RRset;

    .line 730
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v5

    const/4 v13, 0x6

    if-ne v5, v13, :cond_f

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    invoke-virtual {v15, v5}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object v2, v3

    goto :goto_3

    .line 732
    :cond_f
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v5

    if-ne v5, v11, :cond_e

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    invoke-virtual {v15, v5}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object v1, v3

    goto :goto_3

    :cond_10
    if-nez v17, :cond_16

    const/4 v0, 0x3

    if-ne v10, v0, :cond_11

    const/4 v4, 0x0

    :cond_11
    if-eq v10, v0, :cond_13

    if-nez v2, :cond_13

    if-nez v1, :cond_12

    goto :goto_4

    .line 759
    :cond_12
    invoke-direct {v6, v11, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v0

    .line 760
    invoke-direct {v6, v1, v0, v9}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;IZ)V

    .line 761
    invoke-static {v1, v12}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    if-nez v16, :cond_17

    .line 763
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->DELEGATION:Lorg/xbill/DNS/SetResponseType;

    invoke-static {v0, v1, v9}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_7

    .line 741
    :cond_13
    :goto_4
    invoke-direct {v6, v11, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v5

    if-eqz v2, :cond_14

    .line 744
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/SOARecord;

    move-object v3, v0

    goto :goto_5

    :cond_14
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v4

    move v4, v5

    move v5, v9

    .line 746
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Cache;->addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;IZ)V

    if-nez v16, :cond_17

    const/4 v0, 0x3

    if-ne v10, v0, :cond_15

    .line 750
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->NXDOMAIN:Lorg/xbill/DNS/SetResponseType;

    goto :goto_6

    .line 752
    :cond_15
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->NXRRSET:Lorg/xbill/DNS/SetResponseType;

    .line 754
    :goto_6
    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;)Lorg/xbill/DNS/SetResponse;

    move-result-object v16

    goto :goto_7

    :cond_16
    if-nez v10, :cond_17

    if-eqz v1, :cond_17

    .line 768
    invoke-direct {v6, v11, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v0

    .line 769
    invoke-direct {v6, v1, v0, v9}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;IZ)V

    .line 770
    invoke-static {v1, v12}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    :cond_17
    :goto_7
    const/4 v0, 0x3

    .line 773
    invoke-virtual {v7, v0}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v1

    .line 774
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/RRset;

    .line 775
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_18

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_18

    const/16 v3, 0x26

    if-eq v2, v3, :cond_18

    goto :goto_8

    .line 779
    :cond_18
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 780
    invoke-virtual {v12, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_8

    :cond_19
    const/4 v2, 0x3

    .line 783
    invoke-direct {v6, v2, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v3

    .line 784
    invoke-direct {v6, v1, v3, v9}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;IZ)V

    goto :goto_8

    :cond_1a
    const/4 v2, 0x3

    sget-object v0, Lorg/xbill/DNS/Cache;->log:Lorg/slf4j/Logger;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    .line 790
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 791
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "Caching {} for {}/{}"

    .line 787
    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v16
.end method

.method public declared-synchronized addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V
    .locals 6

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 440
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Cache;->addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRRset(Lorg/xbill/DNS/RRset;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/xbill/DNS/Record;",
            ">(",
            "Lorg/xbill/DNS/RRset;",
            "I)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 401
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRecord(Lorg/xbill/DNS/Record;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 372
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->addRecord(Lorg/xbill/DNS/Record;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 p3, 0x0

    .line 361
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->addRecord(Lorg/xbill/DNS/Record;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 348
    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAnyRecords(Lorg/xbill/DNS/Name;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "I)",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 601
    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findRecords(Lorg/xbill/DNS/Name;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "I)",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 588
    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public flushName(Lorg/xbill/DNS/Name;)V
    .locals 0

    .line 813
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->removeName(Lorg/xbill/DNS/Name;)V

    return-void
.end method

.method public flushSet(Lorg/xbill/DNS/Name;I)V
    .locals 0

    .line 803
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    return-void
.end method

.method public getDClass()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Cache;->dclass:I

    return v0
.end method

.method public getMaxCache()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    return v0
.end method

.method public getMaxEntries()I
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 861
    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->getMaxSize()I

    move-result v0

    return v0
.end method

.method public getMaxNCache()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 853
    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->size()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p3

    monitor-enter p0

    .line 472
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-lt v4, v5, :cond_10

    if-ne v4, v5, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-ne v4, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v7, :cond_2

    .line 479
    sget-object v7, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    move-object/from16 v9, p1

    goto :goto_3

    :cond_2
    if-eqz v5, :cond_3

    move-object/from16 v7, p1

    move-object v9, v7

    goto :goto_3

    .line 483
    :cond_3
    new-instance v7, Lorg/xbill/DNS/Name;

    sub-int v8, v3, v4

    move-object/from16 v9, p1

    invoke-direct {v7, v9, v8}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    :goto_3
    iget-object v8, v1, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 486
    invoke-virtual {v8, v7}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    goto/16 :goto_6

    :cond_4
    if-eqz v5, :cond_9

    const/16 v10, 0xff

    if-ne v0, v10, :cond_9

    .line 497
    invoke-direct {v1, v8}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v10

    .line 498
    sget-object v11, Lorg/xbill/DNS/SetResponseType;->SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

    invoke-static {v11}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;)Lorg/xbill/DNS/SetResponse;

    move-result-object v11

    .line 500
    array-length v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v13, v12, :cond_8

    aget-object v15, v10, v13

    .line 502
    invoke-interface {v15}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 503
    invoke-interface {v15}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v15

    invoke-direct {v1, v7, v15}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    goto :goto_5

    .line 506
    :cond_5
    instance-of v6, v15, Lorg/xbill/DNS/Cache$CacheRRset;

    if-nez v6, :cond_6

    goto :goto_5

    .line 509
    :cond_6
    invoke-interface {v15, v2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v6

    if-gez v6, :cond_7

    goto :goto_5

    .line 512
    :cond_7
    check-cast v15, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v11, v15}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v14, v14, 0x1

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_8
    if-lez v14, :cond_d

    .line 517
    monitor-exit p0

    return-object v11

    :cond_9
    if-eqz v5, :cond_c

    .line 520
    :try_start_1
    invoke-direct {v1, v7, v8, v0, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v6

    .line 521
    instance-of v10, v6, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v10, :cond_a

    .line 522
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

    check-cast v6, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-static {v0, v6}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/Cache$CacheRRset;)Lorg/xbill/DNS/SetResponse;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_a
    if-eqz v6, :cond_b

    .line 524
    :try_start_2
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->NXRRSET:Lorg/xbill/DNS/SetResponseType;

    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;)Lorg/xbill/DNS/SetResponse;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_b
    const/4 v6, 0x5

    .line 527
    :try_start_3
    invoke-direct {v1, v7, v8, v6, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v6

    .line 528
    instance-of v10, v6, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v10, :cond_d

    .line 529
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->CNAME:Lorg/xbill/DNS/SetResponseType;

    check-cast v6, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-static {v0, v6}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/Cache$CacheRRset;)Lorg/xbill/DNS/SetResponse;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_c
    const/16 v6, 0x27

    .line 532
    :try_start_4
    invoke-direct {v1, v7, v8, v6, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v6

    .line 533
    instance-of v10, v6, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v10, :cond_d

    .line 534
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->DNAME:Lorg/xbill/DNS/SetResponseType;

    check-cast v6, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-static {v0, v6}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/Cache$CacheRRset;)Lorg/xbill/DNS/SetResponse;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_d
    const/4 v6, 0x2

    .line 539
    :try_start_5
    invoke-direct {v1, v7, v8, v6, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v6

    .line 540
    instance-of v10, v6, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v10, :cond_e

    .line 541
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->DELEGATION:Lorg/xbill/DNS/SetResponseType;

    check-cast v6, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-static {v0, v6}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/Cache$CacheRRset;)Lorg/xbill/DNS/SetResponse;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_e
    if-eqz v5, :cond_f

    const/4 v5, 0x0

    .line 546
    :try_start_6
    invoke-direct {v1, v7, v8, v5, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 548
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->NXDOMAIN:Lorg/xbill/DNS/SetResponseType;

    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;)Lorg/xbill/DNS/SetResponse;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_f
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 552
    :cond_10
    :try_start_7
    sget-object v0, Lorg/xbill/DNS/SetResponseType;->UNKNOWN:Lorg/xbill/DNS/SetResponseType;

    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;)Lorg/xbill/DNS/SetResponse;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .locals 0

    .line 566
    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    return-object p1
.end method

.method public setMaxCache(I)V
    .locals 0

    iput p1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    return-void
.end method

.method public setMaxEntries(I)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 876
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->setMaxSize(I)V

    return-void
.end method

.method public setMaxNCache(I)V
    .locals 0

    iput p1, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 889
    invoke-virtual {v1}, Lorg/xbill/DNS/Cache$CacheMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 890
    invoke-direct {p0, v2}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v2

    .line 891
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 892
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 893
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 896
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 896
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
