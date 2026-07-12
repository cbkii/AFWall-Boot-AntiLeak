.class Lorg/xbill/DNS/NioUdpClient$Transaction;
.super Ljava/lang/Object;
.source "NioUdpClient.java"

# interfaces
.implements Lorg/xbill/DNS/NioClient$KeyProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/NioUdpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transaction"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/DatagramChannel;

.field private final data:[B

.field private final endTime:J

.field private final f:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "[B>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final max:I

.field final synthetic this$0:Lorg/xbill/DNS/NioUdpClient;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/NioUdpClient;I[BIJLjava/nio/channels/DatagramChannel;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BIJ",
            "Ljava/nio/channels/DatagramChannel;",
            "Ljava/util/concurrent/CompletableFuture<",
            "[B>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->this$0:Lorg/xbill/DNS/NioUdpClient;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->id:I

    iput-object p3, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->data:[B

    iput p4, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->max:I

    iput-wide p5, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->endTime:J

    iput-object p7, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->channel:Ljava/nio/channels/DatagramChannel;

    iput-object p8, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->f:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/NioUdpClient$Transaction;)I
    .locals 0

    .line 85
    iget p0, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->id:I

    return p0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/NioUdpClient$Transaction;)Ljava/nio/channels/DatagramChannel;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->channel:Ljava/nio/channels/DatagramChannel;

    return-object p0
.end method

.method static synthetic access$200(Lorg/xbill/DNS/NioUdpClient$Transaction;Ljava/lang/Exception;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/xbill/DNS/NioUdpClient$Transaction;->completeExceptionally(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lorg/xbill/DNS/NioUdpClient$Transaction;)J
    .locals 2

    .line 85
    iget-wide v0, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->endTime:J

    return-wide v0
.end method

.method private completeExceptionally(Ljava/lang/Exception;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Lorg/xbill/DNS/NioUdpClient$Transaction;->silentDisconnectAndCloseChannel()V

    iget-object v0, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->f:Ljava/util/concurrent/CompletableFuture;

    .line 147
    invoke-static {v0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-void
.end method

.method private silentDisconnectAndCloseChannel()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->channel:Ljava/nio/channels/DatagramChannel;

    .line 152
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->channel:Ljava/nio/channels/DatagramChannel;

    .line 156
    invoke-static {v1}, Lorg/xbill/DNS/NioUdpClient;->access$500(Ljava/nio/channels/DatagramChannel;)V

    .line 157
    throw v0

    :catch_0
    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->channel:Ljava/nio/channels/DatagramChannel;

    .line 156
    invoke-static {v0}, Lorg/xbill/DNS/NioUdpClient;->access$500(Ljava/nio/channels/DatagramChannel;)V

    return-void
.end method


# virtual methods
.method public processReadyKey(Ljava/nio/channels/SelectionKey;)V
    .locals 4

    .line 112
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key for transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not readable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/xbill/DNS/NioUdpClient$Transaction;->completeExceptionally(Ljava/lang/Exception;)V

    iget-object p1, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->this$0:Lorg/xbill/DNS/NioUdpClient;

    .line 114
    invoke-static {p1}, Lorg/xbill/DNS/NioUdpClient;->access$400(Lorg/xbill/DNS/NioUdpClient;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/DatagramChannel;

    iget v0, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->max:I

    .line 119
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 122
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_1

    .line 132
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 133
    new-array v2, v1, [B

    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UDP read: transaction id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 138
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    .line 135
    invoke-static {v0, v1, p1, v2}, Lorg/xbill/DNS/NioClient;->verboseLog(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    .line 140
    invoke-direct {p0}, Lorg/xbill/DNS/NioUdpClient$Transaction;->silentDisconnectAndCloseChannel()V

    iget-object p1, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->f:Ljava/util/concurrent/CompletableFuture;

    .line 141
    invoke-static {p1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->this$0:Lorg/xbill/DNS/NioUdpClient;

    .line 142
    invoke-static {p1}, Lorg/xbill/DNS/NioUdpClient;->access$400(Lorg/xbill/DNS/NioUdpClient;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void

    .line 124
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 127
    invoke-direct {p0, p1}, Lorg/xbill/DNS/NioUdpClient$Transaction;->completeExceptionally(Ljava/lang/Exception;)V

    iget-object p1, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->this$0:Lorg/xbill/DNS/NioUdpClient;

    .line 128
    invoke-static {p1}, Lorg/xbill/DNS/NioUdpClient;->access$400(Lorg/xbill/DNS/NioUdpClient;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method send()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->data:[B

    .line 94
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UDP write: transaction id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->channel:Ljava/nio/channels/DatagramChannel;

    .line 97
    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->channel:Ljava/nio/channels/DatagramChannel;

    .line 98
    invoke-virtual {v3}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    iget-object v4, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->data:[B

    .line 95
    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/NioClient;->verboseLog(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    iget-object v1, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->channel:Ljava/nio/channels/DatagramChannel;

    .line 100
    invoke-virtual {v1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->data:[B

    .line 105
    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not send all data for transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insufficient room for the datagram in the underlying output buffer for transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xbill/DNS/NioUdpClient$Transaction;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
