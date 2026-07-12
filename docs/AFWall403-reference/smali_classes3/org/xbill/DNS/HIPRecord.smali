.class public Lorg/xbill/DNS/HIPRecord;
.super Lorg/xbill/DNS/Record;
.source "HIPRecord.java"


# instance fields
.field private hit:[B

.field private pkAlgorithm:I

.field private publicKey:[B

.field private final rvServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/HIPRecord;->rvServers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJ[BILjava/security/PublicKey;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 53
    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/HIPRecord;-><init>(Lorg/xbill/DNS/Name;IJ[BILjava/security/PublicKey;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJ[BILjava/security/PublicKey;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "IJ[BI",
            "Ljava/security/PublicKey;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 48
    invoke-static/range {p6 .. p6}, Lorg/xbill/DNS/HIPRecord;->mapAlgTypeToDnssec(I)I

    move-result v0

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSSEC;->fromPublicKey(Ljava/security/PublicKey;I)[B

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lorg/xbill/DNS/HIPRecord;-><init>(Lorg/xbill/DNS/Name;IJ[BI[BLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJ[BI[B)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 42
    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/HIPRecord;-><init>(Lorg/xbill/DNS/Name;IJ[BI[BLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJ[BI[BLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "IJ[BI[B",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x37

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 32
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/HIPRecord;->rvServers:Ljava/util/List;

    iput-object p5, p0, Lorg/xbill/DNS/HIPRecord;->hit:[B

    iput p6, p0, Lorg/xbill/DNS/HIPRecord;->pkAlgorithm:I

    iput-object p7, p0, Lorg/xbill/DNS/HIPRecord;->publicKey:[B

    if-eqz p8, :cond_0

    .line 37
    invoke-interface {p1, p8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$rrToWire$0(Lorg/xbill/DNS/DNSOutput;ZLorg/xbill/DNS/Name;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p2, p0, v0, p1}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    return-void
.end method

.method private static mapAlgTypeToDnssec(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x5

    return p0

    .line 96
    :cond_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/HIPRecord;->pkAlgorithm:I

    return v0
.end method

.method public getHit()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/HIPRecord;->hit:[B

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/HIPRecord;->publicKey:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    iget v0, p0, Lorg/xbill/DNS/HIPRecord;->pkAlgorithm:I

    .line 81
    invoke-static {v0}, Lorg/xbill/DNS/HIPRecord;->mapAlgTypeToDnssec(I)I

    move-result v0

    iget-object v1, p0, Lorg/xbill/DNS/HIPRecord;->publicKey:[B

    invoke-static {v0, v1, p0}, Lorg/xbill/DNS/DNSSEC;->toPublicKey(I[BLorg/xbill/DNS/Record;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getRvServers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/HIPRecord;->rvServers:Ljava/util/List;

    .line 85
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result p2

    iput p2, p0, Lorg/xbill/DNS/HIPRecord;->pkAlgorithm:I

    .line 129
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getHexString()[B

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/HIPRecord;->hit:[B

    .line 130
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/HIPRecord;->publicKey:[B

    .line 132
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/HIPRecord;->rvServers:Ljava/util/List;

    .line 133
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-virtual {p2}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 150
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/HIPRecord;->pkAlgorithm:I

    .line 151
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 152
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/HIPRecord;->hit:[B

    .line 153
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/HIPRecord;->publicKey:[B

    .line 154
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/HIPRecord;->rvServers:Ljava/util/List;

    .line 155
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected rrToString()Ljava/lang/String;
    .locals 5

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multiline"

    .line 103
    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "( "

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_0
    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_1

    const-string v2, "\n\t"

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iget v4, p0, Lorg/xbill/DNS/HIPRecord;->pkAlgorithm:I

    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/xbill/DNS/HIPRecord;->hit:[B

    .line 110
    invoke-static {v3}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/xbill/DNS/HIPRecord;->publicKey:[B

    .line 113
    invoke-static {v3}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/xbill/DNS/HIPRecord;->rvServers:Ljava/util/List;

    .line 114
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v3, p0, Lorg/xbill/DNS/HIPRecord;->rvServers:Ljava/util/List;

    .line 118
    invoke-static {v3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/xbill/DNS/HIPRecord$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/xbill/DNS/HIPRecord$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, v4}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " )"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1

    iget-object p2, p0, Lorg/xbill/DNS/HIPRecord;->hit:[B

    .line 139
    array-length p2, p2

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget p2, p0, Lorg/xbill/DNS/HIPRecord;->pkAlgorithm:I

    .line 140
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget-object p2, p0, Lorg/xbill/DNS/HIPRecord;->publicKey:[B

    .line 141
    array-length p2, p2

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    iget-object p2, p0, Lorg/xbill/DNS/HIPRecord;->hit:[B

    .line 142
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    iget-object p2, p0, Lorg/xbill/DNS/HIPRecord;->publicKey:[B

    .line 143
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    iget-object p2, p0, Lorg/xbill/DNS/HIPRecord;->rvServers:Ljava/util/List;

    .line 144
    new-instance v0, Lorg/xbill/DNS/HIPRecord$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p3}, Lorg/xbill/DNS/HIPRecord$$ExternalSyntheticLambda1;-><init>(Lorg/xbill/DNS/DNSOutput;Z)V

    invoke-static {p2, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method
