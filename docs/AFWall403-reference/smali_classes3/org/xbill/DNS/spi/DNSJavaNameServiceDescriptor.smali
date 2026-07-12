.class public Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;
.super Ljava/lang/Object;
.source "DNSJavaNameServiceDescriptor.java"

# interfaces
.implements Lsun/net/spi/nameservice/NameServiceDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNameService()Lsun/net/spi/nameservice/NameService;
    .locals 1

    .line 19
    new-instance v0, Lorg/xbill/DNS/spi/DNSJavaNameService;

    invoke-direct {v0}, Lorg/xbill/DNS/spi/DNSJavaNameService;-><init>()V

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    const-string v0, "dnsjava"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "dns"

    return-object v0
.end method
