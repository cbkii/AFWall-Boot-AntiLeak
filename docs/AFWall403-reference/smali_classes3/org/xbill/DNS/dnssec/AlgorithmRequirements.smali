.class Lorg/xbill/DNS/dnssec/AlgorithmRequirements;
.super Ljava/lang/Object;
.source "AlgorithmRequirements.java"


# static fields
.field private static final MAX_ALGORITHMS:I = 0xff


# instance fields
.field private final needs:[S

.field private num:I

.field private final valUtils:Lorg/xbill/DNS/dnssec/ValUtils;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/dnssec/ValUtils;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->needs:[S

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    return-void
.end method


# virtual methods
.method public getNum()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->num:I

    return v0
.end method

.method initDs(Lorg/xbill/DNS/RRset;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/RRset;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->num:I

    .line 59
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 60
    check-cast v1, Lorg/xbill/DNS/DSRecord;

    .line 61
    invoke-virtual {v1}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v2

    if-eq v2, p2, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v1}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v1

    iget-object v2, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    .line 66
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->isAlgorithmSupported(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->needs:[S

    .line 70
    aget-short v3, v2, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 71
    aput-short v3, v2, v1

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->num:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->num:I

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method initList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->num:I

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->needs:[S

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    aput-short v2, v1, v0

    iget v0, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->num:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->num:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method missing()I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    iget-object v4, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->needs:[S

    .line 120
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 121
    aget-short v4, v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    return v1

    :cond_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    if-ne v3, v0, :cond_1

    move v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, v0, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method setBogus(I)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->needs:[S

    .line 104
    aget-short v1, v0, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 106
    aput-short v1, v0, p1

    :cond_0
    return-void
.end method

.method setSecure(I)Z
    .locals 3

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->needs:[S

    .line 87
    aget-short v1, v0, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 88
    aput-short v2, v0, p1

    iget p1, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->num:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->num:I

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
