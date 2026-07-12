.class public Lorg/xbill/DNS/io/DefaultIoClientFactory;
.super Ljava/lang/Object;
.source "DefaultIoClientFactory.java"

# interfaces
.implements Lorg/xbill/DNS/io/IoClientFactory;


# static fields
.field private static final RESOLVER_CLIENT:Lorg/xbill/DNS/DefaultIoClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/xbill/DNS/DefaultIoClient;

    invoke-direct {v0}, Lorg/xbill/DNS/DefaultIoClient;-><init>()V

    sput-object v0, Lorg/xbill/DNS/io/DefaultIoClientFactory;->RESOLVER_CLIENT:Lorg/xbill/DNS/DefaultIoClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createOrGetTcpClient()Lorg/xbill/DNS/io/TcpIoClient;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/io/DefaultIoClientFactory;->RESOLVER_CLIENT:Lorg/xbill/DNS/DefaultIoClient;

    return-object v0
.end method

.method public createOrGetUdpClient()Lorg/xbill/DNS/io/UdpIoClient;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/io/DefaultIoClientFactory;->RESOLVER_CLIENT:Lorg/xbill/DNS/DefaultIoClient;

    return-object v0
.end method
