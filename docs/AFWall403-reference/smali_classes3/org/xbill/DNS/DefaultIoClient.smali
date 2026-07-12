.class public Lorg/xbill/DNS/DefaultIoClient;
.super Ljava/lang/Object;
.source "DefaultIoClient.java"

# interfaces
.implements Lorg/xbill/DNS/io/TcpIoClient;
.implements Lorg/xbill/DNS/io/UdpIoClient;


# instance fields
.field private final tcpIoClient:Lorg/xbill/DNS/io/TcpIoClient;

.field private final udpIoClient:Lorg/xbill/DNS/io/UdpIoClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/xbill/DNS/NioTcpClient;

    invoke-direct {v0}, Lorg/xbill/DNS/NioTcpClient;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/DefaultIoClient;->tcpIoClient:Lorg/xbill/DNS/io/TcpIoClient;

    .line 23
    new-instance v0, Lorg/xbill/DNS/NioUdpClient;

    invoke-direct {v0}, Lorg/xbill/DNS/NioUdpClient;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/DefaultIoClient;->udpIoClient:Lorg/xbill/DNS/io/UdpIoClient;

    return-void
.end method


# virtual methods
.method public sendAndReceiveTcp(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/xbill/DNS/Message;[BLjava/time/Duration;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
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

    iget-object v0, p0, Lorg/xbill/DNS/DefaultIoClient;->tcpIoClient:Lorg/xbill/DNS/io/TcpIoClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 33
    invoke-interface/range {v0 .. v5}, Lorg/xbill/DNS/io/TcpIoClient;->sendAndReceiveTcp(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/xbill/DNS/Message;[BLjava/time/Duration;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public sendAndReceiveUdp(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/xbill/DNS/Message;[BILjava/time/Duration;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
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

    iget-object v0, p0, Lorg/xbill/DNS/DefaultIoClient;->udpIoClient:Lorg/xbill/DNS/io/UdpIoClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 44
    invoke-interface/range {v0 .. v6}, Lorg/xbill/DNS/io/UdpIoClient;->sendAndReceiveUdp(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/xbill/DNS/Message;[BILjava/time/Duration;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
