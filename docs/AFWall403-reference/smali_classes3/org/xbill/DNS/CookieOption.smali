.class public Lorg/xbill/DNS/CookieOption;
.super Lorg/xbill/DNS/EDNSOption;
.source "CookieOption.java"


# instance fields
.field private clientCookie:[B

.field private serverCookie:[B


# direct methods
.method constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 25
    invoke-direct {p0, v0}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/CookieOption;-><init>([B[B)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 2

    .line 44
    invoke-direct {p0}, Lorg/xbill/DNS/CookieOption;-><init>()V

    if-eqz p1, :cond_3

    .line 48
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iput-object p1, p0, Lorg/xbill/DNS/CookieOption;->clientCookie:[B

    if-eqz p2, :cond_1

    .line 54
    array-length p1, p2

    if-lt p1, v1, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "server cookie must consist of 8 to 32 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/xbill/DNS/CookieOption;->serverCookie:[B

    return-void

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client cookie must consist of eight bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client cookie must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getClientCookie()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/CookieOption;->clientCookie:[B

    return-object v0
.end method

.method public getServerCookie()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/CookieOption;->serverCookie:[B

    .line 77
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method optionFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 92
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/CookieOption;->clientCookie:[B

    if-le v0, v1, :cond_1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x28

    if-gt v0, v1, :cond_0

    .line 97
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/CookieOption;->serverCookie:[B

    goto :goto_0

    .line 95
    :cond_0
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    const-string v0, "invalid length of server cookie"

    invoke-direct {p1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    const-string v0, "invalid length of client cookie"

    invoke-direct {p1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method optionToString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/CookieOption;->serverCookie:[B

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xbill/DNS/CookieOption;->clientCookie:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/CookieOption;->serverCookie:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/CookieOption;->clientCookie:[B

    .line 123
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method optionToWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/CookieOption;->clientCookie:[B

    .line 108
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    iget-object v0, p0, Lorg/xbill/DNS/CookieOption;->serverCookie:[B

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    :cond_0
    return-void
.end method
