.class final Lorg/xbill/DNS/config/WindowsResolverConfigProvider$InnerWindowsResolverConfigProvider;
.super Lorg/xbill/DNS/config/BaseResolverConfigProvider;
.source "WindowsResolverConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/config/WindowsResolverConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerWindowsResolverConfigProvider"
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lorg/xbill/DNS/config/WindowsResolverConfigProvider$InnerWindowsResolverConfigProvider;

    .line 49
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/config/WindowsResolverConfigProvider$InnerWindowsResolverConfigProvider;->log:Lorg/slf4j/Logger;

    .line 52
    const-class v1, Lcom/sun/jna/Memory;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sun/jna/platform/win32/Win32Exception;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Checking for JNA classes: {} and {}"

    .line 52
    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/xbill/DNS/config/BaseResolverConfigProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xbill/DNS/config/WindowsResolverConfigProvider$1;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/xbill/DNS/config/WindowsResolverConfigProvider$InnerWindowsResolverConfigProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/config/InitializationException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/xbill/DNS/config/WindowsResolverConfigProvider$InnerWindowsResolverConfigProvider;->reset()V

    .line 63
    new-instance v6, Lcom/sun/jna/Memory;

    const-wide/16 v0, 0x3c00

    invoke-direct {v6, v0, v1}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 64
    new-instance v12, Lcom/sun/jna/ptr/IntByReference;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    const/16 v9, 0x27

    .line 70
    sget-object v0, Lorg/xbill/DNS/config/IPHlpAPI;->INSTANCE:Lorg/xbill/DNS/config/IPHlpAPI;

    const/4 v1, 0x0

    sget-object v3, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    move v2, v9

    move-object v4, v6

    move-object v5, v12

    invoke-interface/range {v0 .. v5}, Lorg/xbill/DNS/config/IPHlpAPI;->GetAdaptersAddresses(IILcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1

    .line 72
    new-instance v6, Lcom/sun/jna/Memory;

    invoke-virtual {v12}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v6, v0, v1}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 73
    sget-object v7, Lorg/xbill/DNS/config/IPHlpAPI;->INSTANCE:Lorg/xbill/DNS/config/IPHlpAPI;

    const/4 v8, 0x0

    sget-object v10, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    move-object v11, v6

    invoke-interface/range {v7 .. v12}, Lorg/xbill/DNS/config/IPHlpAPI;->GetAdaptersAddresses(IILcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v1, Lorg/xbill/DNS/config/InitializationException;

    new-instance v2, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v2, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    invoke-direct {v1, v2}, Lorg/xbill/DNS/config/InitializationException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 79
    :cond_1
    :goto_0
    new-instance v0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;

    invoke-direct {v0, v6}, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;-><init>(Lcom/sun/jna/Pointer;)V

    .line 82
    :cond_2
    iget v1, v0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->OperStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 83
    iget-object v1, v0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->FirstDnsServerAddress:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SERVER_ADDRESS_XP$ByReference;

    :goto_1
    if-eqz v1, :cond_5

    .line 87
    :try_start_0
    iget-object v2, v1, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SERVER_ADDRESS_XP;->Address:Lorg/xbill/DNS/config/IPHlpAPI$SOCKET_ADDRESS;

    invoke-virtual {v2}, Lorg/xbill/DNS/config/IPHlpAPI$SOCKET_ADDRESS;->toAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 88
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    sget-object v3, Lorg/xbill/DNS/config/WindowsResolverConfigProvider$InnerWindowsResolverConfigProvider;->log:Lorg/slf4j/Logger;

    const-string v4, "Skipped site-local IPv6 server address {} on adapter index {}"

    .line 91
    iget v5, v0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->IfIndex:I

    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 91
    invoke-interface {v3, v4, v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 89
    :cond_4
    :goto_2
    new-instance v3, Ljava/net/InetSocketAddress;

    const/16 v4, 0x35

    invoke-direct {v3, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/config/WindowsResolverConfigProvider$InnerWindowsResolverConfigProvider;->addNameserver(Ljava/net/InetSocketAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    sget-object v3, Lorg/xbill/DNS/config/WindowsResolverConfigProvider$InnerWindowsResolverConfigProvider;->log:Lorg/slf4j/Logger;

    .line 97
    iget v4, v0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->IfIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Invalid nameserver address on adapter index {}"

    invoke-interface {v3, v5, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    :goto_3
    iget-object v1, v1, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SERVER_ADDRESS_XP;->Next:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SERVER_ADDRESS_XP$ByReference;

    goto :goto_1

    .line 103
    :cond_5
    iget-object v1, v0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->DnsSuffix:Lcom/sun/jna/WString;

    invoke-virtual {v1}, Lcom/sun/jna/WString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/config/WindowsResolverConfigProvider$InnerWindowsResolverConfigProvider;->addSearchPath(Ljava/lang/String;)V

    .line 104
    iget-object v1, v0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->FirstDnsSuffix:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SUFFIX$ByReference;

    :goto_4
    if-eqz v1, :cond_6

    .line 106
    iget-object v2, v1, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SUFFIX;->_String:[C

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/config/WindowsResolverConfigProvider$InnerWindowsResolverConfigProvider;->addSearchPath(Ljava/lang/String;)V

    .line 107
    iget-object v1, v1, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SUFFIX;->Next:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SUFFIX$ByReference;

    goto :goto_4

    .line 111
    :cond_6
    iget-object v0, v0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->Next:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH$ByReference;

    if-nez v0, :cond_2

    return-void
.end method
