.class public Lorg/xbill/DNS/Zone;
.super Ljava/lang/Object;
.source "Zone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Zone$ZoneIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Lorg/xbill/DNS/RRset;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIMARY:I = 0x1

.field public static final SECONDARY:I = 0x2


# instance fields
.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/xbill/DNS/Name;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hasWild:Z

.field private nsRRset:Lorg/xbill/DNS/RRset;

.field private origin:Lorg/xbill/DNS/Name;

.field private originNode:Ljava/lang/Object;

.field private final transient readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final transient readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private soaRecord:Lorg/xbill/DNS/SOARecord;

.field private final transient writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/Name;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Zone;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 171
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    const/4 v0, 0x0

    .line 173
    invoke-static {p1, p3, v0}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object p1

    .line 174
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/ZoneTransferIn;->setDClass(I)V

    .line 175
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->fromXFR(Lorg/xbill/DNS/ZoneTransferIn;)V

    return-void

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no zone name specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Zone;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 92
    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p2}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Zone;->fromMasterFile(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Master;)V

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no input stream specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no zone name specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Zone;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 113
    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p2}, Lorg/xbill/DNS/Master;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Zone;->fromMasterFile(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Master;)V

    return-void

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no file name specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no zone name specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Lorg/xbill/DNS/Name;[Lorg/xbill/DNS/Record;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Zone;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iput-object p1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 133
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 134
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Zone;->maybeAddRecord(Lorg/xbill/DNS/Record;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-direct {p0}, Lorg/xbill/DNS/Zone;->validate()V

    return-void

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no records are specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no zone name specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/xbill/DNS/ZoneTransferIn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Zone;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->fromXFR(Lorg/xbill/DNS/ZoneTransferIn;)V

    return-void

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no xfrin specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/xbill/DNS/Zone;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/Zone;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->withReadLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/xbill/DNS/Zone;)Lorg/xbill/DNS/Name;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    return-object p0
.end method

.method static synthetic access$300(Lorg/xbill/DNS/Zone;Ljava/lang/Runnable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->withWriteLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lorg/xbill/DNS/Zone;Lorg/xbill/DNS/Name;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->removeRRsetWithoutLock(Lorg/xbill/DNS/Name;I)V

    return-void
.end method

.method static synthetic access$500(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->allRRsetsWithoutLock(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    return-object p0
.end method

.method private addRRsetWithoutLock(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;)V
    .locals 3

    iget-boolean v0, p0, Lorg/xbill/DNS/Zone;->hasWild:Z

    if-nez v0, :cond_0

    .line 520
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Zone;->hasWild:Z

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 524
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 528
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 532
    :cond_1
    invoke-virtual {p2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    .line 535
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_4

    .line 537
    check-cast v0, Ljava/util/List;

    const/4 p1, 0x0

    .line 538
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 539
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/RRset;

    .line 541
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 542
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 548
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 551
    :cond_4
    check-cast v0, Lorg/xbill/DNS/RRset;

    .line 552
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    if-ne v2, v1, :cond_5

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 554
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 557
    :cond_5
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 558
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 560
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private allRRsetsWithoutLock(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation

    .line 481
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 482
    check-cast p1, Ljava/util/List;

    return-object p1

    .line 484
    :cond_0
    check-cast p1, Lorg/xbill/DNS/RRset;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 476
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private expandSet(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/RRset;
    .locals 3

    .line 700
    new-instance v0, Lorg/xbill/DNS/RRset;

    invoke-direct {v0}, Lorg/xbill/DNS/RRset;-><init>()V

    const/4 v1, 0x0

    .line 701
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 702
    invoke-virtual {v2, p2}, Lorg/xbill/DNS/Record;->withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 704
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/RRSIGRecord;

    .line 705
    invoke-virtual {v1, p2}, Lorg/xbill/DNS/RRSIGRecord;->withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private findRRsetWithoutLock(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;
    .locals 0

    .line 512
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 516
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->oneRRsetWithoutLock(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object p1

    return-object p1
.end method

.method private findRecordsWithoutLock(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;
    .locals 8

    .line 611
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    iget-object v1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 612
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    move v2, v1

    :goto_0
    const/16 v3, 0xff

    const/4 v4, 0x0

    if-gt v2, v0, :cond_c

    const/4 v5, 0x1

    if-ne v2, v1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ne v2, v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v6, :cond_2

    iget-object v5, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    move-object v5, p1

    goto :goto_2

    .line 624
    :cond_3
    new-instance v5, Lorg/xbill/DNS/Name;

    sub-int v7, v0, v2

    invoke-direct {v5, p1, v7}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 627
    :goto_2
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    if-nez v6, :cond_5

    const/4 v6, 0x2

    .line 634
    invoke-direct {p0, v5, v6}, Lorg/xbill/DNS/Zone;->oneRRsetWithoutLock(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 636
    sget-object p1, Lorg/xbill/DNS/SetResponseType;->DELEGATION:Lorg/xbill/DNS/SetResponseType;

    invoke-static {p1, v6}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v4, :cond_7

    if-ne p2, v3, :cond_7

    .line 642
    sget-object p1, Lorg/xbill/DNS/SetResponseType;->SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

    invoke-static {p1}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    .line 643
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Zone;->allRRsetsWithoutLock(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    .line 644
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    goto :goto_3

    :cond_6
    return-object p1

    :cond_7
    if-eqz v4, :cond_9

    .line 652
    invoke-direct {p0, v5, p2}, Lorg/xbill/DNS/Zone;->oneRRsetWithoutLock(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 654
    sget-object p1, Lorg/xbill/DNS/SetResponseType;->SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

    invoke-static {p1, v3}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 v3, 0x5

    .line 656
    invoke-direct {p0, v5, v3}, Lorg/xbill/DNS/Zone;->oneRRsetWithoutLock(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 658
    sget-object p1, Lorg/xbill/DNS/SetResponseType;->CNAME:Lorg/xbill/DNS/SetResponseType;

    invoke-static {p1, v3}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v3, 0x27

    .line 661
    invoke-direct {p0, v5, v3}, Lorg/xbill/DNS/Zone;->oneRRsetWithoutLock(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 663
    sget-object p1, Lorg/xbill/DNS/SetResponseType;->DNAME:Lorg/xbill/DNS/SetResponseType;

    invoke-static {p1, v3}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    return-object p1

    :cond_a
    if-eqz v4, :cond_b

    .line 669
    sget-object p1, Lorg/xbill/DNS/SetResponseType;->NXRRSET:Lorg/xbill/DNS/SetResponseType;

    invoke-static {p1}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    return-object p1

    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    iget-boolean v2, p0, Lorg/xbill/DNS/Zone;->hasWild:Z

    if-eqz v2, :cond_11

    :cond_d
    :goto_5
    sub-int v2, v0, v1

    if-ge v4, v2, :cond_11

    add-int/lit8 v4, v4, 0x1

    .line 675
    invoke-virtual {p1, v4}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 676
    invoke-direct {p0, v2}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_5

    :cond_e
    if-ne p2, v3, :cond_10

    .line 682
    sget-object p2, Lorg/xbill/DNS/SetResponseType;->SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

    invoke-static {p2}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;)Lorg/xbill/DNS/SetResponse;

    move-result-object p2

    .line 683
    invoke-direct {p0, v2}, Lorg/xbill/DNS/Zone;->allRRsetsWithoutLock(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/RRset;

    .line 684
    invoke-direct {p0, v1, p1}, Lorg/xbill/DNS/Zone;->expandSet(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/RRset;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    goto :goto_6

    :cond_f
    return-object p2

    .line 688
    :cond_10
    invoke-direct {p0, v2, p2}, Lorg/xbill/DNS/Zone;->oneRRsetWithoutLock(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 690
    sget-object p2, Lorg/xbill/DNS/SetResponseType;->SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

    invoke-direct {p0, v2, p1}, Lorg/xbill/DNS/Zone;->expandSet(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/RRset;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    return-object p1

    .line 696
    :cond_11
    sget-object p1, Lorg/xbill/DNS/SetResponseType;->NXDOMAIN:Lorg/xbill/DNS/SetResponseType;

    invoke-static {p1}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    return-object p1
.end method

.method private fromMasterFile(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Master;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 182
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->maybeAddRecord(Lorg/xbill/DNS/Record;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p2}, Lorg/xbill/DNS/Master;->close()V

    .line 188
    invoke-direct {p0}, Lorg/xbill/DNS/Zone;->validate()V

    return-void

    :catchall_0
    move-exception p1

    .line 186
    invoke-virtual {p2}, Lorg/xbill/DNS/Master;->close()V

    .line 187
    throw p1
.end method

.method private fromXFR(Lorg/xbill/DNS/ZoneTransferIn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 193
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->run()V

    .line 194
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->isAXFR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->getAXFR()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 199
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Zone;->maybeAddRecord(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lorg/xbill/DNS/Zone;->validate()V

    return-void

    .line 195
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "zones can only be created from AXFRs"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$nodeToString$7(Ljava/lang/StringBuilder;Lorg/xbill/DNS/Record;)V
    .locals 0

    .line 713
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$nodeToString$8(Ljava/lang/StringBuilder;Lorg/xbill/DNS/RRSIGRecord;)V
    .locals 0

    .line 714
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private maybeAddRecord(Lorg/xbill/DNS/Record;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    .line 206
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 208
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SOA owner "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not match zone origin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 212
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Zone;->addRecord(Lorg/xbill/DNS/Record;)V

    :cond_2
    return-void
.end method

.method private nodeToString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3

    .line 711
    invoke-direct {p0, p2}, Lorg/xbill/DNS/Zone;->allRRsetsWithoutLock(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 712
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    const/4 v1, 0x0

    .line 713
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda8;

    invoke-direct {v2, p1}, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda8;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 714
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda9;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private oneRRsetWithoutLock(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;
    .locals 2

    const/16 v0, 0xff

    if-eq p2, v0, :cond_3

    .line 493
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 495
    check-cast p1, Ljava/util/List;

    .line 496
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    .line 497
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object v0

    .line 502
    :cond_1
    check-cast p1, Lorg/xbill/DNS/RRset;

    .line 503
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v0

    if-ne v0, p2, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 490
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot lookup an exact match for type ANY"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removeRRsetWithoutLock(Lorg/xbill/DNS/Name;I)V
    .locals 3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_7

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 574
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 581
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 583
    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 584
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 585
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/RRset;

    .line 586
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 588
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 595
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 599
    :cond_3
    check-cast v0, Lorg/xbill/DNS/RRset;

    .line 600
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v0

    if-eq v0, p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 606
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void

    .line 571
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot remove all NS"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 567
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot remove SOA"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 218
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    .line 223
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->oneRRsetWithoutLock(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 227
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/SOARecord;

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->soaRecord:Lorg/xbill/DNS/SOARecord;

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 229
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->oneRRsetWithoutLock(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->nsRRset:Lorg/xbill/DNS/RRset;

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": no NS set specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": exactly 1 SOA must be specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": no data specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private withReadLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 458
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 460
    :try_start_0
    invoke-static {p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 462
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 463
    throw p1
.end method

.method private withWriteLock(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 467
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 469
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/xbill/DNS/Zone;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 471
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 472
    throw p1
.end method


# virtual methods
.method public AXFR()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Lorg/xbill/DNS/Zone$ZoneIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/xbill/DNS/Zone$ZoneIterator;-><init>(Lorg/xbill/DNS/Zone;Z)V

    return-object v0
.end method

.method public addRRset(Lorg/xbill/DNS/RRset;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 356
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 357
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 359
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": exactly 1 SOA must be specified"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SOA owner "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not match zone origin "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 369
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 374
    new-instance v2, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1, v1}, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda4;-><init>(Lorg/xbill/DNS/Zone;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;I)V

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Zone;->withWriteLock(Ljava/lang/Runnable;)V

    return-void

    .line 370
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is absolute and not a subdomain of "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 353
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rrset must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRecord(Lorg/xbill/DNS/Record;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/xbill/DNS/Record;",
            ">(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 267
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 268
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v3

    .line 269
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v5

    const/4 v0, 0x6

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 271
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SOA owner "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not match zone origin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 276
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    new-instance v6, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;-><init>(Lorg/xbill/DNS/Zone;Lorg/xbill/DNS/Name;ILorg/xbill/DNS/Record;I)V

    invoke-direct {p0, v6}, Lorg/xbill/DNS/Zone;->withWriteLock(Ljava/lang/Runnable;)V

    return-void

    .line 277
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is absolute and not a subdomain of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findExactMatch(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;
    .locals 1

    if-eqz p1, :cond_0

    .line 419
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 420
    new-instance v0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda7;-><init>(Lorg/xbill/DNS/Zone;Lorg/xbill/DNS/Name;I)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Zone;->withReadLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/RRset;

    return-object p1

    .line 417
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findRecords(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;
    .locals 1

    if-eqz p1, :cond_1

    .line 447
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 449
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    sget-object p1, Lorg/xbill/DNS/SetResponseType;->NXDOMAIN:Lorg/xbill/DNS/SetResponseType;

    invoke-static {p1}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    return-object p1

    .line 453
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda0;-><init>(Lorg/xbill/DNS/Zone;Lorg/xbill/DNS/Name;I)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Zone;->withReadLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/SetResponse;

    return-object p1

    .line 445
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDClass()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNS()Lorg/xbill/DNS/RRset;
    .locals 1

    .line 62
    new-instance v0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda1;-><init>(Lorg/xbill/DNS/Zone;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Zone;->withReadLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    return-object v0
.end method

.method public getOrigin()Lorg/xbill/DNS/Name;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getSOA()Lorg/xbill/DNS/SOARecord;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->soaRecord:Lorg/xbill/DNS/SOARecord;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Lorg/xbill/DNS/Zone$ZoneIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/xbill/DNS/Zone$ZoneIterator;-><init>(Lorg/xbill/DNS/Zone;Z)V

    return-object v0
.end method

.method synthetic lambda$addRRset$3$org-xbill-DNS-Zone(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;I)V
    .locals 0

    .line 376
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->addRRsetWithoutLock(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;)V

    const/4 p1, 0x6

    if-ne p3, p1, :cond_0

    .line 378
    invoke-virtual {p2}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/SOARecord;

    iput-object p1, p0, Lorg/xbill/DNS/Zone;->soaRecord:Lorg/xbill/DNS/SOARecord;

    :cond_0
    return-void
.end method

.method synthetic lambda$addRecord$1$org-xbill-DNS-Zone(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/Record;I)V
    .locals 0

    .line 283
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->findRRsetWithoutLock(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object p2

    if-nez p2, :cond_0

    .line 285
    new-instance p2, Lorg/xbill/DNS/RRset;

    invoke-direct {p2, p3}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 286
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->addRRsetWithoutLock(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    if-ne p4, p1, :cond_1

    iget-object p1, p0, Lorg/xbill/DNS/Zone;->soaRecord:Lorg/xbill/DNS/SOARecord;

    .line 291
    invoke-virtual {p2, p1}, Lorg/xbill/DNS/RRset;->deleteRR(Lorg/xbill/DNS/Record;)V

    .line 292
    move-object p1, p3

    check-cast p1, Lorg/xbill/DNS/SOARecord;

    iput-object p1, p0, Lorg/xbill/DNS/Zone;->soaRecord:Lorg/xbill/DNS/SOARecord;

    .line 295
    :cond_1
    invoke-virtual {p2, p3}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$findExactMatch$5$org-xbill-DNS-Zone(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;
    .locals 0

    .line 422
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->findRRsetWithoutLock(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 428
    :cond_0
    new-instance p2, Lorg/xbill/DNS/RRset;

    invoke-direct {p2, p1}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/RRset;)V

    return-object p2
.end method

.method synthetic lambda$findRecords$6$org-xbill-DNS-Zone(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;
    .locals 0

    .line 453
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->findRecordsWithoutLock(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getNS$0$org-xbill-DNS-Zone()Lorg/xbill/DNS/RRset;
    .locals 2

    .line 62
    new-instance v0, Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/Zone;->nsRRset:Lorg/xbill/DNS/RRset;

    invoke-direct {v0, v1}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/RRset;)V

    return-object v0
.end method

.method synthetic lambda$removeRRset$4$org-xbill-DNS-Zone(Lorg/xbill/DNS/Name;I)V
    .locals 0

    .line 400
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->removeRRsetWithoutLock(Lorg/xbill/DNS/Name;I)V

    return-void
.end method

.method synthetic lambda$removeRecord$2$org-xbill-DNS-Zone(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/Record;)V
    .locals 4

    .line 321
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->findRRsetWithoutLock(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_2

    .line 327
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->size()I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot remove all NS"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->size()I

    move-result v1

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->sigSize()I

    move-result v3

    add-int/2addr v1, v3

    if-le v1, v2, :cond_3

    .line 332
    invoke-virtual {v0, p3}, Lorg/xbill/DNS/RRset;->deleteRR(Lorg/xbill/DNS/Record;)V

    goto :goto_1

    .line 335
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->removeRRsetWithoutLock(Lorg/xbill/DNS/Name;I)V

    :goto_1
    return-void
.end method

.method synthetic lambda$toMasterFile$9$org-xbill-DNS-Zone(Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    .line 727
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Zone;->nodeToString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 728
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 729
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 730
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/xbill/DNS/Zone;->nodeToString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeRRset(Lorg/xbill/DNS/Name;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 398
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 400
    new-instance v0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda3;-><init>(Lorg/xbill/DNS/Zone;Lorg/xbill/DNS/Name;I)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Zone;->withWriteLock(Ljava/lang/Runnable;)V

    return-void

    .line 396
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeRecord(Lorg/xbill/DNS/Record;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 312
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 313
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    .line 315
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 319
    new-instance v2, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, v1, p1}, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda5;-><init>(Lorg/xbill/DNS/Zone;Lorg/xbill/DNS/Name;ILorg/xbill/DNS/Record;)V

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Zone;->withWriteLock(Ljava/lang/Runnable;)V

    return-void

    .line 316
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot remove SOA record"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toMasterFile()Ljava/lang/String;
    .locals 2

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    new-instance v1, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda6;-><init>(Lorg/xbill/DNS/Zone;Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Zone;->withReadLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 735
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 745
    invoke-virtual {p0}, Lorg/xbill/DNS/Zone;->toMasterFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
