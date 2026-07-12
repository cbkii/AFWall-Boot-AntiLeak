.class Lorg/xbill/DNS/NioTcpClient$Transaction;
.super Ljava/lang/Object;
.source "NioTcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/NioTcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transaction"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;

.field private final endTime:J

.field private final f:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "[B>;"
        }
    .end annotation
.end field

.field private final query:Lorg/xbill/DNS/Message;

.field private final queryData:[B

.field private sendDone:Z


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/Message;[BJLjava/nio/channels/SocketChannel;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "[BJ",
            "Ljava/nio/channels/SocketChannel;",
            "Ljava/util/concurrent/CompletableFuture<",
            "[B>;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->query:Lorg/xbill/DNS/Message;

    iput-object p2, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->queryData:[B

    iput-wide p3, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->endTime:J

    iput-object p5, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->channel:Ljava/nio/channels/SocketChannel;

    iput-object p6, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->f:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method static synthetic access$200(Lorg/xbill/DNS/NioTcpClient$Transaction;)J
    .locals 2

    .line 75
    iget-wide v0, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->endTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/xbill/DNS/NioTcpClient$Transaction;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->f:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method static synthetic access$600(Lorg/xbill/DNS/NioTcpClient$Transaction;)Lorg/xbill/DNS/Message;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->query:Lorg/xbill/DNS/Message;

    return-object p0
.end method


# virtual methods
.method send()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->sendDone:Z

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TCP write: transaction id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->query:Lorg/xbill/DNS/Message;

    .line 89
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->channel:Ljava/nio/channels/SocketChannel;

    .line 90
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->channel:Ljava/nio/channels/SocketChannel;

    .line 91
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->queryData:[B

    .line 88
    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/NioClient;->verboseLog(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->queryData:[B

    .line 96
    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->queryData:[B

    .line 97
    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->queryData:[B

    .line 98
    array-length v1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->queryData:[B

    .line 99
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 101
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->channel:Ljava/nio/channels/SocketChannel;

    .line 102
    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v3, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->queryData:[B

    .line 107
    array-length v3, v3

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not write all data for transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->query:Lorg/xbill/DNS/Message;

    .line 109
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insufficient room for the data in the underlying output buffer for transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->query:Lorg/xbill/DNS/Message;

    .line 106
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/NioTcpClient$Transaction;->sendDone:Z

    return-void
.end method
