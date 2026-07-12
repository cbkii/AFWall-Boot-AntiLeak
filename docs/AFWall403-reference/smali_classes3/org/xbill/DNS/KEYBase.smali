.class abstract Lorg/xbill/DNS/KEYBase;
.super Lorg/xbill/DNS/Record;
.source "KEYBase.java"


# instance fields
.field protected alg:I

.field protected flags:I

.field protected footprint:I

.field protected key:[B

.field protected proto:I

.field protected publicKey:Ljava/security/PublicKey;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IIJIII[B)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    const-string p1, "flags"

    .line 26
    invoke-static {p1, p6}, Lorg/xbill/DNS/KEYBase;->checkU16(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    const-string p1, "proto"

    .line 27
    invoke-static {p1, p7}, Lorg/xbill/DNS/KEYBase;->checkU8(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    const-string p1, "alg"

    .line 28
    invoke-static {p1, p8}, Lorg/xbill/DNS/KEYBase;->checkU8(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    iput-object p9, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    return v0
.end method

.method public getFootprint()I
    .locals 7

    iget v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    if-ltz v0, :cond_0

    return v0

    .line 93
    :cond_0
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0, v0, v1, v2}, Lorg/xbill/DNS/KEYBase;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 95
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    iget v1, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    const v3, 0xffff

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 98
    array-length v1, v0

    add-int/lit8 v1, v1, -0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 99
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v1, 0x8

    :goto_0
    add-int/2addr v1, v0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 103
    :goto_1
    array-length v5, v0

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_2

    .line 104
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x1

    .line 105
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 108
    :cond_2
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 109
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    :cond_3
    shr-int/lit8 v0, v1, 0x10

    and-int/2addr v0, v3

    goto :goto_0

    :goto_2
    and-int v0, v1, v3

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    return v0
.end method

.method public getKey()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    return v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    return-object v0

    .line 128
    :cond_0
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method protected rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    .line 35
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    .line 36
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    .line 37
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    :cond_0
    return-void
.end method

.method protected rrToString()Ljava/lang/String;
    .locals 5

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    if-eqz v2, :cond_1

    const-string v2, "multiline"

    .line 52
    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, " (\n"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    const-string v2, "\t"

    const/4 v3, 0x1

    const/16 v4, 0x40

    .line 54
    invoke-static {v1, v4, v2, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; key_tag = "

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    .line 59
    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0

    iget p2, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    .line 134
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    iget p2, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    .line 135
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget p2, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    .line 136
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget-object p2, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    if-eqz p2, :cond_0

    .line 138
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    :cond_0
    return-void
.end method
