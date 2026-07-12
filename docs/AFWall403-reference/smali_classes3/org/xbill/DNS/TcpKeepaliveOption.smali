.class public Lorg/xbill/DNS/TcpKeepaliveOption;
.super Lorg/xbill/DNS/EDNSOption;
.source "TcpKeepaliveOption.java"


# static fields
.field private static final UPPER_LIMIT:Ljava/time/Duration;


# instance fields
.field private timeout:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x640000

    .line 21
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$2(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TcpKeepaliveOption;->UPPER_LIMIT:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xb

    .line 25
    invoke-direct {p0, v0}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/TcpKeepaliveOption;->timeout:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xb

    .line 35
    invoke-direct {p0, v0}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/TcpKeepaliveOption;->timeout:Ljava/lang/Integer;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeout must be betwee 0 and 65535"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/time/Duration;)V
    .locals 2

    const/16 v0, 0xb

    .line 49
    invoke-direct {p0, v0}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    .line 50
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/xbill/DNS/TcpKeepaliveOption;->UPPER_LIMIT:Ljava/time/Duration;

    invoke-static {p1, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;Ljava/time/Duration;)I

    move-result v0

    if-gez v0, :cond_0

    .line 54
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/time/Duration;)J

    move-result-wide v0

    long-to-int p1, v0

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/TcpKeepaliveOption;->timeout:Ljava/lang/Integer;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeout must be between 0 and 6553.6 seconds (exclusively)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getTimeout()Ljava/util/OptionalInt;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/TcpKeepaliveOption;->timeout:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/OptionalInt;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(I)Ljava/util/OptionalInt;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTimeoutDuration()Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/TcpKeepaliveOption;->timeout:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$2(J)Ljava/time/Duration;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method optionFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/TcpKeepaliveOption;->timeout:Ljava/lang/Integer;

    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid length ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") of the data in the edns_tcp_keepalive option"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/xbill/DNS/TcpKeepaliveOption;->timeout:Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method optionToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/TcpKeepaliveOption;->timeout:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 117
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "-"

    :goto_0
    return-object v0
.end method

.method optionToWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/TcpKeepaliveOption;->timeout:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    :cond_0
    return-void
.end method
