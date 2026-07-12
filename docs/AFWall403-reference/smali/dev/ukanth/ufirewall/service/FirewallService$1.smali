.class Ldev/ukanth/ufirewall/service/FirewallService$1;
.super Ljava/lang/Object;
.source "FirewallService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/service/FirewallService;->registerBTListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/service/FirewallService;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/service/FirewallService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/FirewallService$1;->this$0:Ldev/ukanth/ufirewall/service/FirewallService;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "AFWall"

    const-string v0, "BluetoothProfile.ServiceListener connected"

    .line 67
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {p2}, Ldev/ukanth/ufirewall/service/FirewallService;->-$$Nest$sfputbtPanProfile(Landroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "AFWall"

    const-string v0, "BluetoothProfile.ServiceListener disconnected"

    .line 73
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 74
    invoke-static {p1}, Ldev/ukanth/ufirewall/service/FirewallService;->-$$Nest$sfputbtPanProfile(Landroid/bluetooth/BluetoothProfile;)V

    return-void
.end method
