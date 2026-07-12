.class public Lorg/xbill/DNS/config/IPHlpAPI$SOCKET_ADDRESS;
.super Lcom/sun/jna/Structure;
.source "IPHlpAPI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "lpSockaddr",
        "iSockaddrLength"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/config/IPHlpAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SOCKET_ADDRESS"
.end annotation


# instance fields
.field public iSockaddrLength:I

.field public lpSockaddr:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method toAddress()Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/config/IPHlpAPI$SOCKET_ADDRESS;->lpSockaddr:Lcom/sun/jna/Pointer;

    const-wide/16 v1, 0x0

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getShort(J)S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in6;

    iget-object v1, p0, Lorg/xbill/DNS/config/IPHlpAPI$SOCKET_ADDRESS;->lpSockaddr:Lcom/sun/jna/Pointer;

    invoke-direct {v0, v1}, Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in6;-><init>(Lcom/sun/jna/Pointer;)V

    .line 74
    iget-object v1, v0, Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in6;->sin6_addr:[B

    iget v0, v0, Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in6;->sin6_scope_id:I

    const-string v2, ""

    invoke-static {v2, v1, v0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in;

    iget-object v1, p0, Lorg/xbill/DNS/config/IPHlpAPI$SOCKET_ADDRESS;->lpSockaddr:Lcom/sun/jna/Pointer;

    invoke-direct {v0, v1}, Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in;-><init>(Lcom/sun/jna/Pointer;)V

    .line 71
    iget-object v0, v0, Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in;->sin_addr:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
