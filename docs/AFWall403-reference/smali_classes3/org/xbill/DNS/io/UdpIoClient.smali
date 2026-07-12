.class public interface abstract Lorg/xbill/DNS/io/UdpIoClient;
.super Ljava/lang/Object;
.source "UdpIoClient.java"


# virtual methods
.method public abstract sendAndReceiveUdp(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/xbill/DNS/Message;[BILjava/time/Duration;)Ljava/util/concurrent/CompletableFuture;
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
.end method
