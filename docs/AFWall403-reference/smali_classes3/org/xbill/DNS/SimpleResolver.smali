.class public Lorg/xbill/DNS/SimpleResolver;
.super Ljava/lang/Object;
.source "SimpleResolver.java"

# interfaces
.implements Lorg/xbill/DNS/Resolver;


# static fields
.field public static final DEFAULT_EDNS_PAYLOADSIZE:I = 0x500

.field public static final DEFAULT_PORT:I = 0x35

.field private static final DEFAULT_UDPSIZE:S = 0x200s

.field private static defaultResolver:Ljava/net/InetSocketAddress;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private address:Ljava/net/InetSocketAddress;

.field private ignoreTruncation:Z

.field private ioClientFactory:Lorg/xbill/DNS/io/IoClientFactory;

.field private localAddress:Ljava/net/InetSocketAddress;

.field private queryOPT:Lorg/xbill/DNS/OPTRecord;

.field private timeoutValue:Ljava/time/Duration;

.field private tsig:Lorg/xbill/DNS/TSIG;

.field private useTCP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/xbill/DNS/SimpleResolver;

    .line 32
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/SimpleResolver;->log:Lorg/slf4j/Logger;

    .line 58
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 59
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    const/16 v2, 0x35

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    sput-object v0, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/xbill/DNS/OPTRecord;

    const/16 v1, 0x500

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/xbill/DNS/OPTRecord;-><init>(IIII)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    const-wide/16 v0, 0xa

    .line 47
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:Ljava/time/Duration;

    .line 56
    new-instance v0, Lorg/xbill/DNS/io/DefaultIoClientFactory;

    invoke-direct {v0}, Lorg/xbill/DNS/io/DefaultIoClientFactory;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->ioClientFactory:Lorg/xbill/DNS/io/IoClientFactory;

    if-nez p1, :cond_1

    .line 79
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/ResolverConfig;->server()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    if-nez p1, :cond_0

    sget-object p1, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    :cond_0
    return-void

    :cond_1
    const-string v0, "0"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 94
    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x35

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/xbill/DNS/OPTRecord;

    const/16 v1, 0x500

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/xbill/DNS/OPTRecord;-><init>(IIII)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    const-wide/16 v0, 0xa

    .line 47
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:Ljava/time/Duration;

    .line 56
    new-instance v0, Lorg/xbill/DNS/io/DefaultIoClientFactory;

    invoke-direct {v0}, Lorg/xbill/DNS/io/DefaultIoClientFactory;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->ioClientFactory:Lorg/xbill/DNS/io/IoClientFactory;

    const-string v0, "host must not be null"

    .line 104
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x35

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/xbill/DNS/OPTRecord;

    const/16 v1, 0x500

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/xbill/DNS/OPTRecord;-><init>(IIII)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    const-wide/16 v0, 0xa

    .line 47
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:Ljava/time/Duration;

    .line 56
    new-instance v0, Lorg/xbill/DNS/io/DefaultIoClientFactory;

    invoke-direct {v0}, Lorg/xbill/DNS/io/DefaultIoClientFactory;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->ioClientFactory:Lorg/xbill/DNS/io/IoClientFactory;

    const-string v0, "host must not be null"

    .line 99
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    return-void
.end method

.method private applyEDNS(Lorg/xbill/DNS/Message;)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    const/4 v1, 0x3

    .line 295
    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private maxUDPSize(Lorg/xbill/DNS/Message;)I
    .locals 0

    .line 299
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0x200

    return p1

    .line 303
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/OPTRecord;->getPayloadSize()I

    move-result p1

    return p1
.end method

.method private parseMessage([B)Lorg/xbill/DNS/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 273
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Message;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 275
    instance-of v0, p1, Lorg/xbill/DNS/WireParseException;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "Error parsing message"

    invoke-direct {v0, v1, p1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 278
    :cond_0
    check-cast p1, Lorg/xbill/DNS/WireParseException;

    throw p1
.end method

.method private sendAXFR(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    .line 492
    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:Ljava/time/Duration;

    .line 493
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->setTimeout(Ljava/time/Duration;)V

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    .line 494
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->setLocalAddress(Ljava/net/SocketAddress;)V

    .line 496
    :try_start_0
    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferIn;->run()V
    :try_end_0
    .catch Lorg/xbill/DNS/ZoneTransferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferIn;->getAXFR()Ljava/util/List;

    move-result-object v0

    .line 501
    new-instance v1, Lorg/xbill/DNS/Message;

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Message;-><init>(I)V

    .line 502
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 503
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 504
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 505
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    const/4 v2, 0x1

    .line 506
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 498
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDefaultResolver(Ljava/lang/String;)V
    .locals 2

    .line 125
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x35

    invoke-direct {v0, p0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public static setDefaultResolver(Ljava/net/InetSocketAddress;)V
    .locals 0

    sput-object p0, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/net/InetSocketAddress;

    return-void
.end method

.method private verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[B)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getGeneratedTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result p2

    sget-object p3, Lorg/xbill/DNS/SimpleResolver;->log:Lorg/slf4j/Logger;

    .line 288
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/Header;->getID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lorg/xbill/DNS/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "TSIG verify on message id {}: {}"

    .line 287
    invoke-interface {p3, v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getEDNS()Lorg/xbill/DNS/OPTRecord;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    return-object v0
.end method

.method public getIgnoreTruncation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/SimpleResolver;->ignoreTruncation:Z

    return v0
.end method

.method public getIoClientFactory()Lorg/xbill/DNS/io/IoClientFactory;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->ioClientFactory:Lorg/xbill/DNS/io/IoClientFactory;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 134
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getTCP()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/SimpleResolver;->useTCP:Z

    return v0
.end method

.method public getTSIGKey()Lorg/xbill/DNS/TSIG;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    return-object v0
.end method

.method public getTimeout()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:Ljava/time/Duration;

    return-object v0
.end method

.method synthetic lambda$sendAsync$0$org-xbill-DNS-SimpleResolver(Ljava/util/concurrent/CompletableFuture;Lorg/xbill/DNS/Message;)V
    .locals 0

    .line 334
    :try_start_0
    invoke-direct {p0, p2}, Lorg/xbill/DNS/SimpleResolver;->sendAXFR(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 336
    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method synthetic lambda$sendAsync$1$org-xbill-DNS-SimpleResolver(ILorg/xbill/DNS/Message;ZLjava/util/concurrent/Executor;[B)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .line 395
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 398
    array-length v1, p5

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 399
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    const-string p2, "invalid DNS header - too short"

    invoke-direct {p1, p2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 407
    aget-byte v1, p5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v3, p5, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    if-eq v1, p1, :cond_1

    .line 409
    new-instance p2, Lorg/xbill/DNS/WireParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "invalid message id: expected "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got id "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object v0

    .line 416
    :cond_1
    :try_start_0
    invoke-direct {p0, p5}, Lorg/xbill/DNS/SimpleResolver;->parseMessage([B)Lorg/xbill/DNS/Message;

    move-result-object v1
    :try_end_0
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    invoke-virtual {p2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 426
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v3

    if-eq v3, v4, :cond_6

    .line 427
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    const-string p2, "invalid message: opcode response is not UPDATE"

    invoke-direct {p1, p2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object v0

    .line 432
    :cond_2
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    if-nez v3, :cond_3

    .line 433
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    const-string p2, "invalid message: question section missing"

    invoke-direct {p1, p2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object v0

    .line 439
    :cond_3
    invoke-virtual {p2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "; got "

    if-nez v3, :cond_4

    .line 440
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "invalid name in message: expected "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-static {v0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object v0

    .line 449
    :cond_4
    invoke-virtual {p2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v3

    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v5

    if-eq v3, v5, :cond_5

    .line 450
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "invalid class in message: expected "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result p2

    invoke-static {p2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result p2

    invoke-static {p2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-static {v0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object v0

    .line 459
    :cond_5
    invoke-virtual {p2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getType()I

    move-result v5

    if-eq v3, v5, :cond_6

    .line 460
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "invalid type in message: expected "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getType()I

    move-result p2

    invoke-static {p2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getType()I

    move-result p2

    invoke-static {p2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-static {v0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object v0

    .line 470
    :cond_6
    invoke-direct {p0, p2, v1, p5}, Lorg/xbill/DNS/SimpleResolver;->verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[B)V

    if-nez p3, :cond_8

    iget-boolean p3, p0, Lorg/xbill/DNS/SimpleResolver;->ignoreTruncation:Z

    if-nez p3, :cond_8

    .line 471
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p3

    const/4 p5, 0x6

    invoke-virtual {p3, p5}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result p3

    if-eqz p3, :cond_8

    sget-object p3, Lorg/xbill/DNS/SimpleResolver;->log:Lorg/slf4j/Logger;

    .line 472
    invoke-interface {p3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p5

    if-eqz p5, :cond_7

    const-string p5, "Got truncated response for id {}, retrying via TCP, response:\n{}"

    .line 475
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 473
    invoke-interface {p3, p5, p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string p5, "Got truncated response for id {}, retrying via TCP"

    .line 478
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p5, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    :goto_0
    invoke-virtual {p0, p2, v2, p4}, Lorg/xbill/DNS/SimpleResolver;->sendAsync(Lorg/xbill/DNS/Message;ZLjava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 483
    :cond_8
    invoke-virtual {v1, p0}, Lorg/xbill/DNS/Message;->setResolver(Lorg/xbill/DNS/Resolver;)V

    .line 484
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)Z

    return-object v0

    :catch_0
    move-exception p1

    .line 418
    invoke-static {v0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public synthetic send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 0

    invoke-static {p0, p1}, Lorg/xbill/DNS/Resolver$-CC;->$default$send(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/xbill/DNS/Resolver$-CC;->$default$sendAsync(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method sendAsync(Lorg/xbill/DNS/Message;ZLjava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    .line 355
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v15

    const v0, 0xffff

    .line 356
    invoke-virtual {v14, v0}, Lorg/xbill/DNS/Message;->toWire(I)[B

    move-result-object v11

    .line 357
    invoke-direct/range {p0 .. p1}, Lorg/xbill/DNS/SimpleResolver;->maxUDPSize(Lorg/xbill/DNS/Message;)I

    move-result v12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 358
    array-length v2, v11

    if-le v2, v12, :cond_0

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v16, 0x1

    :goto_1
    sget-object v2, Lorg/xbill/DNS/SimpleResolver;->log:Lorg/slf4j/Logger;

    .line 359
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const-string v7, "tcp"

    const-string v8, "udp"

    const/4 v9, 0x6

    const/4 v10, 0x3

    const/4 v13, 0x2

    if-eqz v3, :cond_3

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    .line 362
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v17

    aput-object v17, v3, v0

    .line 363
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 364
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v13

    if-eqz v16, :cond_2

    goto :goto_2

    :cond_2
    move-object v7, v8

    :goto_2
    aput-object v7, v3, v10

    iget-object v0, v6, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 366
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    iget-object v0, v6, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 367
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    aput-object v14, v3, v9

    const-string v0, "Sending {}/{}, id={} to {}/{}:{}, query:\n{}"

    .line 360
    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 369
    :cond_3
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    new-array v3, v9, [Ljava/lang/Object;

    .line 372
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v9

    invoke-virtual {v9}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v9

    aput-object v9, v3, v0

    .line 373
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 374
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v13

    if-eqz v16, :cond_4

    goto :goto_3

    :cond_4
    move-object v7, v8

    :goto_3
    aput-object v7, v3, v10

    iget-object v0, v6, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 376
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    iget-object v0, v6, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 377
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "Sending {}/{}, id={} to {}/{}:{}"

    .line 370
    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_4
    if-eqz v16, :cond_6

    iget-object v0, v6, Lorg/xbill/DNS/SimpleResolver;->ioClientFactory:Lorg/xbill/DNS/io/IoClientFactory;

    .line 384
    invoke-interface {v0}, Lorg/xbill/DNS/io/IoClientFactory;->createOrGetTcpClient()Lorg/xbill/DNS/io/TcpIoClient;

    move-result-object v0

    iget-object v1, v6, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v2, v6, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    iget-object v5, v6, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:Ljava/time/Duration;

    move-object/from16 v3, p1

    move-object v4, v11

    .line 385
    invoke-interface/range {v0 .. v5}, Lorg/xbill/DNS/io/TcpIoClient;->sendAndReceiveTcp(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/xbill/DNS/Message;[BLjava/time/Duration;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    goto :goto_5

    :cond_6
    iget-object v0, v6, Lorg/xbill/DNS/SimpleResolver;->ioClientFactory:Lorg/xbill/DNS/io/IoClientFactory;

    .line 389
    invoke-interface {v0}, Lorg/xbill/DNS/io/IoClientFactory;->createOrGetUdpClient()Lorg/xbill/DNS/io/UdpIoClient;

    move-result-object v7

    iget-object v8, v6, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v9, v6, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    iget-object v13, v6, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:Ljava/time/Duration;

    move-object/from16 v10, p1

    .line 390
    invoke-interface/range {v7 .. v13}, Lorg/xbill/DNS/io/UdpIoClient;->sendAndReceiveUdp(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/xbill/DNS/Message;[BILjava/time/Duration;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :goto_5
    move-object v7, v0

    .line 393
    new-instance v8, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;

    move-object v0, v8

    move-object/from16 v1, p0

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v4, v16

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;-><init>(Lorg/xbill/DNS/SimpleResolver;ILorg/xbill/DNS/Message;ZLjava/util/concurrent/Executor;)V

    move-object/from16 v0, p3

    invoke-static {v7, v8, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    .line 315
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/SimpleResolver;->sendAsync(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    .line 327
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    const/16 v1, 0xfc

    if-ne v0, v1, :cond_0

    .line 330
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 331
    new-instance v1, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1}, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda2;-><init>(Lorg/xbill/DNS/SimpleResolver;Ljava/util/concurrent/CompletableFuture;Lorg/xbill/DNS/Message;)V

    invoke-static {v1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    return-object v0

    .line 345
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->clone()Lorg/xbill/DNS/Message;

    move-result-object p1

    .line 346
    invoke-direct {p0, p1}, Lorg/xbill/DNS/SimpleResolver;->applyEDNS(Lorg/xbill/DNS/Message;)V

    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 348
    invoke-virtual {p1, v0, v1, v2}, Lorg/xbill/DNS/Message;->setTSIG(Lorg/xbill/DNS/TSIG;ILorg/xbill/DNS/TSIGRecord;)V

    :cond_1
    iget-boolean v0, p0, Lorg/xbill/DNS/SimpleResolver;->useTCP:Z

    .line 351
    invoke-virtual {p0, p1, v0, p2}, Lorg/xbill/DNS/SimpleResolver;->sendAsync(Lorg/xbill/DNS/Message;ZLjava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public setAddress(Ljava/net/InetAddress;)V
    .locals 2

    .line 157
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public setAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public synthetic setEDNS(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/xbill/DNS/Resolver$-CC;->$default$setEDNS(Lorg/xbill/DNS/Resolver;I)V

    return-void
.end method

.method public setEDNS(IIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/EDNSOption;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/16 p2, 0x500

    const/16 v1, 0x500

    goto :goto_0

    :cond_0
    move v1, p2

    .line 238
    :goto_0
    new-instance p2, Lorg/xbill/DNS/OPTRecord;

    const/4 v2, 0x0

    move-object v0, p2

    move v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/OPTRecord;-><init>(IIIILjava/util/List;)V

    iput-object p2, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    goto :goto_1

    .line 242
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid EDNS version - must be 0 or -1 to disable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    :goto_1
    return-void
.end method

.method public varargs synthetic setEDNS(III[Lorg/xbill/DNS/EDNSOption;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/xbill/DNS/Resolver$-CC;->$default$setEDNS(Lorg/xbill/DNS/Resolver;III[Lorg/xbill/DNS/EDNSOption;)V

    return-void
.end method

.method public setEDNS(Lorg/xbill/DNS/OPTRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    return-void
.end method

.method public setIgnoreTruncation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/xbill/DNS/SimpleResolver;->ignoreTruncation:Z

    return-void
.end method

.method public setIoClientFactory(Lorg/xbill/DNS/io/IoClientFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->ioClientFactory:Lorg/xbill/DNS/io/IoClientFactory;

    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 2

    .line 175
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public setLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public setPort(I)V
    .locals 2

    .line 139
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public setTCP(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/xbill/DNS/SimpleResolver;->useTCP:Z

    return-void
.end method

.method public setTSIGKey(Lorg/xbill/DNS/TSIG;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    return-void
.end method

.method public synthetic setTimeout(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/xbill/DNS/Resolver$-CC;->$default$setTimeout(Lorg/xbill/DNS/Resolver;I)V

    return-void
.end method

.method public synthetic setTimeout(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/xbill/DNS/Resolver$-CC;->$default$setTimeout(Lorg/xbill/DNS/Resolver;II)V

    return-void
.end method

.method public setTimeout(Ljava/time/Duration;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:Ljava/time/Duration;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimpleResolver ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
