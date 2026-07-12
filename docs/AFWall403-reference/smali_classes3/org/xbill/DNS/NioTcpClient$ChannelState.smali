.class Lorg/xbill/DNS/NioTcpClient$ChannelState;
.super Ljava/lang/Object;
.source "NioTcpClient.java"

# interfaces
.implements Lorg/xbill/DNS/NioClient$KeyProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/NioTcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelState"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;

.field final pendingTransactions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/xbill/DNS/NioTcpClient$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field readState:I

.field responseData:Ljava/nio/ByteBuffer;

.field responseLengthData:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lorg/xbill/DNS/NioTcpClient;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/NioTcpClient;Ljava/nio/channels/SocketChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->this$0:Lorg/xbill/DNS/NioTcpClient;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->pendingTransactions:Ljava/util/Queue;

    const/4 p1, 0x2

    .line 121
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseLengthData:Ljava/nio/ByteBuffer;

    const p1, 0xffff

    .line 122
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseData:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    iput p1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->readState:I

    iput-object p2, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->channel:Ljava/nio/channels/SocketChannel;

    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/NioTcpClient$ChannelState;)Ljava/nio/channels/SocketChannel;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->channel:Ljava/nio/channels/SocketChannel;

    return-object p0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/NioTcpClient$ChannelState;Ljava/io/IOException;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->handleChannelException(Ljava/io/IOException;)V

    return-void
.end method

.method private handleChannelException(Ljava/io/IOException;)V
    .locals 5

    .line 150
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->handleTransactionException(Ljava/io/IOException;)V

    iget-object p1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->this$0:Lorg/xbill/DNS/NioTcpClient;

    .line 151
    invoke-static {p1}, Lorg/xbill/DNS/NioTcpClient;->access$400(Lorg/xbill/DNS/NioTcpClient;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object p1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->this$0:Lorg/xbill/DNS/NioTcpClient;

    .line 153
    invoke-static {p1}, Lorg/xbill/DNS/NioTcpClient;->access$400(Lorg/xbill/DNS/NioTcpClient;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->channel:Ljava/nio/channels/SocketChannel;

    .line 155
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-static {}, Lorg/xbill/DNS/NioTcpClient;->access$500()Lorg/slf4j/Logger;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/NioTcpClient$ChannelKey;

    iget-object v3, v3, Lorg/xbill/DNS/NioTcpClient$ChannelKey;->local:Ljava/net/InetSocketAddress;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/NioTcpClient$ChannelKey;

    iget-object v0, v0, Lorg/xbill/DNS/NioTcpClient$ChannelKey;->remote:Ljava/net/InetSocketAddress;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "Failed to close channel l={}/r={}"

    .line 157
    invoke-interface {v1, p1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private processConnect(Ljava/nio/channels/SelectionKey;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->channel:Ljava/nio/channels/SocketChannel;

    .line 170
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    const/4 v0, 0x4

    .line 171
    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    invoke-direct {p0, p1}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->handleChannelException(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method private processRead()V
    .locals 8

    :try_start_0
    iget v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->readState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseLengthData:Ljava/nio/ByteBuffer;

    .line 180
    invoke-virtual {v0, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_0

    .line 182
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->handleChannelException(Ljava/io/IOException;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseLengthData:Ljava/nio/ByteBuffer;

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseLengthData:Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v4, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseLengthData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseLengthData:Ljava/nio/ByteBuffer;

    .line 189
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v4, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseData:Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iput v2, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->readState:I

    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseData:Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {v0, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_2

    .line 197
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->handleChannelException(Ljava/io/IOException;)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseData:Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iput v3, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->readState:I

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseData:Ljava/nio/ByteBuffer;

    .line 208
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseData:Ljava/nio/ByteBuffer;

    .line 209
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v4, v0, [B

    iget-object v5, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseData:Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    iget-object v7, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->responseData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 210
    invoke-static {v5, v6, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->channel:Ljava/nio/channels/SocketChannel;

    .line 217
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->channel:Ljava/nio/channels/SocketChannel;

    .line 218
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    const-string v2, "TCP read: response too short for a valid reply, discarding"

    .line 215
    invoke-static {v2, v0, v1, v4}, Lorg/xbill/DNS/NioClient;->verboseLog(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    return-void

    .line 223
    :cond_4
    aget-byte v0, v4, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, v4, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TCP read: transaction id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->channel:Ljava/nio/channels/SocketChannel;

    .line 226
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->channel:Ljava/nio/channels/SocketChannel;

    .line 227
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 224
    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/NioClient;->verboseLog(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    iget-object v1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->pendingTransactions:Ljava/util/Queue;

    .line 230
    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/NioTcpClient$Transaction;

    .line 232
    invoke-static {v2}, Lorg/xbill/DNS/NioTcpClient$Transaction;->access$600(Lorg/xbill/DNS/NioTcpClient$Transaction;)Lorg/xbill/DNS/Message;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getID()I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 234
    invoke-static {v2}, Lorg/xbill/DNS/NioTcpClient$Transaction;->access$300(Lorg/xbill/DNS/NioTcpClient$Transaction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)Z

    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    return-void

    .line 240
    :cond_6
    invoke-static {}, Lorg/xbill/DNS/NioTcpClient;->access$500()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Transaction for answer to id {} not found"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 203
    invoke-direct {p0, v0}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->handleChannelException(Ljava/io/IOException;)V

    return-void
.end method

.method private processWrite(Ljava/nio/channels/SelectionKey;)V
    .locals 3

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->pendingTransactions:Ljava/util/Queue;

    .line 244
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/NioTcpClient$Transaction;

    .line 247
    :try_start_0
    invoke-virtual {v1}, Lorg/xbill/DNS/NioTcpClient$Transaction;->send()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 249
    invoke-static {v1}, Lorg/xbill/DNS/NioTcpClient$Transaction;->access$300(Lorg/xbill/DNS/NioTcpClient$Transaction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 254
    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    return-void
.end method


# virtual methods
.method handleTransactionException(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelState;->pendingTransactions:Ljava/util/Queue;

    .line 142
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/NioTcpClient$Transaction;

    .line 144
    invoke-static {v1}, Lorg/xbill/DNS/NioTcpClient$Transaction;->access$300(Lorg/xbill/DNS/NioTcpClient$Transaction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processReadyKey(Ljava/nio/channels/SelectionKey;)V
    .locals 1

    .line 127
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->processConnect(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0, p1}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->processWrite(Ljava/nio/channels/SelectionKey;)V

    .line 134
    :cond_1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 135
    invoke-direct {p0}, Lorg/xbill/DNS/NioTcpClient$ChannelState;->processRead()V

    :cond_2
    :goto_0
    return-void
.end method
