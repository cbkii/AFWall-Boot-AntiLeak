.class public final Ldev/ukanth/ufirewall/InterfaceTracker;
.super Ljava/lang/Object;
.source "InterfaceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/InterfaceTracker$NewInterfaceScanner;
    }
.end annotation


# static fields
.field public static final BOOT_COMPLETED:Ljava/lang/String; = "BOOT_COMPLETED"

.field public static final CONNECTIVITY_CHANGE:Ljava/lang/String; = "CONNECTIVITY_CHANGE"

.field public static final ITFS_3G:[Ljava/lang/String;

.field public static final ITFS_TETHER:[Ljava/lang/String;

.field public static final ITFS_VPN:[Ljava/lang/String;

.field public static final ITFS_WIFI:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "AFWall"

.field public static final TETHER_STATE_CHANGED:Ljava/lang/String; = "TETHER_STATE_CHANGED"

.field private static currentCfg:Ldev/ukanth/ufirewall/InterfaceDetails;


# direct methods
.method static bridge synthetic -$$Nest$smtruncAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/InterfaceTracker;->truncAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 24

    const-string v0, "ra+"

    const-string v1, "bnep+"

    const-string v2, "eth+"

    const-string v3, "wlan+"

    const-string v4, "tiwlan+"

    .line 53
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/InterfaceTracker;->ITFS_WIFI:[Ljava/lang/String;

    const-string v1, "rmnet+"

    const-string v2, "pdp+"

    const-string v3, "uwbr+"

    const-string v4, "wimax+"

    const-string v5, "vsnet+"

    const-string v6, "rmnet_sdio+"

    const-string v7, "ccmni+"

    const-string v8, "qmi+"

    const-string v9, "svnet0+"

    const-string v10, "ccemni+"

    const-string v11, "wwan+"

    const-string v12, "cdma_rmnet+"

    const-string v13, "clat4+"

    const-string v14, "cc2mni+"

    const-string v15, "bond1+"

    const-string v16, "rmnet_smux+"

    const-string v17, "ccinet+"

    const-string v18, "v4-rmnet+"

    const-string v19, "seth_w+"

    const-string v20, "v4-rmnet_data+"

    const-string v21, "rmnet_ipa+"

    const-string v22, "rmnet_data+"

    const-string v23, "r_rmnet_data+"

    .line 55
    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/InterfaceTracker;->ITFS_3G:[Ljava/lang/String;

    const-string v0, "ppp+"

    const-string v1, "tap+"

    const-string v2, "tun+"

    .line 60
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/InterfaceTracker;->ITFS_VPN:[Ljava/lang/String;

    const-string v0, "rndis+"

    const-string v1, "rmnet_usb+"

    const-string v2, "bt-pan"

    const-string v3, "usb+"

    .line 62
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/InterfaceTracker;->ITFS_TETHER:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Ldev/ukanth/ufirewall/InterfaceTracker;->currentCfg:Ldev/ukanth/ufirewall/InterfaceDetails;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBootRules(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    sget-object p0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "AFWall"

    const-string p1, "Cannot apply boot rules: no context available"

    .line 436
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 439
    :cond_1
    new-instance v0, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v1, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 440
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/InterfaceTracker$2;

    invoke-direct {v1, p1, p0}, Ldev/ukanth/ufirewall/InterfaceTracker$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 441
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p1

    const/4 v0, 0x1

    .line 439
    invoke-static {p0, v0, p1}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method public static applyRules(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    sget-object p0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "AFWall"

    const-string p1, "Cannot apply rules: no context available"

    .line 384
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 387
    :cond_1
    new-instance v0, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v1, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 388
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/InterfaceTracker$1;

    invoke-direct {v1, p1, p0}, Ldev/ukanth/ufirewall/InterfaceTracker$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 389
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p1

    .line 387
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->fastApply(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)Z

    return-void
.end method

.method public static applyRulesOnChange(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 360
    invoke-static {p0}, Ldev/ukanth/ufirewall/InterfaceTracker;->checkForNewCfg(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "AFWall"

    if-nez v0, :cond_0

    .line 361
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": interface state has not changed, ignoring"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 363
    :cond_0
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": firewall is disabled, ignoring"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 367
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " applying rules"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->reloadPrefs()V

    const-string v0, "BOOT_COMPLETED"

    .line 372
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 376
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Applying regular rules for reason: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/InterfaceTracker;->applyRules(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 373
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Applying boot-specific rules for reason: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/InterfaceTracker;->applyBootRules(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static checkForNewCfg(Landroid/content/Context;)Z
    .locals 8

    .line 308
    invoke-static {p0}, Ldev/ukanth/ufirewall/InterfaceTracker;->getInterfaceDetails(Landroid/content/Context;)Ldev/ukanth/ufirewall/InterfaceDetails;

    move-result-object p0

    sget-object v0, Ldev/ukanth/ufirewall/InterfaceTracker;->currentCfg:Ldev/ukanth/ufirewall/InterfaceDetails;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0, p0}, Ldev/ukanth/ufirewall/InterfaceDetails;->equals(Ldev/ukanth/ufirewall/InterfaceDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "Getting interface details..."

    const-string v1, "AFWall"

    .line 314
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Ldev/ukanth/ufirewall/InterfaceTracker;->currentCfg:Ldev/ukanth/ufirewall/InterfaceDetails;

    .line 318
    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->netEnabled:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string p0, "Now assuming NO connection (all interfaces down)"

    .line 319
    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 321
    :cond_1
    iget v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->netType:I

    const-string v3, ")"

    const-string v4, ", usb-tethered: "

    const-string v5, "yes"

    const-string v6, "no"

    if-ne v0, v2, :cond_4

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Now assuming wifi connection (bluetooth-tethered: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    iget-boolean v7, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isBluetoothTethered:Z

    if-eqz v7, :cond_2

    move-object v7, v5

    goto :goto_0

    :cond_2
    move-object v7, v6

    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-boolean v4, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 325
    :cond_4
    iget v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->netType:I

    if-nez v0, :cond_9

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Now assuming 3G connection (roaming: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    iget-boolean v7, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isRoaming:Z

    if-eqz v7, :cond_5

    move-object v7, v5

    goto :goto_2

    :cond_5
    move-object v7, v6

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "wifi-tethered: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-boolean v7, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z

    if-eqz v7, :cond_6

    move-object v7, v5

    goto :goto_3

    :cond_6
    move-object v7, v6

    :goto_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", bluetooth-tethered: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-boolean v7, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isBluetoothTethered:Z

    if-eqz v7, :cond_7

    move-object v7, v5

    goto :goto_4

    :cond_7
    move-object v7, v6

    :goto_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-boolean v4, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    move-object v5, v6

    :goto_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 331
    :cond_9
    iget v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->netType:I

    const/4 v7, 0x7

    if-ne v0, v7, :cond_c

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Now assuming bluetooth connection (wifi-tethered: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    iget-boolean v7, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z

    if-eqz v7, :cond_a

    move-object v7, v5

    goto :goto_6

    :cond_a
    move-object v7, v6

    :goto_6
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-boolean v4, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    if-eqz v4, :cond_b

    goto :goto_7

    :cond_b
    move-object v5, v6

    :goto_7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_c
    :goto_8
    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v3, ", "

    const-string v4, ": "

    if-nez v0, :cond_d

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "IPv4 LAN netmasks on "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->wifiName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    invoke-static {v3, v5}, Ldev/ukanth/ufirewall/InterfaceTracker$$ExternalSyntheticBackport1;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_d
    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "IPv6 LAN netmasks on "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->wifiName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    invoke-static {v3, v4}, Ldev/ukanth/ufirewall/InterfaceTracker$$ExternalSyntheticBackport1;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_e
    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "No ipaddress found"

    .line 344
    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_9
    return v2
.end method

.method private static getBluetoothTetherStatus(Landroid/content/Context;Ldev/ukanth/ufirewall/InterfaceDetails;)V
    .locals 7

    const-string p0, "AFWall"

    .line 114
    invoke-static {}, Ldev/ukanth/ufirewall/service/FirewallService;->getBtPanProfile()Landroid/bluetooth/BluetoothProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-static {}, Ldev/ukanth/ufirewall/service/FirewallService;->getBtPanProfile()Landroid/bluetooth/BluetoothProfile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isBluetoothTethered:Z

    .line 118
    iput-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherBluetoothStatusKnown:Z

    .line 120
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 121
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "isTetheringOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    :try_start_0
    invoke-static {}, Ldev/ukanth/ufirewall/service/FirewallService;->getBtPanProfile()Landroid/bluetooth/BluetoothProfile;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isBluetoothTethered:Z

    const/4 v4, 0x1

    .line 124
    iput-boolean v4, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherBluetoothStatusKnown:Z

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBluetoothTetheringOn is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isBluetoothTethered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 127
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getBtProfile()Landroid/bluetooth/BluetoothProfile;
    .locals 1

    .line 110
    invoke-static {}, Ldev/ukanth/ufirewall/service/FirewallService;->getBtPanProfile()Landroid/bluetooth/BluetoothProfile;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentCfg(Landroid/content/Context;Z)Ldev/ukanth/ufirewall/InterfaceDetails;
    .locals 2

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Forcing configuration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFWall"

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ldev/ukanth/ufirewall/InterfaceTracker;->currentCfg:Ldev/ukanth/ufirewall/InterfaceDetails;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 353
    :cond_0
    invoke-static {p0}, Ldev/ukanth/ufirewall/InterfaceTracker;->getInterfaceDetails(Landroid/content/Context;)Ldev/ukanth/ufirewall/InterfaceDetails;

    move-result-object p0

    sput-object p0, Ldev/ukanth/ufirewall/InterfaceTracker;->currentCfg:Ldev/ukanth/ufirewall/InterfaceDetails;

    :cond_1
    sget-object p0, Ldev/ukanth/ufirewall/InterfaceTracker;->currentCfg:Ldev/ukanth/ufirewall/InterfaceDetails;

    return-object p0
.end method

.method private static getDnsFromSystemProperties(Ldev/ukanth/ufirewall/InterfaceDetails;)V
    .locals 7

    const-string v0, "AFWall"

    const/4 v1, 0x4

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "net.dns1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "net.dns2"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "net.dns3"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "net.dns4"

    const/4 v5, 0x3

    aput-object v3, v2, v5

    :goto_0
    if-ge v4, v1, :cond_2

    .line 283
    aget-object v3, v2, v4

    .line 284
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 285
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "0.0.0.0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_1

    .line 287
    :try_start_1
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 288
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_0

    .line 289
    iget-object v5, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV4:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 290
    iget-object v5, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV4:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 292
    :cond_0
    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_1

    .line 293
    iget-object v5, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV6:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 294
    iget-object v5, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV6:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 298
    :catch_0
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DNS server address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception getting DNS from system properties: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static getDnsServers(Landroid/content/Context;Ldev/ukanth/ufirewall/InterfaceDetails;)V
    .locals 4

    const-string v0, "AFWall"

    .line 238
    iget-object v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV4:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 239
    iget-object v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :try_start_0
    const-string v1, "connectivity"

    .line 242
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 248
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_4

    .line 253
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 255
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 256
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_3

    .line 257
    iget-object v2, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV4:Ljava/util/List;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    :cond_3
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_2

    .line 259
    iget-object v2, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV6:Ljava/util/List;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 266
    :cond_4
    iget-object p0, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV4:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV6:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 267
    invoke-static {p1}, Ldev/ukanth/ufirewall/InterfaceTracker;->getDnsFromSystemProperties(Ldev/ukanth/ufirewall/InterfaceDetails;)V

    .line 270
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNS servers IPv4: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV4:Ljava/util/List;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNS servers IPv6: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV6:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Exception getting DNS servers: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private static getInterfaceDetails(Landroid/content/Context;)Ldev/ukanth/ufirewall/InterfaceDetails;
    .locals 4

    .line 196
    new-instance v0, Ldev/ukanth/ufirewall/InterfaceDetails;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/InterfaceDetails;-><init>()V

    const-string v1, "connectivity"

    .line 199
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 201
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 203
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 207
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 221
    :pswitch_1
    iput v3, v0, Ldev/ukanth/ufirewall/InterfaceDetails;->netType:I

    .line 222
    iput-boolean v3, v0, Ldev/ukanth/ufirewall/InterfaceDetails;->netEnabled:Z

    goto :goto_0

    .line 214
    :pswitch_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    iput-boolean v1, v0, Ldev/ukanth/ufirewall/InterfaceDetails;->isRoaming:Z

    const/4 v1, 0x0

    .line 215
    iput v1, v0, Ldev/ukanth/ufirewall/InterfaceDetails;->netType:I

    .line 216
    iput-boolean v3, v0, Ldev/ukanth/ufirewall/InterfaceDetails;->netEnabled:Z

    .line 226
    :goto_0
    :try_start_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/InterfaceTracker;->getTetherStatus(Landroid/content/Context;Ldev/ukanth/ufirewall/InterfaceDetails;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in  getInterfaceDetails.checkTether"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AFWall"

    invoke-static {v2, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    :goto_1
    invoke-static {v0}, Ldev/ukanth/ufirewall/InterfaceTracker$NewInterfaceScanner;->populateLanMasks(Ldev/ukanth/ufirewall/InterfaceDetails;)V

    .line 233
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/InterfaceTracker;->getDnsServers(Landroid/content/Context;Ldev/ukanth/ufirewall/InterfaceDetails;)V

    :cond_2
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getTetherStatus(Landroid/content/Context;Ldev/ukanth/ufirewall/InterfaceDetails;)V
    .locals 0

    .line 76
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/InterfaceTracker;->getWifiTetherStatus(Landroid/content/Context;Ldev/ukanth/ufirewall/InterfaceDetails;)V

    .line 77
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/InterfaceTracker;->getBluetoothTetherStatus(Landroid/content/Context;Ldev/ukanth/ufirewall/InterfaceDetails;)V

    .line 78
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/InterfaceTracker;->getUsbTetherStatus(Landroid/content/Context;Ldev/ukanth/ufirewall/InterfaceDetails;)V

    return-void
.end method

.method private static getUsbTetherStatus(Landroid/content/Context;Ldev/ukanth/ufirewall/InterfaceDetails;)V
    .locals 6

    const-string v0, "AFWall"

    const-string v1, "connectivity"

    .line 135
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 137
    iput-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    .line 138
    iput-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherUsbStatusKnown:Z

    return-void

    .line 142
    :cond_0
    iput-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    .line 143
    iput-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherUsbStatusKnown:Z

    const/4 v2, 0x1

    .line 147
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getTetheredIfaces"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 148
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 149
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 152
    array-length v3, p0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, p0, v1

    if-eqz v4, :cond_2

    const-string v5, "rndis"

    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "usb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    :cond_1
    iput-boolean v2, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_3
    :goto_1
    iput-boolean v2, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherUsbStatusKnown:Z

    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB tethering status: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v1, "Exception in getting USB tether status"

    .line 164
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_1
    invoke-static {}, Ldev/ukanth/ufirewall/InterfaceTracker;->isUsbTetherInterfaceUp()Z

    move-result p0

    iput-boolean p0, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    .line 170
    iput-boolean v2, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherUsbStatusKnown:Z

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB tethering status (fallback): "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Fallback USB tether detection failed: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private static getWifiTetherStatus(Landroid/content/Context;Ldev/ukanth/ufirewall/InterfaceDetails;)V
    .locals 8

    const-string v0, "AFWall"

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 85
    iput-boolean v2, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z

    .line 86
    iput-boolean v2, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherWifiStatusKnown:Z

    .line 88
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 89
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "isWifiApEnabled"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    new-array v6, v2, [Ljava/lang/Object;

    .line 91
    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z

    const/4 v5, 0x1

    .line 92
    iput-boolean v5, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherWifiStatusKnown:Z

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiApEnabled is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "Exception in getting Wifi tether status"

    .line 95
    invoke-static {v0, v6}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static isUsbTetherInterfaceUp()Z
    .locals 4

    .line 180
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 181
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 183
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "rndis"

    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error checking network interfaces: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFWall"

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static truncAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method
