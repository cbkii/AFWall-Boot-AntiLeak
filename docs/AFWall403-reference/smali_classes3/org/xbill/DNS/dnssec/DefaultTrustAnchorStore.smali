.class final Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore;
.super Ljava/lang/Object;
.source "DefaultTrustAnchorStore.java"

# interfaces
.implements Lorg/xbill/DNS/dnssec/TrustAnchorStore;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore;->map:Ljava/util/Map;

    return-void
.end method

.method private key(Lorg/xbill/DNS/Name;I)Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "T"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->canonicalize()Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private lookup(Ljava/lang/String;)Lorg/xbill/DNS/RRset;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore;->map:Ljava/util/Map;

    .line 93
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/RRset;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore;->map:Ljava/util/Map;

    .line 83
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public find(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;
    .locals 2

    .line 67
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    if-lez v0, :cond_1

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore;->key(Lorg/xbill/DNS/Name;I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore;->lookup(Ljava/lang/String;)Lorg/xbill/DNS/RRset;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 74
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

.method public items()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore;->map:Ljava/util/Map;

    .line 89
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public store(Lorg/xbill/DNS/RRset;)V
    .locals 9

    .line 35
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v0

    const/16 v1, 0x2b

    const/16 v2, 0x30

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trust anchors can only be DS or DNSKEY records"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 40
    new-instance v0, Lorg/xbill/DNS/dnssec/SRRset;

    invoke-direct {v0}, Lorg/xbill/DNS/dnssec/SRRset;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 42
    move-object v8, v1

    check-cast v8, Lorg/xbill/DNS/DNSKEYRecord;

    .line 43
    new-instance v1, Lorg/xbill/DNS/DSRecord;

    .line 44
    invoke-virtual {v8}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v8}, Lorg/xbill/DNS/DNSKEYRecord;->getDClass()I

    move-result v4

    invoke-virtual {v8}, Lorg/xbill/DNS/DNSKEYRecord;->getTTL()J

    move-result-wide v5

    const/4 v7, 0x4

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/DNSKEYRecord;)V

    .line 45
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/dnssec/SRRset;->addRR(Lorg/xbill/DNS/Record;)V

    goto :goto_1

    :cond_2
    move-object p1, v0

    .line 51
    :cond_3
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore;->key(Lorg/xbill/DNS/Name;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore;->map:Ljava/util/Map;

    .line 52
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore$$ExternalSyntheticLambda0;-><init>(Lorg/xbill/DNS/RRset;)V

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Ljava/util/function/Consumer;)V

    :cond_4
    return-void
.end method
