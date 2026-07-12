.class public Ldev/ukanth/ufirewall/broadcast/OnBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnBootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "messenger"

    .line 31
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Messenger;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 37
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Ldev/ukanth/ufirewall/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_1
    const-string p2, "Startin boot service"

    const-string v0, "AFWall"

    .line 41
    invoke-static {v0, p2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_2

    const-string p2, "Starting firewall service onboot"

    .line 43
    invoke-static {v0, p2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance p2, Landroid/content/Intent;

    const-class v1, Ldev/ukanth/ufirewall/service/FirewallService;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 46
    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-class v1, Ldev/ukanth/ufirewall/service/FirewallService;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    :goto_1
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/BootRuleManager;->initializeBootRuleApplication(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Starting log service onboot"

    .line 56
    invoke-static {v0, p2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Ldev/ukanth/ufirewall/service/LogService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    :cond_3
    :try_start_1
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->registerPrivateLink()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    return-void
.end method
