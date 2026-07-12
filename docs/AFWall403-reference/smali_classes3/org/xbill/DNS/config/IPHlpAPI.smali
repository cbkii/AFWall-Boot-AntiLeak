.class interface abstract Lorg/xbill/DNS/config/IPHlpAPI;
.super Ljava/lang/Object;
.source "IPHlpAPI.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;,
        Lorg/xbill/DNS/config/IPHlpAPI$LUID;,
        Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SUFFIX;,
        Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_MULTICAST_ADDRESS_XP;,
        Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ANYCAST_ADDRESS_XP;,
        Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SERVER_ADDRESS_XP;,
        Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_UNICAST_ADDRESS_LH;,
        Lorg/xbill/DNS/config/IPHlpAPI$SOCKET_ADDRESS;,
        Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in6;,
        Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in;
    }
.end annotation


# static fields
.field public static final AF_INET:I = 0x2

.field public static final AF_INET6:I = 0x17

.field public static final AF_UNSPEC:I = 0x0

.field public static final GAA_FLAG_INCLUDE_ALL_COMPARTMENTS:I = 0x200

.field public static final GAA_FLAG_INCLUDE_ALL_INTERFACES:I = 0x100

.field public static final GAA_FLAG_INCLUDE_GATEWAYS:I = 0x80

.field public static final GAA_FLAG_INCLUDE_PREFIX:I = 0x10

.field public static final GAA_FLAG_INCLUDE_TUNNEL_BINDINGORDER:I = 0x400

.field public static final GAA_FLAG_INCLUDE_WINS_INFO:I = 0x40

.field public static final GAA_FLAG_SKIP_ANYCAST:I = 0x2

.field public static final GAA_FLAG_SKIP_DNS_SERVER:I = 0x8

.field public static final GAA_FLAG_SKIP_FRIENDLY_NAME:I = 0x20

.field public static final GAA_FLAG_SKIP_MULTICAST:I = 0x4

.field public static final GAA_FLAG_SKIP_UNICAST:I = 0x1

.field public static final INSTANCE:Lorg/xbill/DNS/config/IPHlpAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/xbill/DNS/config/IPHlpAPI;

    .line 17
    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->ASCII_OPTIONS:Ljava/util/Map;

    const-string v2, "IPHlpAPI"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/config/IPHlpAPI;

    sput-object v0, Lorg/xbill/DNS/config/IPHlpAPI;->INSTANCE:Lorg/xbill/DNS/config/IPHlpAPI;

    return-void
.end method


# virtual methods
.method public abstract GetAdaptersAddresses(IILcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I
.end method
