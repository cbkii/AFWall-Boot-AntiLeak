.class public final synthetic Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/NioTcpClient;

.field public final synthetic f$1:Ljava/net/InetSocketAddress;

.field public final synthetic f$2:Ljava/net/InetSocketAddress;

.field public final synthetic f$3:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/NioTcpClient;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda2;->f$0:Lorg/xbill/DNS/NioTcpClient;

    iput-object p2, p0, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda2;->f$1:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda2;->f$2:Ljava/net/InetSocketAddress;

    iput-object p4, p0, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda2;->f$0:Lorg/xbill/DNS/NioTcpClient;

    iget-object v1, p0, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda2;->f$1:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda2;->f$2:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/xbill/DNS/NioTcpClient$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Lorg/xbill/DNS/NioTcpClient$ChannelKey;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/xbill/DNS/NioTcpClient;->lambda$sendAndReceiveTcp$1$org-xbill-DNS-NioTcpClient(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/util/concurrent/CompletableFuture;Lorg/xbill/DNS/NioTcpClient$ChannelKey;)Lorg/xbill/DNS/NioTcpClient$ChannelState;

    move-result-object p1

    return-object p1
.end method
