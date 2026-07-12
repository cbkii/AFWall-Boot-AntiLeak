.class public Ldev/ukanth/ufirewall/InterfaceDetails;
.super Ljava/lang/Object;
.source "InterfaceDetails.java"


# instance fields
.field public dnsServersV4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dnsServersV6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isBluetoothTethered:Z

.field public isRoaming:Z

.field public isUsbTethered:Z

.field public isWifiTethered:Z

.field public lanMaskV4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lanMaskV6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public netEnabled:Z

.field public netType:I

.field public noIP:Z

.field public tetherBluetoothStatusKnown:Z

.field public tetherUsbStatusKnown:Z

.field public tetherWifiStatusKnown:Z

.field public wifiName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isRoaming:Z

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherWifiStatusKnown:Z

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isBluetoothTethered:Z

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherBluetoothStatusKnown:Z

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherUsbStatusKnown:Z

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV4:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV6:Ljava/util/List;

    const-string v1, ""

    iput-object v1, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->wifiName:Ljava/lang/String;

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->netEnabled:Z

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->noIP:Z

    const/4 v0, -0x1

    iput v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->netType:I

    return-void
.end method


# virtual methods
.method public equals(Ldev/ukanth/ufirewall/InterfaceDetails;)Z
    .locals 2

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isRoaming:Z

    .line 53
    iget-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isRoaming:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z

    iget-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherWifiStatusKnown:Z

    iget-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherWifiStatusKnown:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isBluetoothTethered:Z

    iget-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isBluetoothTethered:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherBluetoothStatusKnown:Z

    iget-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherBluetoothStatusKnown:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    iget-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherUsbStatusKnown:Z

    iget-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherUsbStatusKnown:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    iget-object v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    iget-object v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV4:Ljava/util/List;

    iget-object v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV4:Ljava/util/List;

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV6:Ljava/util/List;

    iget-object v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV6:Ljava/util/List;

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->wifiName:Ljava/lang/String;

    iget-object v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->wifiName:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->netEnabled:Z

    iget-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->netEnabled:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->netType:I

    iget v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->netType:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->noIP:Z

    iget-boolean p1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->noIP:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
