.class final Lorg/xbill/DNS/NioTcpClient;
.super Lorg/xbill/DNS/NioClient;
.source "NioTcpClient.java"

# interfaces
.implements Lorg/xbill/DNS/io/TcpIoClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/NioTcpClient$ChannelState;,
        Lorg/xbill/DNS/NioTcpClient$Transaction;,
        Lorg/xbill/DNS/NioTcpClient$ChannelKey;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final channelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/xbill/DNS/NioTcpClient$ChannelKey;",
            "Lorg/xbill/DNS/NioTcpClient$ChannelState;",
            ">;"
        }
    .end annotation
.end field

.field private final registrationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/xbill/DNS/NioTcpClient$ChannelState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-3a1b9a4lIJK5dyyNmIhzTa-kgI(Lorg/xbill/DNS/NioTcpClient;)V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/NioTcpClient;->closeTcp()V

    return-void
.end method

.method public static synthetic $r8$lambda$9c4qkHdFL4m3I0nnbrHa4mLDXoQ(Lorg/xbill/DNS/NioTcpClient;)V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/NioTcpClient;->checkTransactionTimeouts()V

    return-void
.end method

.method public static synthetic $r8$lambda$kLiIz_asPmrNBqjuAxeC6QUrWdQ(Lorg/xbill/DNS/NioTcpClient;)V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/NioTcpClient;->processPendingRegistrations()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/NioTcpClient;

    .line 24
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/NioTcpClient;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lorg/xbill/DNS/NioClient;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/NioTcpClient;->registrationQueue:Ljava/util/Queue;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/NioTcpClient;->channelMap:Ljava/util/Map;

    .line 30
    new-instance v0, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda4;-><init>(Lorg/xbill/DNS/NioTcpClient;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xbill/DNS/NioTcpClient;->setRegistrationsTask(Ljava/lang/Runnable;Z)V

    .line 31
    new-instance v0, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda5;-><init>(Lorg/xbill/DNS/NioTcpClient;)V

    invoke-static {v0, v1}, Lorg/xbill/DNS/NioTcpClient;->setTimeoutTask(Ljava/lang/Runnable;Z)V

    .line 32
    new-instance v0, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda6;-><init>(Lorg/xbill/DNS/NioTcpClient;)V

    invoke-static {v0, v1}, Lorg/xbill/DNS/NioTcpClient;->setCloseTask(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic access$400(Lorg/xbill/DNS/NioTcpClient;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/xbill/DNS/NioTcpClient;->channelMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/NioTcpClient;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private checkTransactionTimeouts()V
    .locals 8

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient;->channelMap:Ljava/util/Map;

    .line 56
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/NioTcpClient$ChannelState;

    .line 57
    iget-object v1, v1, Lorg/xbill/DNS/NioTcpClient$ChannelState;->pendingTransactions:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/NioTcpClient$Transaction;

    .line 59
    invoke-static {v2}, Lorg/xbill/DNS/NioTcpClient$Transaction;->access$200(Lorg/xbill/DNS/NioTcpClient$Transaction;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    .line 60
    invoke-static {v2}, Lorg/xbill/DNS/NioTcpClient$Transaction;->access$300(Lorg/xbill/DNS/NioTcpClient$Transaction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    new-instance v3, Ljava/net/SocketTimeoutException;

    const-string v4, "Query timed out"

    invoke-direct {v3, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private closeTcp()V
    .locals 3

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient;->registrationQueue:Ljava/util/Queue;

    .line 68
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 69
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Client is closing"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/xbill/DNS/NioTcpClient;->channelMap:Ljava/util/Map;

    .line 70
    new-instance v2, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda3;-><init>(Ljava/io/EOFException;)V

    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient;->channelMap:Ljava/util/Map;

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method static synthetic lambda$closeTcp$0(Ljava/io/EOFException;Lorg/xbill/DNS/NioTcpClient$ChannelKey;Lorg/xbill/DNS/NioTcpClient$ChannelState;)V
    .locals 0

    .line 70
    invoke-virtual {p2, p0}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->handleTransactionException(Ljava/io/IOException;)V

    return-void
.end method

.method private processPendingRegistrations()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient;->registrationQueue:Ljava/util/Queue;

    .line 36
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient;->registrationQueue:Ljava/util/Queue;

    .line 37
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/NioTcpClient$ChannelState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/NioTcpClient;->selector()Ljava/nio/channels/Selector;

    move-result-object v1

    .line 44
    invoke-static {v0}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->access$000(Lorg/xbill/DNS/NioTcpClient$ChannelState;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    invoke-static {v0}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->access$000(Lorg/xbill/DNS/NioTcpClient$ChannelState;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->access$000(Lorg/xbill/DNS/NioTcpClient$ChannelState;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 50
    invoke-static {v0, v1}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->access$100(Lorg/xbill/DNS/NioTcpClient$ChannelState;Ljava/io/IOException;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method synthetic lambda$sendAndReceiveTcp$1$org-xbill-DNS-NioTcpClient(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/util/concurrent/CompletableFuture;Lorg/xbill/DNS/NioTcpClient$ChannelKey;)Lorg/xbill/DNS/NioTcpClient$ChannelState;
    .locals 2

    .line 0
    sget-object p4, Lorg/xbill/DNS/NioTcpClient;->log:Lorg/slf4j/Logger;

    const-string v0, "Opening async channel for l={}/r={}"

    .line 280
    invoke-interface {p4, v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x0

    .line 283
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 284
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    if-eqz p1, :cond_0

    .line 286
    invoke-static {v0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    .line 289
    :cond_0
    invoke-virtual {v0, p2}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 290
    new-instance p1, Lorg/xbill/DNS/NioTcpClient$ChannelState;

    invoke-direct {p1, p0, v0}, Lorg/xbill/DNS/NioTcpClient$ChannelState;-><init>(Lorg/xbill/DNS/NioTcpClient;Ljava/nio/channels/SocketChannel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, p4

    :goto_0
    if-eqz v0, :cond_1

    .line 294
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 299
    :catch_2
    :cond_1
    invoke-static {p3, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object p4
.end method

.method public sendAndReceiveTcp(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/xbill/DNS/Message;[BLjava/time/Duration;)Ljava/util/concurrent/CompletableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/net/InetSocketAddress;",
            "Lorg/xbill/DNS/Message;",
            "[B",
            "Ljava/time/Duration;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "[B>;"
        }
    .end annotation

    .line 272
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/CompletableFuture;

    move-result-object v7

    .line 274
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/NioTcpClient;->selector()Ljava/nio/channels/Selector;

    move-result-object v8

    .line 275
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {p5}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;)J

    move-result-wide v2

    add-long v3, v0, v2

    iget-object p5, p0, Lorg/xbill/DNS/NioTcpClient;->channelMap:Ljava/util/Map;

    .line 276
    new-instance v0, Lorg/xbill/DNS/NioTcpClient$ChannelKey;

    invoke-direct {v0, p1, p2}, Lorg/xbill/DNS/NioTcpClient$ChannelKey;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    new-instance v1, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, v7}, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda2;-><init>(Lorg/xbill/DNS/NioTcpClient;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/util/concurrent/CompletableFuture;)V

    .line 277
    invoke-static {p5, v0, v1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/NioTcpClient$ChannelState;

    if-eqz p1, :cond_0

    sget-object p2, Lorg/xbill/DNS/NioTcpClient;->log:Lorg/slf4j/Logger;

    const-string p5, "Creating transaction for id {} ({}/{})"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 306
    invoke-virtual {p3}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 307
    invoke-virtual {p3}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 308
    invoke-virtual {p3}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 304
    invoke-interface {p2, p5, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    new-instance p2, Lorg/xbill/DNS/NioTcpClient$Transaction;

    invoke-static {p1}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->access$000(Lorg/xbill/DNS/NioTcpClient$ChannelState;)Ljava/nio/channels/SocketChannel;

    move-result-object v5

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/NioTcpClient$Transaction;-><init>(Lorg/xbill/DNS/Message;[BJLjava/nio/channels/SocketChannel;Ljava/util/concurrent/CompletableFuture;)V

    .line 310
    iget-object p3, p1, Lorg/xbill/DNS/NioTcpClient$ChannelState;->pendingTransactions:Ljava/util/Queue;

    invoke-interface {p3, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/xbill/DNS/NioTcpClient;->registrationQueue:Ljava/util/Queue;

    .line 311
    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v8}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 315
    invoke-static {v7, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    return-object v7
.end method
