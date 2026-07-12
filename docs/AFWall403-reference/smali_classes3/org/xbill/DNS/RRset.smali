.class public Lorg/xbill/DNS/RRset;
.super Ljava/lang/Object;
.source "RRset.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Lorg/xbill/DNS/Record;",
        ">;"
    }
.end annotation


# instance fields
.field private position:S

.field private final rrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/xbill/DNS/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final sigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/xbill/DNS/RRSIGRecord;",
            ">;"
        }
    .end annotation
.end field

.field private ttl:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/xbill/DNS/Record;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 64
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/RRset;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 72
    iget-short v0, p1, Lorg/xbill/DNS/RRset;->position:S

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->position:S

    .line 73
    iget-wide v0, p1, Lorg/xbill/DNS/RRset;->ttl:J

    iput-wide v0, p0, Lorg/xbill/DNS/RRset;->ttl:J

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Record;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/xbill/DNS/Record;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 50
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addRR(Lorg/xbill/DNS/Record;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lorg/xbill/DNS/Record;",
            ">(TX;",
            "Ljava/util/List<",
            "TX;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/xbill/DNS/RRset;->ttl:J

    return-void

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 113
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/RRset;->checkSameRRset(Lorg/xbill/DNS/Record;Ljava/util/List;)V

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 114
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/RRset;->checkSameRRset(Lorg/xbill/DNS/Record;Ljava/util/List;)V

    .line 120
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/xbill/DNS/RRset;->ttl:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 121
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object p1

    iget-wide v0, p0, Lorg/xbill/DNS/RRset;->ttl:J

    .line 122
    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Record;->setTTL(J)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/xbill/DNS/RRset;->ttl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 124
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/RRset;->ttl:J

    .line 125
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v0

    iget-object v2, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/RRset;->adjustTtl(JLjava/util/List;)V

    .line 126
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v0

    iget-object v2, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/RRset;->adjustTtl(JLjava/util/List;)V

    .line 129
    :cond_2
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 130
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private adjustTtl(JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lorg/xbill/DNS/Record;",
            ">(J",
            "Ljava/util/List<",
            "TX;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 137
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 138
    invoke-virtual {v1, p1, p2}, Lorg/xbill/DNS/Record;->setTTL(J)V

    .line 139
    invoke-interface {p3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendRrList(Ljava/util/Iterator;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lorg/xbill/DNS/Record;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 292
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    const-string v1, "["

    .line 294
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->rdataToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    .line 296
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    .line 298
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkSameRRset(Lorg/xbill/DNS/Record;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Record;",
            "Ljava/util/List<",
            "+",
            "Lorg/xbill/DNS/Record;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 148
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/xbill/DNS/Record;

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Record;->sameRRset(Lorg/xbill/DNS/Record;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "record does not match rrset"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addRR(Lorg/xbill/DNS/RRSIGRecord;)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 85
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;Ljava/util/List;)V

    return-void
.end method

.method public addRR(Lorg/xbill/DNS/Record;)V
    .locals 1

    .line 97
    instance-of v0, p1, Lorg/xbill/DNS/RRSIGRecord;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lorg/xbill/DNS/RRSIGRecord;

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 102
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;Ljava/util/List;)V

    return-void
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 22
    instance-of p1, p1, Lorg/xbill/DNS/RRset;

    return p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public deleteRR(Lorg/xbill/DNS/RRSIGRecord;)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public deleteRR(Lorg/xbill/DNS/Record;)V
    .locals 1

    .line 160
    instance-of v0, p1, Lorg/xbill/DNS/RRSIGRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 22
    :cond_0
    instance-of v1, p1, Lorg/xbill/DNS/RRset;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/xbill/DNS/RRset;

    invoke-virtual {p1, p0}, Lorg/xbill/DNS/RRset;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public first()Lorg/xbill/DNS/Record;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 281
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 284
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 285
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    return-object v0

    .line 288
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "rrset is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getActualType()I
    .locals 1

    .line 258
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    return v0
.end method

.method public getDClass()I
    .locals 1

    .line 267
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v0

    return v0
.end method

.method public getName()Lorg/xbill/DNS/Name;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public getTTL()J
    .locals 2

    .line 272
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 248
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 229
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/xbill/DNS/Record;",
            ">;"
        }
    .end annotation

    .line 334
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public rrs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Record;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public rrs(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Record;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-short v0, p0, Lorg/xbill/DNS/RRset;->position:S

    const/16 v1, 0x7fff

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput-short v2, p0, Lorg/xbill/DNS/RRset;->position:S

    :cond_1
    iget-short v0, p0, Lorg/xbill/DNS/RRset;->position:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/xbill/DNS/RRset;->position:S

    iget-object v1, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 189
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 182
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public sigSize()I
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public sigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/RRSIGRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 205
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 306
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{empty}"

    return-object v0

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/ArrayList;

    .line 316
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/RRset;->appendRrList(Ljava/util/Iterator;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 317
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " sigs: "

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/RRset;->sigs:Ljava/util/ArrayList;

    .line 319
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/RRset;->appendRrList(Ljava/util/Iterator;Ljava/lang/StringBuilder;)V

    :cond_1
    const-string v1, " }"

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
