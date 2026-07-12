.class public Lorg/xbill/DNS/ZoneMDRecord;
.super Lorg/xbill/DNS/Record;
.source "ZoneMDRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/ZoneMDRecord$Hash;,
        Lorg/xbill/DNS/ZoneMDRecord$Scheme;
    }
.end annotation


# instance fields
.field private digest:[B

.field private hashAlgorithm:I

.field private scheme:I

.field private serial:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJJII[B)V
    .locals 6

    const/16 v2, 0x3f

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 153
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    const-string p1, "serial"

    .line 154
    invoke-static {p1, p5, p6}, Lorg/xbill/DNS/ZoneMDRecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/xbill/DNS/ZoneMDRecord;->serial:J

    const-string p1, "scheme"

    .line 155
    invoke-static {p1, p7}, Lorg/xbill/DNS/ZoneMDRecord;->checkU8(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/ZoneMDRecord;->scheme:I

    const-string p1, "hashAlgorithm"

    .line 156
    invoke-static {p1, p8}, Lorg/xbill/DNS/ZoneMDRecord;->checkU8(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/ZoneMDRecord;->hashAlgorithm:I

    .line 157
    invoke-direct {p0, p8, p9}, Lorg/xbill/DNS/ZoneMDRecord;->getDigestSizeExceptionMessage(I[B)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iput-object p9, p0, Lorg/xbill/DNS/ZoneMDRecord;->digest:[B

    return-void

    .line 159
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getDigestSizeExceptionMessage(I[B)Ljava/lang/String;
    .locals 2

    .line 209
    invoke-static {p1}, Lorg/xbill/DNS/ZoneMDRecord$Hash;->hashLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 210
    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Digest size for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-static {p1}, Lorg/xbill/DNS/ZoneMDRecord$Hash;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " be exactly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {p1}, Lorg/xbill/DNS/ZoneMDRecord$Hash;->hashLength(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, got "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 217
    :cond_0
    array-length p1, p2

    const/16 v0, 0xc

    if-ge p1, v0, :cond_1

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Digest size must be at least 12 bytes, got "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getDigest()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/ZoneMDRecord;->digest:[B

    return-object v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/ZoneMDRecord;->hashAlgorithm:I

    return v0
.end method

.method public getScheme()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/ZoneMDRecord;->scheme:I

    return v0
.end method

.method public getSerial()J
    .locals 2

    iget-wide v0, p0, Lorg/xbill/DNS/ZoneMDRecord;->serial:J

    return-wide v0
.end method

.method protected rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/ZoneMDRecord;->serial:J

    .line 199
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result p2

    iput p2, p0, Lorg/xbill/DNS/ZoneMDRecord;->scheme:I

    .line 200
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result p2

    iput p2, p0, Lorg/xbill/DNS/ZoneMDRecord;->hashAlgorithm:I

    const/4 p2, 0x1

    .line 201
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getHex(Z)[B

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/ZoneMDRecord;->digest:[B

    iget v0, p0, Lorg/xbill/DNS/ZoneMDRecord;->hashAlgorithm:I

    .line 202
    invoke-direct {p0, v0, p2}, Lorg/xbill/DNS/ZoneMDRecord;->getDigestSizeExceptionMessage(I[B)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1
.end method

.method protected rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/ZoneMDRecord;->serial:J

    .line 175
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ZoneMDRecord;->scheme:I

    .line 176
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ZoneMDRecord;->hashAlgorithm:I

    .line 177
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/ZoneMDRecord;->digest:[B

    iget v0, p0, Lorg/xbill/DNS/ZoneMDRecord;->hashAlgorithm:I

    .line 178
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/ZoneMDRecord;->getDigestSizeExceptionMessage(I[B)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected rrToString()Ljava/lang/String;
    .locals 5

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/xbill/DNS/ZoneMDRecord;->serial:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/xbill/DNS/ZoneMDRecord;->scheme:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/xbill/DNS/ZoneMDRecord;->hashAlgorithm:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multiline"

    .line 188
    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xbill/DNS/ZoneMDRecord;->digest:[B

    const-string v2, "\t"

    const/4 v3, 0x1

    const/16 v4, 0x30

    invoke-static {v0, v4, v2, v3}, Lorg/xbill/DNS/utils/base16;->toString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xbill/DNS/ZoneMDRecord;->digest:[B

    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0

    iget-wide p2, p0, Lorg/xbill/DNS/ZoneMDRecord;->serial:J

    .line 166
    invoke-virtual {p1, p2, p3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    iget p2, p0, Lorg/xbill/DNS/ZoneMDRecord;->scheme:I

    .line 167
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget p2, p0, Lorg/xbill/DNS/ZoneMDRecord;->hashAlgorithm:I

    .line 168
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget-object p2, p0, Lorg/xbill/DNS/ZoneMDRecord;->digest:[B

    .line 169
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    return-void
.end method
