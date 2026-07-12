.class Lorg/xbill/DNS/NioTcpClient$ChannelKey;
.super Ljava/lang/Object;
.source "NioTcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/NioTcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelKey"
.end annotation


# instance fields
.field final local:Ljava/net/InetSocketAddress;

.field final remote:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelKey;->local:Ljava/net/InetSocketAddress;

    iput-object p2, p0, Lorg/xbill/DNS/NioTcpClient$ChannelKey;->remote:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 259
    instance-of p1, p1, Lorg/xbill/DNS/NioTcpClient$ChannelKey;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 259
    :cond_0
    instance-of v1, p1, Lorg/xbill/DNS/NioTcpClient$ChannelKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/xbill/DNS/NioTcpClient$ChannelKey;

    invoke-virtual {p1, p0}, Lorg/xbill/DNS/NioTcpClient$ChannelKey;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelKey;->local:Ljava/net/InetSocketAddress;

    iget-object v3, p1, Lorg/xbill/DNS/NioTcpClient$ChannelKey;->local:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lorg/xbill/DNS/NioTcpClient$ChannelKey;->remote:Ljava/net/InetSocketAddress;

    iget-object p1, p1, Lorg/xbill/DNS/NioTcpClient$ChannelKey;->remote:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/xbill/DNS/NioTcpClient$ChannelKey;->local:Ljava/net/InetSocketAddress;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lorg/xbill/DNS/NioTcpClient$ChannelKey;->remote:Ljava/net/InetSocketAddress;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
