.class public Lorg/xbill/DNS/spi/DNSJavaNameService;
.super Ljava/lang/Object;
.source "DNSJavaNameService.java"

# interfaces
.implements Lsun/net/spi/nameservice/NameService;


# static fields
.field private static final DOMAIN_PROPERTY:Ljava/lang/String; = "sun.net.spi.nameservice.domain"

.field private static final NAMESERVERS_PROPERTY:Ljava/lang/String; = "sun.net.spi.nameservice.nameservers"

.field private static final PREFER_V6_PROPERTY:Ljava/lang/String; = "java.net.preferIPv6Addresses"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private addressesLoaded:Z

.field private localhostAddresses:[Ljava/net/InetAddress;

.field private localhostName:Lorg/xbill/DNS/Name;

.field private localhostNamedAddresses:[Ljava/net/InetAddress;

.field private final preferV6:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/spi/DNSJavaNameService;

    .line 36
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/spi/DNSJavaNameService;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 11

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->localhostName:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->localhostNamedAddresses:[Ljava/net/InetAddress;

    iput-object v0, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->localhostAddresses:[Ljava/net/InetAddress;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->addressesLoaded:Z

    const-string v2, "java.net.preferIPv6Addresses"

    .line 56
    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    const-string v2, "sun.net.spi.nameservice.nameservers"

    .line 57
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sun.net.spi.nameservice.domain"

    .line 58
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DNSJavaNameService: invalid {}"

    if-eqz v3, :cond_1

    .line 61
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, ","

    invoke-direct {v7, v3, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 64
    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 65
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    move v8, v9

    goto :goto_0

    .line 68
    :cond_0
    :try_start_0
    new-instance v7, Lorg/xbill/DNS/ExtendedResolver;

    invoke-direct {v7, v3}, Lorg/xbill/DNS/ExtendedResolver;-><init>([Ljava/lang/String;)V

    .line 69
    invoke-static {v7}, Lorg/xbill/DNS/Lookup;->setDefaultResolver(Lorg/xbill/DNS/Resolver;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v3, Lorg/xbill/DNS/spi/DNSJavaNameService;->log:Lorg/slf4j/Logger;

    .line 71
    invoke-interface {v3, v6, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 77
    :try_start_1
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/Lookup;->setDefaultSearchPath([Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    sget-object v2, Lorg/xbill/DNS/spi/DNSJavaNameService;->log:Lorg/slf4j/Logger;

    .line 79
    invoke-interface {v2, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_2
    :try_start_2
    const-string v2, "java.net.InetAddressImplFactory"

    .line 85
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "create"

    new-array v4, v1, [Ljava/lang/Class;

    .line 86
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 89
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "java.net.InetAddressImpl"

    .line 90
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getLocalHostName"

    new-array v5, v1, [Ljava/lang/Class;

    .line 91
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 92
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v1, [Ljava/lang/Object;

    .line 94
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v4

    iput-object v4, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->localhostName:Lorg/xbill/DNS/Name;

    const-string v4, "lookupAllHostAddr"

    new-array v5, v3, [Ljava/lang/Class;

    .line 95
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    .line 96
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->localhostName:Lorg/xbill/DNS/Name;

    .line 100
    invoke-virtual {v5}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/net/InetAddress;

    iput-object v4, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->localhostNamedAddresses:[Ljava/net/InetAddress;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "localhost"

    aput-object v5, v4, v1

    .line 102
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    iput-object v0, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->localhostAddresses:[Ljava/net/InetAddress;

    iput-boolean v3, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->addressesLoaded:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    sget-object v1, Lorg/xbill/DNS/spi/DNSJavaNameService;->log:Lorg/slf4j/Logger;

    const-string v2, "Could not obtain localhost"

    .line 105
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getHostByAddr([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 169
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object p1

    .line 170
    new-instance v0, Lorg/xbill/DNS/Lookup;

    const/16 v1, 0xc

    invoke-direct {v0, p1, v1}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v0}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 174
    aget-object p1, v0, p1

    check-cast p1, Lorg/xbill/DNS/PTRRecord;

    invoke-virtual {p1}, Lorg/xbill/DNS/PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 172
    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown address: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lookupAllHostAddr(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 119
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v1, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->addressesLoaded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->localhostName:Lorg/xbill/DNS/Name;

    .line 127
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->localhostNamedAddresses:[Ljava/net/InetAddress;

    return-object p1

    :cond_0
    const-string v1, "localhost"

    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->localhostAddresses:[Ljava/net/InetAddress;

    return-object p1

    :cond_1
    iget-boolean v1, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    const/16 v2, 0x1c

    if-eqz v1, :cond_2

    .line 136
    new-instance v1, Lorg/xbill/DNS/Lookup;

    invoke-direct {v1, v0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 139
    new-instance v1, Lorg/xbill/DNS/Lookup;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    iget-boolean v3, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    if-nez v3, :cond_4

    .line 142
    new-instance v1, Lorg/xbill/DNS/Lookup;

    invoke-direct {v1, v0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_7

    .line 148
    array-length p1, v1

    new-array p1, p1, [Ljava/net/InetAddress;

    const/4 v0, 0x0

    .line 149
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_6

    .line 150
    aget-object v2, v1, v0

    instance-of v3, v2, Lorg/xbill/DNS/ARecord;

    if-eqz v3, :cond_5

    .line 151
    check-cast v2, Lorg/xbill/DNS/ARecord;

    .line 152
    invoke-virtual {v2}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, p1, v0

    goto :goto_2

    .line 154
    :cond_5
    check-cast v2, Lorg/xbill/DNS/AAAARecord;

    .line 155
    invoke-virtual {v2}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, p1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p1

    .line 145
    :cond_7
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :catch_0
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
