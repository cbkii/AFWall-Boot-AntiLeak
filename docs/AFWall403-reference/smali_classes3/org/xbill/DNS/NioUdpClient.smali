.class final Lorg/xbill/DNS/NioUdpClient;
.super Lorg/xbill/DNS/NioClient;
.source "NioUdpClient.java"

# interfaces
.implements Lorg/xbill/DNS/io/UdpIoClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/NioUdpClient$Transaction;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final ephemeralRange:I

.field private final ephemeralStart:I

.field private final pendingTransactions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/xbill/DNS/NioUdpClient$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final prng:Ljava/security/SecureRandom;

.field private final registrationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/xbill/DNS/NioUdpClient$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AN-LpLhxkKbJYUlnBm_yeOuryJE(Lorg/xbill/DNS/NioUdpClient;)V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/NioUdpClient;->closeUdp()V

    return-void
.end method

.method public static synthetic $r8$lambda$rnKv1TLQbyOrpK4xYwvNb6xlBiQ(Lorg/xbill/DNS/NioUdpClient;)V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/NioUdpClient;->processPendingRegistrations()V

    return-void
.end method

.method public static synthetic $r8$lambda$wWuqkvhUZYRkN1QswNlM0Wk9abU(Lorg/xbill/DNS/NioUdpClient;)V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/NioUdpClient;->checkTransactionTimeouts()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/NioUdpClient;

    .line 23
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/NioUdpClient;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lorg/xbill/DNS/NioClient;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/NioUdpClient;->registrationQueue:Ljava/util/Queue;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/NioUdpClient;->pendingTransactions:Ljava/util/Queue;

    const-string v0, "os.name"

    .line 38
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    const v1, 0xee47

    goto :goto_0

    :cond_0
    const v0, 0xc000

    const v1, 0xffff

    :goto_0
    const-string v2, "dnsjava.udp.ephemeral.start"

    .line 43
    invoke-static {v2, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NioUdpClient;->ephemeralStart:I

    const-string v2, "dnsjava.udp.ephemeral.end"

    .line 44
    invoke-static {v2, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/xbill/DNS/NioUdpClient;->ephemeralRange:I

    const-string v0, "dnsjava.udp.ephemeral.use_ephemeral_port"

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/NioUdpClient;->prng:Ljava/security/SecureRandom;

    goto :goto_1

    .line 50
    :cond_1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/NioUdpClient;->prng:Ljava/security/SecureRandom;

    .line 52
    :goto_1
    new-instance v0, Lorg/xbill/DNS/NioUdpClient$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/NioUdpClient$$ExternalSyntheticLambda2;-><init>(Lorg/xbill/DNS/NioUdpClient;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/NioUdpClient;->setRegistrationsTask(Ljava/lang/Runnable;Z)V

    .line 53
    new-instance v0, Lorg/xbill/DNS/NioUdpClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/NioUdpClient$$ExternalSyntheticLambda3;-><init>(Lorg/xbill/DNS/NioUdpClient;)V

    invoke-static {v0, v1}, Lorg/xbill/DNS/NioUdpClient;->setTimeoutTask(Ljava/lang/Runnable;Z)V

    .line 54
    new-instance v0, Lorg/xbill/DNS/NioUdpClient$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/NioUdpClient$$ExternalSyntheticLambda4;-><init>(Lorg/xbill/DNS/NioUdpClient;)V

    invoke-static {v0, v1}, Lorg/xbill/DNS/NioUdpClient;->setCloseTask(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic access$400(Lorg/xbill/DNS/NioUdpClient;)Ljava/util/Queue;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/xbill/DNS/NioUdpClient;->pendingTransactions:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$500(Ljava/nio/channels/DatagramChannel;)V
    .locals 0

    .line 24
    invoke-static {p0}, Lorg/xbill/DNS/NioUdpClient;->silentCloseChannel(Ljava/nio/channels/DatagramChannel;)V

    return-void
.end method

.method private checkTransactionTimeouts()V
    .locals 7

    iget-object v0, p0, Lorg/xbill/DNS/NioUdpClient;->pendingTransactions:Ljava/util/Queue;

    .line 75
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/NioUdpClient$Transaction;

    .line 77
    invoke-static {v1}, Lorg/xbill/DNS/NioUdpClient$Transaction;->access$300(Lorg/xbill/DNS/NioUdpClient$Transaction;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 78
    new-instance v2, Ljava/net/SocketTimeoutException;

    const-string v3, "Query timed out"

    invoke-direct {v2, v3}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/xbill/DNS/NioUdpClient$Transaction;->access$200(Lorg/xbill/DNS/NioUdpClient$Transaction;Ljava/lang/Exception;)V

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private closeUdp()V
    .locals 3

    iget-object v0, p0, Lorg/xbill/DNS/NioUdpClient;->registrationQueue:Ljava/util/Queue;

    .line 237
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 238
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Client is closing"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/xbill/DNS/NioUdpClient;->pendingTransactions:Ljava/util/Queue;

    .line 239
    new-instance v2, Lorg/xbill/DNS/NioUdpClient$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/NioUdpClient$$ExternalSyntheticLambda5;-><init>(Ljava/io/EOFException;)V

    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Queue;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lorg/xbill/DNS/NioUdpClient;->pendingTransactions:Ljava/util/Queue;

    .line 240
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method static synthetic lambda$closeUdp$0(Ljava/io/EOFException;Lorg/xbill/DNS/NioUdpClient$Transaction;)V
    .locals 0

    .line 239
    invoke-static {p1, p0}, Lorg/xbill/DNS/NioUdpClient$Transaction;->access$200(Lorg/xbill/DNS/NioUdpClient$Transaction;Ljava/lang/Exception;)V

    return-void
.end method

.method private processPendingRegistrations()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/NioUdpClient;->registrationQueue:Ljava/util/Queue;

    .line 58
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/NioUdpClient;->registrationQueue:Ljava/util/Queue;

    .line 59
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/NioUdpClient$Transaction;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lorg/xbill/DNS/NioUdpClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Registering OP_READ for transaction with id {}"

    .line 65
    invoke-static {v0}, Lorg/xbill/DNS/NioUdpClient$Transaction;->access$000(Lorg/xbill/DNS/NioUdpClient$Transaction;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-static {v0}, Lorg/xbill/DNS/NioUdpClient$Transaction;->access$100(Lorg/xbill/DNS/NioUdpClient$Transaction;)Ljava/nio/channels/DatagramChannel;

    move-result-object v1

    invoke-static {}, Lorg/xbill/DNS/NioUdpClient;->selector()Ljava/nio/channels/Selector;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 67
    invoke-virtual {v0}, Lorg/xbill/DNS/NioUdpClient$Transaction;->send()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 69
    invoke-static {v0, v1}, Lorg/xbill/DNS/NioUdpClient$Transaction;->access$200(Lorg/xbill/DNS/NioUdpClient$Transaction;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static silentCloseChannel(Ljava/nio/channels/DatagramChannel;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public sendAndReceiveUdp(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/xbill/DNS/Message;[BILjava/time/Duration;)Ljava/util/concurrent/CompletableFuture;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/net/InetSocketAddress;",
            "Lorg/xbill/DNS/Message;",
            "[BI",
            "Ljava/time/Duration;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "[B>;"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 169
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static/range {p6 .. p6}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;)J

    move-result-wide v2

    add-long v6, v0, v2

    .line 170
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/CompletableFuture;

    move-result-object v11

    const/4 v12, 0x0

    .line 173
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/NioUdpClient;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    .line 174
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v14, 0x0

    .line 175
    :try_start_1
    invoke-virtual {v13, v14}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 177
    new-instance v15, Lorg/xbill/DNS/NioUdpClient$Transaction;

    invoke-virtual/range {p3 .. p3}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v3

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v8, v13

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lorg/xbill/DNS/NioUdpClient$Transaction;-><init>(Lorg/xbill/DNS/NioUdpClient;I[BIJLjava/nio/channels/DatagramChannel;Ljava/util/concurrent/CompletableFuture;)V

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object/from16 v1, p2

    goto :goto_3

    :cond_1
    :goto_1
    const/16 v1, 0x400

    if-ge v14, v1, :cond_5

    if-nez p1, :cond_3

    :try_start_2
    iget-object v1, v10, Lorg/xbill/DNS/NioUdpClient;->prng:Ljava/security/SecureRandom;

    if-eqz v1, :cond_2

    .line 185
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, v10, Lorg/xbill/DNS/NioUdpClient;->prng:Ljava/security/SecureRandom;

    iget v3, v10, Lorg/xbill/DNS/NioUdpClient;->ephemeralRange:I

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    iget v3, v10, Lorg/xbill/DNS/NioUdpClient;->ephemeralStart:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_2

    :cond_2
    move-object v1, v12

    goto :goto_2

    .line 188
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v2, v10, Lorg/xbill/DNS/NioUdpClient;->prng:Ljava/security/SecureRandom;

    if-eqz v2, :cond_4

    iget v1, v10, Lorg/xbill/DNS/NioUdpClient;->ephemeralRange:I

    .line 190
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    iget v2, v10, Lorg/xbill/DNS/NioUdpClient;->ephemeralStart:I

    add-int/2addr v1, v2

    .line 193
    :cond_4
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v1, v2

    .line 196
    :goto_2
    invoke-static {v13, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 210
    :goto_3
    :try_start_3
    invoke-virtual {v13, v1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    iget-object v1, v10, Lorg/xbill/DNS/NioUdpClient;->pendingTransactions:Ljava/util/Queue;

    .line 211
    invoke-interface {v1, v15}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, v10, Lorg/xbill/DNS/NioUdpClient;->registrationQueue:Ljava/util/Queue;

    .line 212
    invoke-interface {v1, v15}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    goto :goto_6

    :catch_0
    move-object/from16 v1, p2

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 205
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No available source port found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v15, v0}, Lorg/xbill/DNS/NioUdpClient$Transaction;->access$200(Lorg/xbill/DNS/NioUdpClient$Transaction;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v11

    :catchall_0
    move-exception v0

    move-object v12, v13

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v12, v13

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 219
    :goto_4
    invoke-static {v12}, Lorg/xbill/DNS/NioUdpClient;->silentCloseChannel(Ljava/nio/channels/DatagramChannel;)V

    .line 220
    throw v0

    :catch_2
    move-exception v0

    .line 215
    :goto_5
    invoke-static {v12}, Lorg/xbill/DNS/NioUdpClient;->silentCloseChannel(Ljava/nio/channels/DatagramChannel;)V

    .line 216
    invoke-static {v11, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    :goto_6
    return-object v11
.end method
