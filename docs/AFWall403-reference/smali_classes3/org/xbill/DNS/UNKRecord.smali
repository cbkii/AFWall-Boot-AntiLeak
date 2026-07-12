.class public Lorg/xbill/DNS/UNKRecord;
.super Lorg/xbill/DNS/Record;
.source "UNKRecord.java"


# instance fields
.field private data:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/UNKRecord;->data:[B

    return-object v0
.end method

.method protected rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "invalid unknown RR encoding"

    .line 26
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1
.end method

.method protected rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 0

    .line 21
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/UNKRecord;->data:[B

    return-void
.end method

.method protected rrToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/UNKRecord;->data:[B

    .line 32
    invoke-static {v0}, Lorg/xbill/DNS/UNKRecord;->unknownToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0

    iget-object p2, p0, Lorg/xbill/DNS/UNKRecord;->data:[B

    .line 42
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    return-void
.end method
