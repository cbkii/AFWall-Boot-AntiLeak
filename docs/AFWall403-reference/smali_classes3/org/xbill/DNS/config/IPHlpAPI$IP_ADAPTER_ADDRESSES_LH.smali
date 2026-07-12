.class public Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;
.super Lcom/sun/jna/Structure;
.source "IPHlpAPI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Length",
        "IfIndex",
        "Next",
        "AdapterName",
        "FirstUnicastAddress",
        "FirstAnycastAddress",
        "FirstMulticastAddress",
        "FirstDnsServerAddress",
        "DnsSuffix",
        "Description",
        "FriendlyName",
        "PhysicalAddress",
        "PhysicalAddressLength",
        "Flags",
        "Mtu",
        "IfType",
        "OperStatus",
        "Ipv6IfIndex",
        "ZoneIndices",
        "FirstPrefix",
        "TransmitLinkSpeed",
        "ReceiveLinkSpeed",
        "FirstWinsServerAddress",
        "FirstGatewayAddress",
        "Ipv4Metric",
        "Ipv6Metric",
        "Luid",
        "Dhcpv4Server",
        "CompartmentId",
        "NetworkGuid",
        "ConnectionType",
        "TunnelType",
        "Dhcpv6Server",
        "Dhcpv6ClientDuid",
        "Dhcpv6ClientDuidLength",
        "Dhcpv6Iaid",
        "FirstDnsSuffix"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/config/IPHlpAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IP_ADAPTER_ADDRESSES_LH"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH$ByReference;
    }
.end annotation


# instance fields
.field public AdapterName:Ljava/lang/String;

.field public CompartmentId:I

.field public ConnectionType:I

.field public Description:Lcom/sun/jna/WString;

.field public Dhcpv4Server:Lorg/xbill/DNS/config/IPHlpAPI$SOCKET_ADDRESS;

.field public Dhcpv6ClientDuid:[B

.field public Dhcpv6ClientDuidLength:I

.field public Dhcpv6Iaid:I

.field public Dhcpv6Server:Lorg/xbill/DNS/config/IPHlpAPI$SOCKET_ADDRESS;

.field public DnsSuffix:Lcom/sun/jna/WString;

.field public FirstAnycastAddress:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ANYCAST_ADDRESS_XP$ByReference;

.field public FirstDnsServerAddress:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SERVER_ADDRESS_XP$ByReference;

.field public FirstDnsSuffix:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SUFFIX$ByReference;

.field public FirstGatewayAddress:Lcom/sun/jna/Pointer;

.field public FirstMulticastAddress:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_MULTICAST_ADDRESS_XP$ByReference;

.field public FirstPrefix:Lcom/sun/jna/Pointer;

.field public FirstUnicastAddress:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_UNICAST_ADDRESS_LH$ByReference;

.field public FirstWinsServerAddress:Lcom/sun/jna/Pointer;

.field public Flags:I

.field public FriendlyName:Lcom/sun/jna/WString;

.field public IfIndex:I

.field public IfType:I

.field public Ipv4Metric:I

.field public Ipv6IfIndex:I

.field public Ipv6Metric:I

.field public Length:I

.field public Luid:Lorg/xbill/DNS/config/IPHlpAPI$LUID;

.field public Mtu:I

.field public NetworkGuid:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public Next:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH$ByReference;

.field public OperStatus:I

.field public PhysicalAddress:[B

.field public PhysicalAddressLength:I

.field public ReceiveLinkSpeed:J

.field public TransmitLinkSpeed:J

.field public TunnelType:I

.field public ZoneIndices:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->PhysicalAddress:[B

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->ZoneIndices:[I

    const/16 v0, 0x82

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->Dhcpv6ClientDuid:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->PhysicalAddress:[B

    const/16 p1, 0x10

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->ZoneIndices:[I

    const/16 p1, 0x82

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->Dhcpv6ClientDuid:[B

    .line 205
    invoke-virtual {p0}, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ADDRESSES_LH;->read()V

    return-void
.end method
