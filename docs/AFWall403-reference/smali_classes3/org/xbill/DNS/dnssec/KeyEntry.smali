.class final Lorg/xbill/DNS/dnssec/KeyEntry;
.super Lorg/xbill/DNS/dnssec/SRRset;
.source "KeyEntry.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final algo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private badReason:Ljava/lang/String;

.field private edeReason:I

.field private isEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/dnssec/KeyEntry;

    .line 22
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/dnssec/KeyEntry;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/Name;IJZ)V
    .locals 2

    .line 55
    new-instance v0, Lorg/xbill/DNS/dnssec/SRRset;

    const/16 v1, 0x30

    invoke-static {p1, v1, p2, p3, p4}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xbill/DNS/dnssec/SRRset;-><init>(Lorg/xbill/DNS/Record;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/dnssec/SRRset;-><init>(Lorg/xbill/DNS/dnssec/SRRset;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->edeReason:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->isEmpty:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->algo:Ljava/util/List;

    if-eqz p5, :cond_0

    .line 59
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->setSecurityStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;)V

    :cond_0
    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/dnssec/SRRset;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/dnssec/KeyEntry;-><init>(Lorg/xbill/DNS/dnssec/SRRset;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/dnssec/SRRset;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lorg/xbill/DNS/dnssec/SRRset;-><init>(Lorg/xbill/DNS/dnssec/SRRset;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->edeReason:I

    iput-object p2, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->algo:Ljava/util/List;

    return-void
.end method

.method public static newBadKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;
    .locals 7

    .line 106
    new-instance v6, Lorg/xbill/DNS/dnssec/KeyEntry;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/dnssec/KeyEntry;-><init>(Lorg/xbill/DNS/Name;IJZ)V

    return-object v6
.end method

.method public static newKeyEntry(Lorg/xbill/DNS/dnssec/SRRset;)Lorg/xbill/DNS/dnssec/KeyEntry;
    .locals 1

    .line 70
    new-instance v0, Lorg/xbill/DNS/dnssec/KeyEntry;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/dnssec/KeyEntry;-><init>(Lorg/xbill/DNS/dnssec/SRRset;)V

    return-object v0
.end method

.method public static newKeyEntry(Lorg/xbill/DNS/dnssec/SRRset;Ljava/util/List;)Lorg/xbill/DNS/dnssec/KeyEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/xbill/DNS/dnssec/KeyEntry;"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/xbill/DNS/dnssec/KeyEntry;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/dnssec/KeyEntry;-><init>(Lorg/xbill/DNS/dnssec/SRRset;Ljava/util/List;)V

    return-object v0
.end method

.method public static newNullKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;
    .locals 7

    .line 94
    new-instance v6, Lorg/xbill/DNS/dnssec/KeyEntry;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/dnssec/KeyEntry;-><init>(Lorg/xbill/DNS/Name;IJZ)V

    return-object v6
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    instance-of p1, p1, Lorg/xbill/DNS/dnssec/KeyEntry;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 23
    :cond_0
    instance-of v1, p1, Lorg/xbill/DNS/dnssec/KeyEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/xbill/DNS/dnssec/KeyEntry;

    invoke-virtual {v1, p0}, Lorg/xbill/DNS/dnssec/KeyEntry;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lorg/xbill/DNS/dnssec/SRRset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget p1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->edeReason:I

    iget v3, v1, Lorg/xbill/DNS/dnssec/KeyEntry;->edeReason:I

    if-eq p1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->isEmpty:Z

    iget-boolean v3, v1, Lorg/xbill/DNS/dnssec/KeyEntry;->isEmpty:Z

    if-eq p1, v3, :cond_5

    return v2

    :cond_5
    iget-object p1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->badReason:Ljava/lang/String;

    iget-object v1, v1, Lorg/xbill/DNS/dnssec/KeyEntry;->badReason:Ljava/lang/String;

    if-nez p1, :cond_6

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_0
    return v2

    :cond_7
    return v0
.end method

.method public getAlgo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->algo:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 23
    invoke-super {p0}, Lorg/xbill/DNS/dnssec/SRRset;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3b

    iget v1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->edeReason:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    iget-boolean v1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->isEmpty:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4f

    goto :goto_0

    :cond_0
    const/16 v1, 0x61

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->badReason:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_1

    const/16 v1, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isBad()Z
    .locals 2

    iget-boolean v0, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->isEmpty:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/KeyEntry;->getSecurityStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGood()Z
    .locals 2

    iget-boolean v0, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->isEmpty:Z

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/KeyEntry;->getSecurityStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNull()Z
    .locals 2

    iget-boolean v0, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->isEmpty:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/KeyEntry;->getSecurityStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBadReason(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->edeReason:I

    iput-object p2, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->badReason:Ljava/lang/String;

    return-void
.end method

.method validateKeyFor(Lorg/xbill/DNS/dnssec/SRRset;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;
    .locals 6

    .line 155
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getSignerName()Lorg/xbill/DNS/Name;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 158
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getSecurityStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v0

    sget-object v5, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v0, v5, :cond_0

    .line 159
    new-instance v0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getSecurityStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object p1

    const/4 v2, -0x1

    invoke-direct {v0, p1, v2, v1}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v0, Lorg/xbill/DNS/dnssec/KeyEntry;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 164
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    aput-object v5, v1, v4

    .line 165
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 166
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result p1

    invoke-static {p1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "No signerName for <{}/{}/{}>"

    .line 162
    invoke-interface {v0, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/KeyEntry;->isNull()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->badReason:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "validate.insecure_unsigned"

    new-array v0, v4, [Ljava/lang/Object;

    .line 172
    invoke-static {p1, v0}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_1
    new-instance v0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iget v2, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->edeReason:I

    invoke-direct {v0, v1, v2, p1}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v0

    .line 178
    :cond_2
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/KeyEntry;->isGood()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 179
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v1, "validate.bogus.missingsig"

    new-array v2, v4, [Ljava/lang/Object;

    .line 182
    invoke-static {v1, v2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {p1, v0, v2, v1}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    .line 185
    :cond_3
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iget v1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->edeReason:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->badReason:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "validate.bogus"

    .line 186
    invoke-static {v3, v2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    .line 189
    :cond_4
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/KeyEntry;->isBad()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 190
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iget v1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->edeReason:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 193
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/KeyEntry;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v4, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->badReason:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "validate.bogus.badkey"

    invoke-static {v3, v2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    .line 196
    :cond_5
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/KeyEntry;->isNull()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->badReason:Ljava/lang/String;

    if-nez p1, :cond_6

    const-string p1, "validate.insecure"

    new-array v0, v4, [Ljava/lang/Object;

    .line 199
    invoke-static {p1, v0}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 202
    :cond_6
    new-instance v0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iget v2, p0, Lorg/xbill/DNS/dnssec/KeyEntry;->edeReason:I

    invoke-direct {v0, v1, v2, p1}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v0

    :cond_7
    return-object v1
.end method
