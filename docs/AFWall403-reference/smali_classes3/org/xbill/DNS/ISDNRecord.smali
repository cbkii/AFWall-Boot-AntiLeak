.class public Lorg/xbill/DNS/ISDNRecord;
.super Lorg/xbill/DNS/Record;
.source "ISDNRecord.java"


# instance fields
.field private address:[B

.field private subAddress:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v2, 0x14

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 28
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 30
    :try_start_0
    invoke-static {p5}, Lorg/xbill/DNS/ISDNRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    if-eqz p6, :cond_0

    .line 32
    invoke-static {p6}, Lorg/xbill/DNS/ISDNRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 35
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    const/4 v1, 0x0

    .line 64
    invoke-static {v0, v1}, Lorg/xbill/DNS/ISDNRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 72
    invoke-static {v0, v1}, Lorg/xbill/DNS/ISDNRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/xbill/DNS/ISDNRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    .line 51
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p2}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/xbill/DNS/ISDNRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p2

    .line 58
    invoke-virtual {p2}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1
.end method

.method protected rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    .line 42
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    :cond_0
    return-void
.end method

.method protected rrToString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    const/4 v2, 0x1

    .line 86
    invoke-static {v1, v2}, Lorg/xbill/DNS/ISDNRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    if-eqz v1, :cond_0

    const-string v1, " "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    .line 89
    invoke-static {v1, v2}, Lorg/xbill/DNS/ISDNRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0

    iget-object p2, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    .line 77
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    iget-object p2, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    :cond_0
    return-void
.end method
