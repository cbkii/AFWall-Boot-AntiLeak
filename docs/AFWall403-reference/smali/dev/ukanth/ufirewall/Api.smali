.class public final Ldev/ukanth/ufirewall/Api;
.super Ljava/lang/Object;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/Api$PackageInfoData;,
        Ldev/ukanth/ufirewall/Api$RuleDataSet;,
        Ldev/ukanth/ufirewall/Api$RunCommand;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BINARY_INSTALL_LOCK:Ljava/lang/Object;

.field private static final CHAIN_NAME_LOCK:Ljava/lang/Object;

.field public static final CUSTOM_SCRIPT_MSG:Ljava/lang/String; = "dev.ukanth.ufirewall.intent.action.CUSTOM_SCRIPT"

.field private static final DATA_EXPORT:I = 0x1

.field public static final DEFAULT_PREFS_NAME:Ljava/lang/String; = "AFWallPrefs"

.field public static final ERROR_NOTIFICATION_ID:I = 0x9

.field private static final GLOBAL_STATUS_LOCK:Ljava/lang/Object;

.field private static final IPTABLES_TRY_AGAIN:I = 0x4

.field private static final ITFS_3G:[Ljava/lang/String;

.field private static final ITFS_TETHER:[Ljava/lang/String;

.field private static final ITFS_VPN:[Ljava/lang/String;

.field private static final ITFS_WIFI:[Ljava/lang/String;

.field private static final LAN_EXPORT:I = 0x4

.field public static final MODE_BLACKLIST:Ljava/lang/String; = "blacklist"

.field public static final MODE_WHITELIST:Ljava/lang/String; = "whitelist"

.field public static final NOTIFICATION_ID:I = 0x1

.field public static PREFS_NAME:Ljava/lang/String; = null

.field public static final PREF_3G_PKG_UIDS:Ljava/lang/String; = "AllowedPKG3G_UIDS"

.field public static final PREF_CUSTOMSCRIPT:Ljava/lang/String; = "CustomScript"

.field public static final PREF_CUSTOMSCRIPT2:Ljava/lang/String; = "CustomScript2"

.field public static final PREF_ENABLED:Ljava/lang/String; = "Enabled"

.field public static final PREF_FIREWALL_STATUS:Ljava/lang/String; = "AFWallStatus"

.field public static final PREF_LAN_PKG_UIDS:Ljava/lang/String; = "AllowedPKGLAN_UIDS"

.field public static final PREF_MODE:Ljava/lang/String; = "BlockMode"

.field public static final PREF_ROAMING_PKG_UIDS:Ljava/lang/String; = "AllowedPKGRoaming_UIDS"

.field public static final PREF_TETHER_PKG_UIDS:Ljava/lang/String; = "AllowedPKGTether_UIDS"

.field public static final PREF_TOR_PKG_UIDS:Ljava/lang/String; = "AllowedPKGTOR_UIDS"

.field public static final PREF_VPN_PKG_UIDS:Ljava/lang/String; = "AllowedPKGVPN_UIDS"

.field public static final PREF_WIFI_PKG_UIDS:Ljava/lang/String; = "AllowedPKGWifi_UIDS"

.field private static final ROAM_EXPORT:I = 0x2

.field private static final RULES_LOCK:Ljava/lang/Object;

.field public static final SCRIPT2_EXTRA:Ljava/lang/String; = "dev.ukanth.ufirewall.intent.extra.SCRIPT2"

.field public static final SCRIPT_EXTRA:Ljava/lang/String; = "dev.ukanth.ufirewall.intent.extra.SCRIPT"

.field public static final SPECIAL_UID_ANY:I = -0xa

.field public static final SPECIAL_UID_KERNEL:I = -0xb

.field public static final SPECIAL_UID_NTP:I = -0xe

.field public static final SPECIAL_UID_TETHER:I = -0xc

.field public static final STATUS_CHANGED_MSG:Ljava/lang/String; = "dev.ukanth.ufirewall.intent.action.STATUS_CHANGED"

.field public static final STATUS_EXTRA:Ljava/lang/String; = "dev.ukanth.ufirewall.intent.extra.STATUS"

.field public static final TAG:Ljava/lang/String; = "AFWall"

.field private static final TETHER_EXPORT:I = 0x6

.field public static final TOGGLE_REQUEST_MSG:Ljava/lang/String; = "dev.ukanth.ufirewall.intent.action.TOGGLE_REQUEST"

.field private static final TOR_EXPORT:I = 0x5

.field private static final VPN_EXPORT:I = 0x3

.field private static final WIFI_EXPORT:I = 0x0

.field private static final algorithm:Ljava/lang/String; = "DES"

.field public static applications:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/Api$PackageInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private static final base64Mode:I = 0x0

.field public static bbPath:Ljava/lang/String; = null

.field private static final charsetName:Ljava/lang/String; = "UTF8"

.field private static final dual_pattern:Ljava/util/regex/Pattern;

.field private static final dynChains:[Ljava/lang/String;

.field private static volatile globalStatus:Z

.field private static listOfUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final natChains:[Ljava/lang/String;

.field private static final p:Ljava/util/regex/Pattern;

.field public static recentlyInstalled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile rulesUpToDate:Z

.field private static final specialAndroidAccounts:[Ljava/lang/String;

.field private static specialApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final staticChains:[Ljava/lang/String;

.field private static uidToApplicationInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smexecuteSafeShellCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->executeSafeShellCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 24

    .line 205
    sget-object v0, Ldev/ukanth/ufirewall/InterfaceTracker;->ITFS_WIFI:[Ljava/lang/String;

    sput-object v0, Ldev/ukanth/ufirewall/Api;->ITFS_WIFI:[Ljava/lang/String;

    .line 206
    sget-object v0, Ldev/ukanth/ufirewall/InterfaceTracker;->ITFS_3G:[Ljava/lang/String;

    sput-object v0, Ldev/ukanth/ufirewall/Api;->ITFS_3G:[Ljava/lang/String;

    .line 207
    sget-object v0, Ldev/ukanth/ufirewall/InterfaceTracker;->ITFS_VPN:[Ljava/lang/String;

    sput-object v0, Ldev/ukanth/ufirewall/Api;->ITFS_VPN:[Ljava/lang/String;

    .line 208
    sget-object v0, Ldev/ukanth/ufirewall/InterfaceTracker;->ITFS_TETHER:[Ljava/lang/String;

    sput-object v0, Ldev/ukanth/ufirewall/Api;->ITFS_TETHER:[Ljava/lang/String;

    const-string v0, "-wifi-postcustom"

    const-string v1, "-wifi-fork"

    const-string v2, "-3g-postcustom"

    const-string v3, "-3g-fork"

    .line 211
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/Api;->dynChains:[Ljava/lang/String;

    const-string v0, "-tor-check"

    const-string v1, "-tor-filter"

    const-string v2, ""

    .line 212
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/Api;->natChains:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "-input"

    const-string v3, "-localhost"

    const-string v4, "-3g"

    const-string v5, "-wifi"

    const-string v6, "-reject"

    const-string v7, "-vpn"

    const-string v8, "-3g-tether"

    const-string v9, "-3g-home"

    const-string v10, "-3g-roam"

    const-string v11, "-wifi-tether"

    const-string v12, "-wifi-wan"

    const-string v13, "-wifi-lan"

    const-string v14, "-usb-tether"

    const-string v15, "-tor"

    const-string v16, "-tor-reject"

    const-string v17, "-tether"

    const-string v18, "-3g-home-reject"

    const-string v19, "-3g-roam-reject"

    const-string v20, "-wifi-wan-reject"

    const-string v21, "-wifi-lan-reject"

    const-string v22, "-vpn-reject"

    const-string v23, "-tether-reject"

    .line 213
    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/Api;->staticChains:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Ldev/ukanth/ufirewall/Api;->globalStatus:Z

    .line 216
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Ldev/ukanth/ufirewall/Api;->GLOBAL_STATUS_LOCK:Ljava/lang/Object;

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ldev/ukanth/ufirewall/Api;->listOfUids:Ljava/util/List;

    const/4 v1, 0x0

    sput-object v1, Ldev/ukanth/ufirewall/Api;->uidToApplicationInfoMap:Ljava/util/Map;

    const-string v2, "package:(.*) uid:(.*)"

    const/16 v3, 0x8

    .line 236
    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Ldev/ukanth/ufirewall/Api;->dual_pattern:Ljava/util/regex/Pattern;

    const-string v3, "root"

    const-string v4, "adb"

    const-string v5, "media"

    const-string v6, "vpn"

    const-string v7, "drm"

    const-string v8, "gps"

    const-string v9, "shell"

    .line 259
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ldev/ukanth/ufirewall/Api;->specialAndroidAccounts:[Ljava/lang/String;

    const-string v2, "UserHandle\\{(.*)\\}"

    .line 268
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Ldev/ukanth/ufirewall/Api;->p:Ljava/util/regex/Pattern;

    const-string v2, "AFWallPrefs"

    sput-object v2, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    sput-object v1, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    .line 273
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Ldev/ukanth/ufirewall/Api;->recentlyInstalled:Ljava/util/Set;

    sput-object v1, Ldev/ukanth/ufirewall/Api;->bbPath:Ljava/lang/String;

    .line 281
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Ldev/ukanth/ufirewall/Api;->CHAIN_NAME_LOCK:Ljava/lang/Object;

    sput-object v1, Ldev/ukanth/ufirewall/Api;->specialApps:Ljava/util/Map;

    sput-boolean v0, Ldev/ukanth/ufirewall/Api;->rulesUpToDate:Z

    .line 284
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/Api;->RULES_LOCK:Ljava/lang/Object;

    .line 2511
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/Api;->BINARY_INSTALL_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCustomRules(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 833
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 834
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "[\\r\\n]+"

    .line 836
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 837
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    const-string v3, ".*\\S.*"

    .line 838
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 840
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldev/ukanth/ufirewall/Api;->sanitizeRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 841
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#LITERAL# "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static addDnsServerRules(Ljava/util/List;Ldev/ukanth/ufirewall/InterfaceDetails;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ldev/ukanth/ufirewall/InterfaceDetails;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1639
    iget-object p1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV6:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV4:Ljava/util/List;

    .line 1641
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 1642
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-A "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -d "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -p udp --dport 53 -j RETURN"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " -p tcp --dport 53 -j RETURN"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static addInterfaceRouting(Landroid/content/Context;Ljava/util/List;ZLjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "whitelist"

    const-string v1, "AFWall"

    const/4 v2, 0x1

    const/4 v3, 0x0

    xor-int/lit8 v4, p2, 0x1

    .line 860
    :try_start_0
    invoke-static {p0, v4}, Ldev/ukanth/ufirewall/InterfaceTracker;->getCurrentCfg(Landroid/content/Context;Z)Ldev/ukanth/ufirewall/InterfaceDetails;

    move-result-object p0

    .line 861
    sget-object v4, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v5, "BlockMode"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v4, Ldev/ukanth/ufirewall/Api;->dynChains:[Ljava/lang/String;

    .line 862
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 863
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-F "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "-A "

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "dhcp"

    aput-object v5, v0, v3

    const-string v3, "wifi"

    aput-object v3, v0, v2

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-wifi-postcustom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-j RETURN"

    invoke-static {p1, v0, v2, v3}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_1
    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "-3g-fork"

    const-string v3, "-wifi-fork"

    const-string v5, "-3g-postcustom -j "

    const-string v6, "-wifi-postcustom -j "

    if-nez v0, :cond_3

    :try_start_2
    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 884
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 872
    :cond_3
    :goto_1
    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z

    if-eqz v0, :cond_4

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-wifi-tether"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 875
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    :goto_2
    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    if-eqz v0, :cond_5

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-usb-tether"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 881
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z

    if-eqz v3, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-3g-tether"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    :goto_4
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "-wifi-fork -j "

    const-string v3, "-wifi-wan"

    if-eqz v0, :cond_e

    :try_start_3
    iget-boolean v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v0, :cond_e

    const-string v0, "-wifi-lan"

    const-string v5, " "

    const-string v6, "-wifi-fork "

    const-string v7, "\'!\' -d "

    const-string v8, "-wifi-fork -d "

    const-string v9, ","

    const-string v10, " -j "

    if-eqz p2, :cond_a

    .line 891
    :try_start_4
    iget-object p2, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 892
    iget-object p2, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 893
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 897
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 898
    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 899
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 901
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 903
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no ipv6 found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableIPv6()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 906
    :cond_a
    iget-object p2, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    .line 907
    iget-object p2, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 908
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 912
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 914
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 916
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 918
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no ipv4 found:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableIPv6()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :goto_9
    iget-object p2, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p2, "No ipaddress found for LAN"

    .line 922
    invoke-static {v1, p2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 928
    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    :cond_f
    :goto_a
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableRoam()Z

    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "-3g-fork -j "

    if-eqz p2, :cond_10

    :try_start_5
    iget-boolean p0, p0, Ldev/ukanth/ufirewall/InterfaceDetails;->isRoaming:Z

    if-eqz p0, :cond_10

    .line 932
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-3g-roam"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 934
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-3g-home"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_b

    :catch_0
    move-exception p0

    .line 939
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception while applying shortRules "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void
.end method

.method private static addRejectRules(Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 714
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result v0

    const-string v1, "NFLOG"

    const-string v2, "-A "

    const-string v3, "AFWall"

    if-eqz v0, :cond_1

    .line 715
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "LOG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-reject -m limit --limit 1000/min -j LOG --log-prefix \"{AFL}\" --log-level 4 --log-uid  --log-tcp-options --log-ip-options"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding LOG rule to reject chain: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 720
    :cond_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-reject -j NFLOG --nflog-prefix \"{AFL}\" --nflog-group 40"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding NFLOG rule to reject chain: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-reject -j REJECT"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding final REJECT rule: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "-3g-home-reject"

    const-string v6, "-3g-roam-reject"

    const-string v7, "-wifi-wan-reject"

    const-string v8, "-wifi-lan-reject"

    const-string v9, "-vpn-reject"

    const-string v10, "-tether-reject"

    .line 732
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x6

    if-ge v4, v5, :cond_3

    .line 734
    aget-object v5, v0, v4

    .line 735
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 736
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Populating individual reject chain: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTarget()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -j NFLOG --nflog-prefix \"{AFL}\" --nflog-group 40"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 739
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Adding NFLOG to individual reject chain: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -j REJECT"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 743
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adding REJECT to individual reject chain: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method private static addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 619
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 620
    invoke-static {v2}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -m owner --uid-owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static addRulesForUidlist(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, " -j "

    const-string v1, " -j RETURN"

    const-string v2, "-reject"

    if-eqz p3, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 627
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/16 v4, -0xa

    .line 629
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "-A "

    if-eqz v4, :cond_2

    if-nez p3, :cond_1

    .line 631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 633
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 636
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 637
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_3

    .line 638
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -m owner --uid-owner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v4, " -p tcp --dport 53"

    const-string v6, " -p udp --dport 53"

    const-string v7, "root"

    if-eqz p3, :cond_5

    .line 648
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v8, v6, v1}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v6, v4, v1}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 651
    :cond_5
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v8, v6, v1}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v6, v4, v1}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v1, -0xe

    .line 657
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "system"

    .line 658
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -p udp --dport 123"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v4, v3}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_6
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getPrivateDnsStatus()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -p tcp --dport 853 -j ACCEPT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v1, -0xb

    .line 668
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "Owner module not available, using fallback rule for chain "

    const-string v3, "AFWall"

    if-eqz p3, :cond_a

    if-eqz p1, :cond_9

    .line 674
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->hasOwnerModule()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 675
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Adding whitelist kernel rule with owner module for chain "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " -m owner --uid-owner 0:999999999 -j "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 678
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 683
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 684
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_c

    .line 689
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->hasOwnerModule()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 690
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " -m owner --uid-owner 0:999999999 -j RETURN"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 693
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_c
    :goto_3
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->hasOwnerModule()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "-A afwall-wifi-lan -m owner --uid-owner 1052 -j RETURN"

    .line 701
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_d
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->hasOwnerModule()Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "-A afwall-wifi-wan -m owner --uid-owner 1052 -j RETURN"

    .line 705
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_4
    return-void
.end method

.method private static addTorRules(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 749
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string v0, "-reject"

    const-string v1, "-A "

    const-string v2, " -j "

    const-string v3, "-t nat -A "

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 750
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    .line 751
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableInbound()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 752
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-tor-reject -m owner --uid-owner "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-tor-check -m owner --uid-owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-tor-filter"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 759
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "-tor-reject"

    if-eqz p1, :cond_4

    .line 760
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    const/16 p1, 0x235a

    .line 762
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x1fb6

    .line 763
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v4, 0x1518

    .line 764
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x2350

    .line 765
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 766
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-tor-filter -d 127.0.0.1 -p tcp --dport "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -j RETURN"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-tor-filter -p udp --dport 53 -j REDIRECT --to-ports "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-tor-filter -p tcp --tcp-flags FIN,SYN,RST,ACK SYN -j REDIRECT --to-ports "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-tor-filter -j MARK --set-mark 0x500"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-tor-check"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-tor -m mark --mark 0x500 -j "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-tor"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    :goto_1
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableInbound()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 776
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-input -j "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public static applicationRemoved(Landroid/content/Context;ILdev/ukanth/ufirewall/service/RootCommand;)V
    .locals 12

    sget-object p2, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3010
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 3011
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "AllowedPKGWifi_UIDS"

    const-string v3, "AllowedPKG3G_UIDS"

    const-string v4, "AllowedPKGRoaming_UIDS"

    const-string v5, "AllowedPKGVPN_UIDS"

    const-string v6, "AllowedPKGTether_UIDS"

    const-string v7, "AllowedPKGLAN_UIDS"

    const-string v8, "AllowedPKGTOR_UIDS"

    .line 3014
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "AllowedPKGWifi_UIDS"

    const-string v4, ""

    .line 3025
    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "AllowedPKG3G_UIDS"

    .line 3026
    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AllowedPKGRoaming_UIDS"

    .line 3027
    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "AllowedPKGVPN_UIDS"

    .line 3028
    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "AllowedPKGTether_UIDS"

    .line 3029
    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "AllowedPKGLAN_UIDS"

    .line 3030
    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "AllowedPKGTOR_UIDS"

    .line 3031
    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x7

    new-array v4, v3, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 3037
    aget-object v7, p2, v5

    aget-object v8, v2, v5

    invoke-static {p0, v7, p1, v1, v8}, Ldev/ukanth/ufirewall/Api;->removePackageRef(Landroid/content/Context;Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;Ljava/lang/String;)Z

    move-result v7

    aput-boolean v7, v4, v5

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    .line 3044
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3045
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3046
    new-instance p1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {p1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    invoke-static {p0, v0, p1}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    :cond_2
    return-void
.end method

.method public static apply46(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ldev/ukanth/ufirewall/service/RootCommand;",
            ")V"
        }
    .end annotation

    .line 1677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1678
    invoke-static {p1, v0, v1}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    .line 1680
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableIPv6()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1681
    invoke-static {p1, v0, v1}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    :cond_0
    const/4 p1, 0x4

    .line 1683
    invoke-virtual {p2, p1}, Ldev/ukanth/ufirewall/service/RootCommand;->setRetryExitCode(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static applyDefaultChains(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2

    .line 3973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3974
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv4Input()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-P INPUT ACCEPT"

    goto :goto_0

    :cond_0
    const-string v1, "-P INPUT DROP"

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3975
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv4Fwd()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-P FORWARD ACCEPT"

    goto :goto_1

    :cond_1
    const-string v1, "-P FORWARD DROP"

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3976
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv4Output()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "-P OUTPUT ACCEPT"

    goto :goto_2

    :cond_2
    const-string v1, "-P OUTPUT DROP"

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3977
    invoke-static {p0, v0, p1}, Ldev/ukanth/ufirewall/Api;->applyQuick(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V

    .line 3978
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->applyDefaultChainsv6(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method public static applyDefaultChainsv6(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2

    .line 3982
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->controlIPv6()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3984
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv6Input()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-P INPUT ACCEPT"

    goto :goto_0

    :cond_0
    const-string v1, "-P INPUT DROP"

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3985
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv6Fwd()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-P FORWARD ACCEPT"

    goto :goto_1

    :cond_1
    const-string v1, "-P FORWARD DROP"

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3986
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv6Output()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "-P OUTPUT ACCEPT"

    goto :goto_2

    :cond_2
    const-string v1, "-P OUTPUT DROP"

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3987
    invoke-static {p0, v0, p1}, Ldev/ukanth/ufirewall/Api;->applyIPv6Quick(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V

    :cond_3
    return-void
.end method

.method public static applyIPv6Quick(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ldev/ukanth/ufirewall/service/RootCommand;",
            ")V"
        }
    .end annotation

    .line 1687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 1689
    invoke-static {p1, v0, v1}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    const/4 p1, 0x4

    .line 1690
    invoke-virtual {p2, p1}, Ldev/ukanth/ufirewall/service/RootCommand;->setRetryExitCode(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private static applyIptablesRulesImpl(Landroid/content/Context;Ldev/ukanth/ufirewall/Api$RuleDataSet;ZLjava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldev/ukanth/ufirewall/Api$RuleDataSet;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 979
    invoke-static/range {v0 .. v5}, Ldev/ukanth/ufirewall/Api;->applyIptablesRulesImpl(Landroid/content/Context;Ldev/ukanth/ufirewall/Api$RuleDataSet;ZLjava/util/List;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static applyIptablesRulesImpl(Landroid/content/Context;Ldev/ukanth/ufirewall/Api$RuleDataSet;ZLjava/util/List;ZLjava/lang/String;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldev/ukanth/ufirewall/Api$RuleDataSet;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    const-string v4, "nobody"

    const-string v5, "root"

    const-string v6, "-input"

    const-string v7, "-A "

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return v8

    :cond_0
    move/from16 v9, p2

    .line 988
    invoke-static {v1, v9}, Ldev/ukanth/ufirewall/Api;->assertBinaries(Landroid/content/Context;Z)Z

    xor-int/lit8 v9, v3, 0x1

    .line 990
    invoke-static {v1, v9}, Ldev/ukanth/ufirewall/InterfaceTracker;->getCurrentCfg(Landroid/content/Context;Z)Ldev/ukanth/ufirewall/InterfaceDetails;

    move-result-object v9

    if-eqz p5, :cond_1

    move-object/from16 v10, p5

    goto :goto_0

    .line 997
    :cond_1
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->getThreadSafeChainName()Ljava/lang/String;

    move-result-object v10

    .line 999
    :goto_0
    sget-object v11, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v12, "BlockMode"

    const-string v13, "whitelist"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1001
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_2

    const-string v13, "v6"

    goto :goto_1

    :cond_2
    const-string v13, "v4"

    :goto_1
    const-string v14, "Constructing rules for "

    .line 1003
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "AFWall"

    invoke-static {v14, v13}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv4Input()Z

    move-result v13

    if-nez v13, :cond_3

    if-eqz v3, :cond_4

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv6Input()Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    const-string v13, "-P INPUT ACCEPT"

    .line 1007
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_4
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv4Fwd()Z

    move-result v13

    if-nez v13, :cond_5

    if-eqz v3, :cond_6

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv6Fwd()Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_5
    const-string v13, "-P FORWARD ACCEPT"

    .line 1011
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :try_start_0
    const-string v14, "-P OUTPUT DROP"

    .line 1016
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v14, Ldev/ukanth/ufirewall/Api;->staticChains:[Ljava/lang/String;

    .line 1020
    array-length v15, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v13, 0x0

    :goto_2
    const-string v8, "#NOCHK# -F "

    move-object/from16 v16, v9

    const-string v9, "#NOCHK# -N "

    if-ge v13, v15, :cond_7

    move/from16 p5, v15

    :try_start_1
    aget-object v15, v14, v13

    move-object/from16 v17, v14

    .line 1021
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move/from16 v15, p5

    move-object/from16 v9, v16

    move-object/from16 v14, v17

    goto :goto_2

    :cond_7
    sget-object v13, Ldev/ukanth/ufirewall/Api;->dynChains:[Ljava/lang/String;

    .line 1024
    array-length v14, v13

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_8

    move/from16 v17, v14

    aget-object v14, v13, v15

    move-object/from16 p5, v13

    .line 1025
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, p5

    move/from16 v14, v17

    goto :goto_3

    .line 1030
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#NOCHK# -D OUTPUT -j "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-I OUTPUT 1 -j "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableInbound()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1035
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#NOCHK# -D INPUT -j "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-I INPUT 1 -j "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    :cond_9
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez v3, :cond_b

    sget-object v6, Ldev/ukanth/ufirewall/Api;->natChains:[Ljava/lang/String;

    .line 1040
    array-length v8, v6

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_a

    aget-object v13, v6, v9

    .line 1041
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#NOCHK# -t nat -N "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-t nat -F "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1044
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#NOCHK# -t nat -D OUTPUT -j "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-t nat -I OUTPUT 1 -j "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string v6, "CustomScript"

    .line 1049
    invoke-static {v6, v12}, Ldev/ukanth/ufirewall/Api;->addCustomRules(Ljava/lang/String;Ljava/util/List;)V

    .line 1051
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-3g -j "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-3g-postcustom"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-wifi -j "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-wifi-postcustom"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    invoke-static {v12, v10}, Ldev/ukanth/ufirewall/Api;->addRejectRules(Ljava/util/List;Ljava/lang/String;)V

    .line 1055
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableInbound()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1058
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -m state --state ESTABLISHED -j RETURN"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-input -m state --state ESTABLISHED -j RETURN"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    :cond_c
    invoke-static {v1, v12, v3, v10}, Ldev/ukanth/ufirewall/Api;->addInterfaceRouting(Landroid/content/Context;Ljava/util/List;ZLjava/lang/String;)V

    .line 1066
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -o lo -j "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-localhost"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_d
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableVPN()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v6, "-vpn"

    const-string v8, " -o "

    const-string v9, "#NOCHK# -A "

    const-string v13, " -j "

    if-eqz v1, :cond_f

    :try_start_2
    sget-object v1, Ldev/ukanth/ufirewall/Api;->ITFS_VPN:[Ljava/lang/String;

    .line 1073
    array-length v14, v1

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_e

    move/from16 v17, v14

    aget-object v14, v1, v15

    move-object/from16 p0, v1

    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move/from16 v14, v17

    goto :goto_5

    .line 1081
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " -m mark --mark 0x3c/0xfffc -g "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " -m mark --mark 0x40/0xfff8 -g "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    :cond_f
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v14, "-tether"

    if-eqz v1, :cond_10

    :try_start_3
    sget-object v1, Ldev/ukanth/ufirewall/Api;->ITFS_TETHER:[Ljava/lang/String;

    .line 1087
    array-length v15, v1

    move-object/from16 p0, v6

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v15, :cond_11

    move/from16 v17, v15

    aget-object v15, v1, v6

    move-object/from16 p5, v1

    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p5

    move/from16 v15, v17

    goto :goto_6

    :cond_10
    move-object/from16 p0, v6

    :cond_11
    sget-object v1, Ldev/ukanth/ufirewall/Api;->ITFS_WIFI:[Ljava/lang/String;

    .line 1092
    array-length v6, v1

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v6, :cond_12

    move/from16 v17, v6

    aget-object v6, v1, v15

    move-object/from16 p5, v1

    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-wifi"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p5

    move/from16 v6, v17

    goto :goto_7

    :cond_12
    sget-object v1, Ldev/ukanth/ufirewall/Api;->ITFS_3G:[Ljava/lang/String;

    .line 1096
    array-length v6, v1

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v6, :cond_13

    move/from16 v17, v6

    aget-object v6, v1, v15

    move-object/from16 p5, v1

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-3g"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p5

    move/from16 v6, v17

    goto :goto_8

    :cond_13
    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const/4 v9, 0x1

    aput-object v4, v6, v9

    const-string v15, "network_stack"

    const/16 v17, 0x2

    aput-object v15, v6, v17

    new-array v15, v1, [Ljava/lang/String;

    aput-object v5, v15, v8

    aput-object v4, v15, v9

    const-string v4, "dns_tether"

    aput-object v4, v15, v17

    .line 1104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_14

    const-string v5, "RETURN"

    goto :goto_9

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-reject"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1106
    iget-object v5, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->wifiList:Ljava/util/List;

    const/16 v8, -0xc

    invoke-static {v5, v8}, Ldev/ukanth/ufirewall/Api;->containsUidOrAny(Ljava/util/Collection;I)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v9, "-p tcp --sport=53"

    const-string v13, "-p udp --sport=53"

    const-string v1, "-p udp --sport=67 --dport=68"

    const-string v8, "-wifi-tether"

    if-eqz v5, :cond_15

    .line 1108
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v6, v5, v3}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v15, v3, v5}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v15, v3, v5}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :cond_15
    iget-object v3, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->wifiList:Ljava/util/List;

    const/16 v5, -0xc

    invoke-static {v3, v5}, Ldev/ukanth/ufirewall/Api;->containsUidOrAny(Ljava/util/Collection;I)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v5, "-usb-tether"

    if-nez v3, :cond_16

    :try_start_5
    iget-object v3, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->tetherList:Ljava/util/List;

    move/from16 v18, v11

    const/16 v11, -0xc

    invoke-static {v3, v11}, Ldev/ukanth/ufirewall/Api;->containsUidOrAny(Ljava/util/Collection;I)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_a

    :cond_16
    move/from16 v18, v11

    .line 1118
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v6, v3, v11}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v15, v3, v11}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v15, v3, v11}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :cond_17
    iget-object v3, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->tetherList:Ljava/util/List;

    const/16 v11, -0xc

    invoke-static {v3, v11}, Ldev/ukanth/ufirewall/Api;->containsUidOrAny(Ljava/util/Collection;I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v6, v3, v1}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v15, v1, v3}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v15, v1, v3}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :cond_18
    iget-object v1, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->dataList:Ljava/util/List;

    const/16 v3, -0xc

    invoke-static {v1, v3}, Ldev/ukanth/ufirewall/Api;->containsUidOrAny(Ljava/util/Collection;I)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const-string v6, "-3g-tether"

    const/4 v9, 0x0

    aput-object v6, v3, v9

    const/4 v6, 0x1

    aput-object v8, v3, v6

    aput-object v5, v3, v17

    const/4 v5, 0x3

    aput-object v14, v3, v5

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v1, :cond_19

    .line 1136
    aget-object v5, v3, v8

    .line 1137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-p udp --dport=53"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v15, v6, v9}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-p tcp --dport=53"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v15, v5, v6}, Ldev/ukanth/ufirewall/Api;->addRuleForUsers(Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 1144
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-wifi-tether -j "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-wifi-fork"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-3g-tether -j "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-3g-fork"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v18, :cond_1b

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-wifi-lan"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move/from16 v3, p4

    move-object/from16 v4, v16

    :try_start_6
    invoke-static {v12, v4, v1, v3}, Ldev/ukanth/ufirewall/Api;->addDnsServerRules(Ljava/util/List;Ldev/ukanth/ufirewall/InterfaceDetails;Ljava/lang/String;Z)V

    .line 1154
    iget-object v1, v4, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV4:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v4, Ldev/ukanth/ufirewall/InterfaceDetails;->dnsServersV6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-wifi-lan -p udp --dport 53 -j RETURN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-wifi-lan -p tcp --dport 53 -j RETURN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_1c

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-wifi-wan -p udp --dport 53 -j RETURN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-3g-home -p udp --dport 53 -j RETURN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-3g-roam -p udp --dport 53 -j RETURN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-vpn -p udp --dport 53 -j RETURN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-tether -p udp --dport 53 -j RETURN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-wifi-wan -p tcp --dport 53 -j RETURN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-3g-home -p tcp --dport 53 -j RETURN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-3g-roam -p tcp --dport 53 -j RETURN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-vpn -p tcp --dport 53 -j RETURN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-tether -p tcp --dport 53 -j RETURN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1b
    move/from16 v3, p4

    .line 1176
    :cond_1c
    :goto_c
    iget-object v1, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->dataList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-3g-home"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v5, v18

    invoke-static {v12, v1, v4, v5}, Ldev/ukanth/ufirewall/Api;->addRulesForUidlist(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    .line 1177
    iget-object v1, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->roamList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-3g-roam"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v1, v4, v5}, Ldev/ukanth/ufirewall/Api;->addRulesForUidlist(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    .line 1178
    iget-object v1, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->wifiList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-wifi-wan"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v1, v4, v5}, Ldev/ukanth/ufirewall/Api;->addRulesForUidlist(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    .line 1179
    iget-object v1, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->lanList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-wifi-lan"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v1, v4, v5}, Ldev/ukanth/ufirewall/Api;->addRulesForUidlist(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    .line 1180
    iget-object v1, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->vpnList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v1, v4, v5}, Ldev/ukanth/ufirewall/Api;->addRulesForUidlist(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    .line 1181
    iget-object v1, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->tetherList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v1, v4, v5}, Ldev/ukanth/ufirewall/Api;->addRulesForUidlist(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    .line 1182
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1183
    iget-object v1, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->torList:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v12, v1, v4, v5, v10}, Ldev/ukanth/ufirewall/Api;->addTorRules(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 1188
    :cond_1d
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1190
    iget-object v1, v2, Ldev/ukanth/ufirewall/Api$RuleDataSet;->lanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 1191
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_1e

    .line 1192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-localhost -m owner --uid-owner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -j RETURN"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1196
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-localhost -m owner --uid-owner 0 -j RETURN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-localhost -m owner --uid-owner 2000 -j RETURN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-localhost -j REJECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    const-string v1, "-P OUTPUT ACCEPT"

    .line 1202
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_f

    :catch_0
    move-exception v0

    move/from16 v3, p4

    goto :goto_e

    :catch_1
    move-exception v0

    :goto_e
    move-object v1, v0

    .line 1204
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_f
    move-object/from16 v1, p3

    .line 1207
    invoke-static {v12, v1, v3}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    const/4 v1, 0x1

    return v1
.end method

.method public static applyQuick(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ldev/ukanth/ufirewall/service/RootCommand;",
            ")V"
        }
    .end annotation

    .line 1694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1697
    invoke-static {p1, v0, v1}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    .line 1700
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableIPv6()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->fixLeak()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1702
    invoke-static {p1, v0, v1}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    :cond_1
    const/4 p1, 0x4

    .line 1704
    invoke-virtual {p2, p1}, Ldev/ukanth/ufirewall/service/RootCommand;->setRetryExitCode(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static applyRule(Landroid/content/Context;Ljava/lang/String;ZLdev/ukanth/ufirewall/service/RootCommand;)V
    .locals 1

    .line 2327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2328
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2330
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2331
    invoke-static {v0, p1, p2}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    .line 2332
    invoke-virtual {p3, p0, p1}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static applySavedIp4tablesRules(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ldev/ukanth/ufirewall/service/RootCommand;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x4

    .line 1390
    :try_start_0
    invoke-virtual {p2, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setRetryExitCode(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 1393
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while applying IPv4 rules: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AFWall"

    invoke-static {v2, v1, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1396
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Chain"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "policy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Applying default chains due to rule application failure"

    .line 1397
    invoke-static {v2, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    invoke-static {p0, p2}, Ldev/ukanth/ufirewall/Api;->applyDefaultChains(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    :cond_1
    const-string p0, "Skipping default chains application to preserve user chain preferences"

    .line 1400
    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static applySavedIp6tablesRules(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ldev/ukanth/ufirewall/service/RootCommand;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x4

    .line 1412
    :try_start_0
    invoke-virtual {p2, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setRetryExitCode(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 1415
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while applying IPv6 rules: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AFWall"

    invoke-static {v2, v1, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1418
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Chain"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "policy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Applying default chains due to rule application failure"

    .line 1419
    invoke-static {v2, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-static {p0, p2}, Ldev/ukanth/ufirewall/Api;->applyDefaultChains(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    :cond_1
    const-string p0, "Skipping default chains application to preserve user chain preferences"

    .line 1422
    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V
    .locals 13

    sget-object v0, Ldev/ukanth/ufirewall/Api;->GLOBAL_STATUS_LOCK:Ljava/lang/Object;

    .line 1295
    monitor-enter v0

    :try_start_0
    sget-boolean v1, Ldev/ukanth/ufirewall/Api;->globalStatus:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Ldev/ukanth/ufirewall/Api;->globalStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 1300
    :try_start_1
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->getDataSet()Ldev/ukanth/ufirewall/Api$RuleDataSet;

    move-result-object v9

    .line 1301
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->getThreadSafeChainName()Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "AFWall"

    const-string v4, "Applying IPv4 rules"

    .line 1309
    invoke-static {v3, v4}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, v9

    move v5, p1

    move-object v6, v10

    move-object v8, v12

    .line 1310
    invoke-static/range {v3 .. v8}, Ldev/ukanth/ufirewall/Api;->applyIptablesRulesImpl(Landroid/content/Context;Ldev/ukanth/ufirewall/Api$RuleDataSet;ZLjava/util/List;ZLjava/lang/String;)Z

    .line 1311
    invoke-static {p0, v10, p2}, Ldev/ukanth/ufirewall/Api;->applySavedIp4tablesRules(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)Z

    const-string p2, "AFWall"

    const-string v3, "Successfully applied IPv4 rules"

    .line 1312
    invoke-static {p2, v3}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1319
    :try_start_3
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableIPv6()Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_0

    :try_start_4
    const-string p2, "AFWall"

    const-string v3, "Applying IPv6 rules"

    .line 1321
    invoke-static {p2, v3}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, v9

    move v5, p1

    move-object v6, v11

    move-object v8, v12

    .line 1322
    invoke-static/range {v3 .. v8}, Ldev/ukanth/ufirewall/Api;->applyIptablesRulesImpl(Landroid/content/Context;Ldev/ukanth/ufirewall/Api$RuleDataSet;ZLjava/util/List;ZLjava/lang/String;)Z

    .line 1323
    new-instance p1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {p1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    invoke-static {p0, v11, p1}, Ldev/ukanth/ufirewall/Api;->applySavedIp6tablesRules(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)Z

    const-string p0, "AFWall"

    const-string p1, "Successfully applied IPv6 rules"

    .line 1324
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_5
    const-string p1, "AFWall"

    const-string p2, "Error applying IPv6 rules"

    .line 1326
    invoke-static {p1, p2, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1327
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    const-string p0, "AFWall"

    const-string p1, "Successfully applied all firewall rules"

    .line 1331
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    sput-boolean v2, Ldev/ukanth/ufirewall/Api;->globalStatus:Z

    .line 1337
    :goto_1
    invoke-static {v1}, Ldev/ukanth/ufirewall/Api;->setRulesUpToDate(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_7
    const-string p1, "AFWall"

    const-string p2, "Error applying IPv4 rules"

    .line 1314
    invoke-static {p1, p2, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1315
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :try_start_8
    const-string p1, "AFWall"

    const-string p2, "Error applying rules"

    .line 1334
    invoke-static {p1, p2, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    sput-boolean v2, Ldev/ukanth/ufirewall/Api;->globalStatus:Z

    goto :goto_1

    :goto_2
    sput-boolean v2, Ldev/ukanth/ufirewall/Api;->globalStatus:Z

    .line 1337
    invoke-static {v1}, Ldev/ukanth/ufirewall/Api;->setRulesUpToDate(Z)V

    .line 1338
    throw p0

    :cond_1
    const-string p0, "AFWall"

    const-string p1, "ignore applySavedIptablesRules as existing thread running"

    .line 1340
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :goto_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p0
.end method

.method private static applyShortRules(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "Setting OUTPUT chain to DROP"

    const-string v1, "AFWall"

    .line 959
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "-P OUTPUT DROP"

    .line 960
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Applying custom rules"

    .line 962
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CustomScript"

    .line 963
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/Api;->addCustomRules(Ljava/lang/String;Ljava/util/List;)V

    .line 964
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->getThreadSafeChainName()Ljava/lang/String;

    move-result-object v0

    .line 965
    invoke-static {p0, p1, p2, v0}, Ldev/ukanth/ufirewall/Api;->addInterfaceRouting(Landroid/content/Context;Ljava/util/List;ZLjava/lang/String;)V

    const-string p0, "Setting OUTPUT chain to ACCEPT"

    .line 966
    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "-P OUTPUT ACCEPT"

    .line 967
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static assertBinaries(Landroid/content/Context;Z)Z
    .locals 10

    const-string p1, "Installed binaries for "

    const-string v0, "Installation of the binaries for "

    const-string v1, "Installing binaries for "

    const-string v2, "assertBinaries() - currentVer="

    sget-object v3, Ldev/ukanth/ufirewall/Api;->BINARY_INSTALL_LOCK:Ljava/lang/Object;

    .line 2521
    monitor-enter v3

    :try_start_0
    const-string v4, "AFWall"

    const-string v5, "assertBinaries() called - Entry point"

    .line 2522
    invoke-static {v4, v5}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->getPackageVersion(Landroid/content/Context;)I

    move-result v4

    .line 2525
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->appVersion()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v5, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v8, "AFWall"

    .line 2526
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", storedVer="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->appVersion()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", wasAlreadyInstalled="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2

    const-string v2, "AFWall"

    const-string v8, "assertBinaries() - Verifying existing binaries..."

    .line 2530
    invoke-static {v2, v8}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->verifyBinaries(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "AFWall"

    const-string p1, "assertBinaries() - Verification passed, returning true (no reinstall needed)"

    .line 2532
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    monitor-exit v3

    return v6

    :cond_1
    const-string v2, "AFWall"

    const-string v8, "Binaries verification failed, forcing reinstallation"

    .line 2535
    invoke-static {v2, v8}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    :cond_2
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->getAbi()Ljava/lang/String;

    move-result-object v2

    const-string v8, "AFWall"

    .line 2541
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (currentVer="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storedVer="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->appVersion()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wasAlreadyInstalled="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")..."

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2541
    invoke-static {v8, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    invoke-static {p0, v2}, Ldev/ukanth/ufirewall/Api;->installBinariesForAbi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "AFWall"

    .line 2546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    sget p1, Ldev/ukanth/ufirewall/R$string;->error_binary:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v6}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 2548
    monitor-exit v3

    return v7

    .line 2552
    :cond_3
    sget v0, Ldev/ukanth/ufirewall/R$raw;->afwallstart:I

    const-string v1, "afwallstart"

    invoke-static {p0, v0, v1}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "AFWall"

    const-string v0, "Installation of the arch-independent binaries failed!"

    .line 2554
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    sget p1, Ldev/ukanth/ufirewall/R$string;->error_binary:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 2556
    monitor-exit v3

    return v7

    :cond_4
    const-string v0, "AFWall"

    .line 2559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_5

    const-string p1, "AFWall"

    const-string v0, "New installation completed - showing toast"

    .line 2563
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    sget p1, Ldev/ukanth/ufirewall/R$string;->toast_bin_installed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v7}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_5
    const-string p0, "AFWall"

    const-string p1, "Binaries reinstalled (wasAlreadyInstalled=true) - no toast shown"

    .line 2566
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    :goto_1
    invoke-static {v4}, Ldev/ukanth/ufirewall/util/G;->appVersion(I)I

    .line 2571
    monitor-exit v3

    return v6

    :catchall_0
    move-exception p0

    .line 2572
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static batteryOptimized(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "power"

    .line 4567
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4568
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/PowerManager;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static checkAndCopyFixLeak(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 4047
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->initPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->fixLeak()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->isFixPathFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4048
    new-instance v0, Ljava/io/File;

    sget-object v1, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const-string v2, "bin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4049
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 4051
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4066
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private static checkPartOfMultiUser(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ldev/ukanth/ufirewall/Api$PackageInfoData;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "AFWall"

    .line 2170
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2174
    :try_start_1
    invoke-static {p3, v2}, Ldev/ukanth/ufirewall/Api;->packagesExistForUserUid(Ljava/util/HashMap;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2175
    new-instance v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/Api$PackageInfoData;-><init>()V

    .line 2176
    iput v2, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    .line 2177
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->installTime:J

    .line 2178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    .line 2179
    iget-object v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(M)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2180
    iput-object p0, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appinfo:Landroid/content/pm/ApplicationInfo;

    .line 2181
    iget-object v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appinfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1

    iget-object v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appinfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 2183
    iput v5, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appType:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 2186
    iput v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appType:I

    .line 2188
    :goto_1
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    .line 2189
    invoke-virtual {p4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2192
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p0

    .line 2196
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :cond_2
    return-void
.end method

.method private static containsUidOrAny(Ljava/util/Collection;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    const/16 v0, -0xa

    .line 1219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static copyRawFile(Landroid/content/Context;ILjava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 556
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 558
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 562
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_0

    const/4 v2, 0x0

    .line 563
    invoke-virtual {v1, p1, v2, p2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 566
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const-string p0, "chmod"

    .line 569
    filled-new-array {p0, p3, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->executeSecureCommand([Ljava/lang/String;)V

    return-void
.end method

.method public static copySharedPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .line 4534
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4535
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 4536
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4537
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4538
    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4539
    :cond_1
    instance-of v2, v1, Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 4540
    check-cast v1, Ljava/util/Set;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4541
    :cond_2
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 4542
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4543
    :cond_3
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 4544
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4545
    :cond_4
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 4546
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4547
    :cond_5
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 4548
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4551
    :cond_6
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "clipboard"

    .line 4006
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    const-string v0, "label"

    .line 4007
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 4008
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public static donateDialog(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3054
    sget p1, Ldev/ukanth/ufirewall/R$string;->donate_only:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3057
    :cond_0
    :try_start_0
    new-instance p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {p1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v1, Ldev/ukanth/ufirewall/R$string;->buy_donate:I

    .line 3058
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v1, Ldev/ukanth/ufirewall/R$string;->donate_only:I

    .line 3059
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v1, Ldev/ukanth/ufirewall/R$string;->buy_donate:I

    .line 3060
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v1, Ldev/ukanth/ufirewall/R$string;->close:I

    .line 3061
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 3062
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$drawable;->ic_launcher:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v1, Ldev/ukanth/ufirewall/Api$2;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/Api$2;-><init>(Landroid/content/Context;)V

    .line 3063
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v1, Ldev/ukanth/ufirewall/Api$1;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/Api$1;-><init>()V

    .line 3072
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 3079
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3081
    :catch_0
    sget p1, Ldev/ukanth/ufirewall/R$string;->donate_only:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static errorNotification(Landroid/content/Context;)V
    .locals 8

    .line 2726
    sget v0, Ldev/ukanth/ufirewall/R$string;->firewall_error_notify:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    .line 2728
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x9

    .line 2729
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/4 v5, 0x0

    const-string v6, "firewall.error"

    if-lt v3, v4, :cond_2

    const/4 v3, 0x3

    .line 2732
    invoke-static {v6, v0, v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 2733
    invoke-static {v0, v5}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    .line 2734
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getNotificationPriority()I

    move-result v4

    if-nez v4, :cond_0

    .line 2735
    invoke-static {v0, v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;I)V

    :cond_0
    const/4 v3, 0x0

    .line 2737
    invoke-static {v0, v3, v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 2738
    invoke-static {v0, v5}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 2739
    invoke-static {v0, v5}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 2740
    invoke-static {v0, v5}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/NotificationChannel;Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x24

    if-lt v3, v4, :cond_1

    .line 2744
    invoke-static {v0, v5}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/app/NotificationChannel;Z)V

    .line 2747
    :cond_1
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 2751
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Ldev/ukanth/ufirewall/MainActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.MAIN"

    .line 2752
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    .line 2753
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x24000000

    .line 2754
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2757
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v3

    const-class v4, Ldev/ukanth/ufirewall/MainActivity;

    .line 2758
    invoke-virtual {v3, v4}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-class v7, Ldev/ukanth/ufirewall/MainActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2759
    invoke-virtual {v3, v4}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/high16 v3, 0x4000000

    .line 2761
    invoke-static {p0, v5, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2762
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v3, p0, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2763
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 2765
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "err"

    .line 2766
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, -0x1

    .line 2767
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Ldev/ukanth/ufirewall/R$string;->error_notification_title:I

    .line 2768
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Ldev/ukanth/ufirewall/R$string;->error_notification_text:I

    .line 2769
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Ldev/ukanth/ufirewall/R$string;->error_notification_ticker:I

    .line 2770
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    sget v3, Ldev/ukanth/ufirewall/R$drawable;->notification_warn:I

    .line 2771
    invoke-virtual {p0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 v3, 0x1

    .line 2772
    invoke-virtual {p0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 2773
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 2774
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 2776
    invoke-virtual {v1, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private static executeFallbackShellCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "AFWall"

    const-string v1, "Using fallback shell execution for command: "

    const/4 v2, 0x0

    .line 4246
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v5

    .line 4252
    new-instance v6, Ldev/ukanth/ufirewall/Api$3;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, v5, p0, v4, v1}, Ldev/ukanth/ufirewall/Api$3;-><init>(I[Ljava/lang/String;[ZLjava/util/List;)V

    .line 4269
    invoke-static {v3, v5}, Lcom/stericson/roottools/RootTools;->getShell(ZI)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 4272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_0
    aget-boolean p0, v4, v5

    if-nez p0, :cond_0

    .line 4273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x7530

    cmp-long p0, v8, v10

    if-gez p0, :cond_0

    const-wide/16 v8, 0x64

    .line 4274
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    aget-boolean p0, v4, v5

    if-eqz p0, :cond_1

    const-string p0, "Fallback shell execution completed successfully"

    .line 4278
    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string p0, "Fallback shell execution timed out"

    .line 4281
    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 4286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Fallback shell execution also failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static executeSafeShellCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "AFWall"

    .line 4210
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 4216
    :cond_0
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v1

    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4217
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const-string v1, "Shell is not available or not alive, trying fallback"

    .line 4211
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->executeFallbackShellCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 4235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected error in safe shell execution, trying fallback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4236
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->executeFallbackShellCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception v1

    .line 4224
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 4225
    instance-of v3, v2, Ljava/util/concurrent/ExecutionException;

    if-eqz v3, :cond_3

    .line 4226
    check-cast v2, Ljava/util/concurrent/ExecutionException;

    .line 4227
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_3

    .line 4228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Shell execution interrupted at library level - trying fallback: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4229
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->executeFallbackShellCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4233
    :cond_3
    throw v1

    :catch_2
    move-exception v1

    .line 4220
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Shell execution rejected - trying fallback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->executeFallbackShellCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static executeSecureCommand([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 580
    array-length v0, p0

    if-eqz v0, :cond_4

    .line 585
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "AFWall"

    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    if-eqz v4, :cond_0

    const-string v5, "\n"

    .line 586
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "\r"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ";"

    .line 587
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "`"

    .line 588
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rejecting command with potentially dangerous characters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Command contains illegal characters"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 594
    :cond_1
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 596
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 597
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    array-length v2, p0

    if-lez v2, :cond_2

    const-string v2, "chmod"

    aget-object v1, p0, v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod command failed (expected on Android without root): exit code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 605
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Command failed with exit code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Command execution failed with exit code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    .line 581
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Command cannot be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static exportAll(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 3287
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 3290
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 3293
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "afwall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3294
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3295
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 3298
    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3299
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3301
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3302
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3303
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3304
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3305
    sget-object v4, Ldev/ukanth/ufirewall/util/G;->profiles:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 3306
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {p0, v7}, Ldev/ukanth/ufirewall/Api;->getRulesForProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "profiles"

    .line 3308
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3310
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3311
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getAdditionalProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3312
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {p0, v5}, Ldev/ukanth/ufirewall/Api;->getRulesForProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    const-string v4, "additional_profiles"

    .line 3314
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 3316
    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "AFWallPrefs"

    .line 3318
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {p0, v4}, Ldev/ukanth/ufirewall/Api;->getRulesForProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3320
    invoke-static {}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfiles()Ljava/util/List;

    move-result-object v4

    .line 3321
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 3322
    invoke-virtual {v5}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3323
    invoke-virtual {v5}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AFWallProfile"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3324
    invoke-virtual {v5}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 3326
    :cond_5
    invoke-virtual {v5}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/json/JSONObject;

    invoke-static {p0, v6}, Ldev/ukanth/ufirewall/Api;->getRulesForProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    const-string v4, "_profiles"

    .line 3328
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 3331
    :cond_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->getCurrentRulesAsMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v4, "default"

    .line 3332
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    const-string v3, "prefs"

    .line 3335
    sget-object v4, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v4}, Ldev/ukanth/ufirewall/Api;->getAllAppPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3337
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_8

    const-string v3, "profilePrefs"

    .line 3338
    sget-object v4, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v4}, Ldev/ukanth/ufirewall/Api;->getAllAppPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3341
    :cond_8
    sget-object p0, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v3, "BlockMode"

    const-string v4, "whitelist"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "mode"

    .line 3342
    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3344
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    .line 3346
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catchall_0
    move-exception p0

    .line 3298
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "AFWall"

    .line 3349
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_7
    return v0
.end method

.method public static exportAllPreferencesToFileConfirm(Landroid/content/Context;)V
    .locals 3

    .line 3096
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "afwall-backup-all-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3097
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->exportAll(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Ldev/ukanth/ufirewall/R$string;->export_rules_success:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3100
    :cond_0
    sget v0, Ldev/ukanth/ufirewall/R$string;->export_rules_fail:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static exportAllPreferencesToFileWithPicker(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 3109
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->showExportFileDialog(Landroid/content/Context;Z)V

    return-void
.end method

.method private static exportAllToFile(Landroid/content/Context;Ljava/io/File;)Z
    .locals 12

    const-string v0, "AFWall"

    const/4 v1, 0x0

    .line 3179
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3180
    :try_start_1
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3182
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 3183
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3184
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3185
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3186
    sget-object v6, Ldev/ukanth/ufirewall/util/G;->profiles:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 3187
    new-instance v10, Lorg/json/JSONObject;

    invoke-static {p0, v9}, Ldev/ukanth/ufirewall/Api;->getRulesForProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string v6, "profiles"

    .line 3189
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3191
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3192
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getAdditionalProfiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3193
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {p0, v7}, Ldev/ukanth/ufirewall/Api;->getRulesForProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string v6, "additional_profiles"

    .line 3195
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 3197
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "AFWallPrefs"

    .line 3199
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {p0, v6}, Ldev/ukanth/ufirewall/Api;->getRulesForProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3201
    invoke-static {}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfiles()Ljava/util/List;

    move-result-object v6

    .line 3202
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 3203
    invoke-virtual {v7}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3204
    invoke-virtual {v7}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AFWallProfile"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3205
    invoke-virtual {v7}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 3207
    :cond_3
    invoke-virtual {v7}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lorg/json/JSONObject;

    invoke-static {p0, v8}, Ldev/ukanth/ufirewall/Api;->getRulesForProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    const-string v6, "_profiles"

    .line 3209
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 3212
    :cond_5
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->getCurrentRulesAsMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v6, "default"

    .line 3213
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    const-string v5, "prefs"

    .line 3216
    sget-object v6, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v6}, Ldev/ukanth/ufirewall/Api;->getAllAppPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3218
    sget-object v5, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_6

    const-string v5, "profilePrefs"

    .line 3219
    sget-object v6, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v6}, Ldev/ukanth/ufirewall/Api;->getAllAppPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3222
    :cond_6
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 3223
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    const/4 v1, 0x1

    .line 3225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully exported all preferences to: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3226
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catchall_0
    move-exception p0

    .line 3179
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 3227
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error exporting all preferences to file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_6
    return v1
.end method

.method public static exportRules(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "AFWall"

    const-string v1, "["

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 3386
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    .line 3389
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 3392
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/afwall/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3393
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 3394
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    const/4 p1, 0x0

    .line 3399
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3400
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3403
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->getCurrentRulesAsMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 3404
    new-instance p0, Lorg/json/JSONArray;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3406
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "rules"

    .line 3407
    invoke-virtual {v1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3409
    sget-object p0, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v4, "BlockMode"

    const-string v5, "whitelist"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "mode"

    .line 3410
    invoke-virtual {v1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3412
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 p1, 0x1

    .line 3414
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 3415
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3423
    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 3421
    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception p0

    .line 3419
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p1
.end method

.method private static exportRulesToFile(Landroid/content/Context;Ljava/io/File;)Z
    .locals 8

    const-string v0, "AFWall"

    const-string v1, "Successfully exported rules to: "

    const-string v2, "["

    const/4 v3, 0x0

    .line 3157
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3158
    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3160
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->getCurrentRulesAsMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 3161
    new-instance p0, Lorg/json/JSONArray;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3162
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "rules"

    .line 3163
    invoke-virtual {v2, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3164
    sget-object p0, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v6, "BlockMode"

    const-string v7, "whitelist"

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v6, "mode"

    .line 3165
    invoke-virtual {v2, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3167
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    const/4 v3, 0x1

    .line 3170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3171
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 3157
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 3172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error exporting rules to file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_2
    return v3
.end method

.method public static exportRulesToFileConfirm(Landroid/content/Context;)V
    .locals 3

    .line 3087
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "afwall-backup-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3088
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->exportRules(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Ldev/ukanth/ufirewall/R$string;->export_rules_success:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3091
    :cond_0
    sget v0, Ldev/ukanth/ufirewall/R$string;->export_rules_fail:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static exportRulesToFileWithPicker(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 3105
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->showExportFileDialog(Landroid/content/Context;Z)V

    return-void
.end method

.method public static fastApply(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)Z
    .locals 5

    const-string v0, "AFWall"

    const/4 v1, 0x1

    .line 1431
    :try_start_0
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->getRulesUpToDate()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Using full Apply"

    .line 1432
    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    invoke-static {p0, v1, p1}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    :cond_0
    const-string v2, "Using fastApply"

    .line 1435
    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 1439
    invoke-static {p0, v3, v4}, Ldev/ukanth/ufirewall/Api;->applyShortRules(Landroid/content/Context;Ljava/util/List;Z)V

    .line 1440
    invoke-static {v3, v2, v4}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    .line 1441
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableIPv6()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1442
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    invoke-static {p0, v3, v1}, Ldev/ukanth/ufirewall/Api;->applyShortRules(Landroid/content/Context;Ljava/util/List;Z)V

    .line 1444
    invoke-static {v3, v2, v1}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    :cond_1
    const/4 v3, 0x4

    .line 1446
    invoke-virtual {p1, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setRetryExitCode(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1449
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in fastApply: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1452
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Chain"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Applying default chains due to fastApply failure"

    .line 1453
    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->applyDefaultChains(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    :cond_2
    const-string p0, "Skipping default chains application in fastApply to preserve user chain preferences"

    .line 1456
    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :goto_0
    invoke-static {v1}, Ldev/ukanth/ufirewall/Api;->setRulesUpToDate(Z)V

    return v1
.end method

.method public static fetchIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V
    .locals 3

    .line 1659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1660
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "-n -v -L"

    .line 1661
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 1662
    invoke-static {v0, v1, v2}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1664
    invoke-static {v0, v1, p1}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    .line 1666
    :cond_0
    invoke-virtual {p2, p0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static fetchLogs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation

    .line 1758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 1759
    invoke-static {v3}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v3

    const-class v4, Ldev/ukanth/ufirewall/log/LogData;

    .line 1760
    invoke-virtual {v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v6, Ldev/ukanth/ufirewall/log/LogData_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 1761
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->greaterThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v3, v5}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    sget-object v1, Ldev/ukanth/ufirewall/log/LogData_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 1762
    invoke-virtual {v0, v1, v4}, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderBy(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    .line 1763
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->queryList()Ljava/util/List;

    move-result-object v0

    .line 1764
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->purgeOldLog()V

    .line 1766
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 1767
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static findSystemBinary(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/xbin/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/vendor/bin/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/sbin/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/usr/bin/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/bin/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "AFWall"

    const/4 v4, 0x6

    if-ge v2, v4, :cond_1

    .line 421
    aget-object v4, v0, v2

    .line 422
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->canExecute()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 424
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Found system binary: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "which "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 433
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 434
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found system binary via \'which\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to use \'which\' command to find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "System binary "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found in any standard location"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static fixFolderPermissionsAsync(Landroid/content/Context;)V
    .locals 1

    .line 1817
    new-instance v0, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda14;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static fixupLegacyCmds(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1259
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1260
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "#NOCHK# .*"

    .line 1261
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "^#NOCHK# "

    const-string v3, ""

    .line 1262
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1264
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " || exit"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1266
    :goto_1
    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static flushAllRules(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2

    .line 1714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "-F"

    .line 1715
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "-X"

    .line 1716
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1717
    invoke-static {p0, v0, p1}, Ldev/ukanth/ufirewall/Api;->apply46(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method public static flushOtherRules(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2

    .line 3998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "-F firewall"

    .line 3999
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "-X firewall"

    .line 4000
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4001
    invoke-static {p0, v0, p1}, Ldev/ukanth/ufirewall/Api;->apply46(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method public static forceReinstallBinaries(Landroid/content/Context;Z)Z
    .locals 2

    const-string v0, "AFWall"

    const-string v1, "Forcing binary reinstallation..."

    .line 2583
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 2586
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->appVersion(I)I

    .line 2588
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->assertBinaries(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static generateRules(Landroid/content/Context;Ljava/util/List;Z)Ldev/ukanth/ufirewall/Api$RuleDataSet;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/Api$PackageInfoData;",
            ">;Z)",
            "Ldev/ukanth/ufirewall/Api$RuleDataSet;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 1470
    invoke-static {v1}, Ldev/ukanth/ufirewall/Api;->setRulesUpToDate(Z)V

    if-eqz v0, :cond_10

    .line 1475
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1476
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1477
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1478
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1479
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1480
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1481
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v9, 0x0

    .line 1483
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_e

    .line 1484
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 1485
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget-boolean v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    if-eqz v10, :cond_0

    .line 1486
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 1488
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    neg-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1490
    :cond_1
    :goto_1
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget-boolean v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    if-eqz v10, :cond_2

    .line 1491
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    .line 1493
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    neg-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1495
    :cond_3
    :goto_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableRoam()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1496
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget-boolean v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    if-eqz v10, :cond_4

    .line 1497
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    if-nez p2, :cond_5

    .line 1499
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    neg-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1502
    :cond_5
    :goto_3
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableVPN()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1503
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget-boolean v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    if-eqz v10, :cond_6

    .line 1504
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    if-nez p2, :cond_7

    .line 1506
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    neg-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1509
    :cond_7
    :goto_4
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1510
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget-boolean v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    if-eqz v10, :cond_8

    .line 1511
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    if-nez p2, :cond_9

    .line 1513
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    neg-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1516
    :cond_9
    :goto_5
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1517
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget-boolean v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    if-eqz v10, :cond_a

    .line 1518
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    if-nez p2, :cond_b

    .line 1520
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    neg-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1523
    :cond_b
    :goto_6
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1524
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget-boolean v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    if-eqz v10, :cond_c

    .line 1525
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    if-nez p2, :cond_d

    .line 1527
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    iget v10, v10, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    neg-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_e
    const-string v0, "|"

    .line 1533
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    .line 1534
    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    .line 1535
    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    .line 1536
    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    .line 1537
    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    .line 1538
    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    .line 1539
    invoke-static {v0, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_f

    sget-object v2, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    move-object v3, p0

    .line 1542
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1543
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "AllowedPKGWifi_UIDS"

    .line 1544
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "AllowedPKG3G_UIDS"

    .line 1545
    invoke-interface {v1, v2, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "AllowedPKGRoaming_UIDS"

    .line 1546
    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "AllowedPKGVPN_UIDS"

    .line 1547
    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "AllowedPKGTether_UIDS"

    .line 1548
    invoke-interface {v1, v2, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "AllowedPKGLAN_UIDS"

    .line 1549
    invoke-interface {v1, v2, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "AllowedPKGTOR_UIDS"

    .line 1550
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1551
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_8

    .line 1553
    :cond_f
    new-instance v0, Ldev/ukanth/ufirewall/Api$RuleDataSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object v10, v13

    invoke-direct/range {v3 .. v10}, Ldev/ukanth/ufirewall/Api$RuleDataSet;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private static getAbi()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 2504
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 2506
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method private static getAllAppPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3370
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 3371
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 3372
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3373
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3374
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3375
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static getApplicationIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    sget-object v0, Ldev/ukanth/ufirewall/Api;->uidToApplicationInfoMap:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 2957
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2958
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_2

    .line 2962
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2963
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 2964
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "pm list packages"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2967
    invoke-static {v4}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v4

    invoke-virtual {v4}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v4

    .line 2968
    invoke-virtual {v4}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v4

    .line 2969
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_0
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "package:"

    .line 2970
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x8

    .line 2971
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2972
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_1

    .line 2974
    :try_start_1
    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2975
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2982
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Shell-based icon lookup supplement failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AFWall"

    invoke-static {v2, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/Api;->uidToApplicationInfoMap:Ljava/util/Map;

    .line 2987
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    sget-object v2, Ldev/ukanth/ufirewall/Api;->uidToApplicationInfoMap:Ljava/util/Map;

    .line 2988
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ldev/ukanth/ufirewall/Api;->uidToApplicationInfoMap:Ljava/util/Map;

    .line 2989
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    sget-object v0, Ldev/ukanth/ufirewall/Api;->uidToApplicationInfoMap:Ljava/util/Map;

    .line 2994
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_5

    .line 2996
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2997
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 2999
    :cond_5
    sget p1, Ldev/ukanth/ufirewall/R$drawable;->ic_unknown:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getApps(Landroid/content/Context;Ldev/ukanth/ufirewall/MainActivity$GetAppList;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldev/ukanth/ufirewall/MainActivity$GetAppList;",
            ")",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/Api$PackageInfoData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "AFWall"

    .line 1837
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->initSpecial()V

    sget-object v3, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1838
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    return-object v0

    :cond_0
    sget-object v3, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    .line 1843
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "AllowedPKGWifi_UIDS"

    const-string v6, ""

    .line 1845
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "AllowedPKG3G_UIDS"

    .line 1846
    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AllowedPKGRoaming_UIDS"

    .line 1847
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "AllowedPKGVPN_UIDS"

    .line 1848
    invoke-interface {v3, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "AllowedPKGTether_UIDS"

    .line 1849
    invoke-interface {v3, v10, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "AllowedPKGLAN_UIDS"

    .line 1850
    invoke-interface {v3, v11, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "AllowedPKGTOR_UIDS"

    .line 1851
    invoke-interface {v3, v12, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1855
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1858
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1859
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1862
    invoke-static {v5}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1863
    invoke-static {v7}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1865
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableRoam()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1866
    invoke-static {v8}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 1868
    :cond_1
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableVPN()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1869
    invoke-static {v9}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 1871
    :cond_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1872
    invoke-static {v10}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1874
    :cond_3
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1875
    invoke-static {v11}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    :cond_4
    move-object/from16 v8, v16

    .line 1877
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1878
    invoke-static {v12}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    :cond_5
    move-object/from16 v9, v17

    const-string v10, "AFWallPrefs"

    .line 1883
    invoke-virtual {v0, v10, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1887
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sput-object v11, Ldev/ukanth/ufirewall/Api;->listOfUids:Ljava/util/List;

    const-string v11, "user"

    .line 1889
    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 1890
    invoke-virtual {v11}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v11

    .line 1892
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserHandle;

    sget-object v4, Ldev/ukanth/ufirewall/Api;->p:Ljava/util/regex/Pattern;

    .line 1893
    invoke-virtual {v12}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1894
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v12

    if-lez v12, :cond_6

    const/4 v12, 0x1

    .line 1895
    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    sget-object v12, Ldev/ukanth/ufirewall/Api;->listOfUids:Ljava/util/List;

    .line 1897
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 1904
    :cond_7
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->supportDual()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x2080

    goto :goto_1

    :cond_8
    const/16 v4, 0x80

    .line 1907
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1908
    invoke-virtual {v11, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v18, v9

    const/16 v9, 0x1e

    if-lt v0, v9, :cond_b

    .line 1914
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1915
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 p0, v9

    move-object/from16 v9, v19

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 1916
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v9, p0

    goto :goto_2

    :cond_9
    move-object/from16 v19, v8

    const/4 v9, 0x1

    :try_start_1
    new-array v8, v9, [Ljava/lang/String;

    const-string v9, "pm list packages"

    const/16 v16, 0x0

    aput-object v9, v8, v16

    .line 1919
    invoke-static {v8}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v8

    invoke-virtual {v8}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v8

    .line 1920
    invoke-virtual {v8}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v8

    .line 1921
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 p0, v8

    const-string v8, "package:"

    .line 1922
    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x8

    .line 1923
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1924
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v9, :cond_a

    .line 1926
    :try_start_2
    invoke-virtual {v11, v8, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 1927
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1928
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    :cond_a
    move-object/from16 v8, p0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1936
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shell-based package discovery failed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    move-object/from16 v19, v8

    .line 1939
    :cond_c
    :goto_4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1940
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v8, "cache.label."

    .line 1948
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 1949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/32 v22, 0x2bf20

    move-object v10, v14

    move-object/from16 v24, v15

    sub-long v14, v20, v22

    invoke-virtual {v9, v14, v15}, Ljava/util/Date;->setTime(J)V

    .line 1951
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1952
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1953
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->supportDual()Z

    move-result v15

    if-eqz v15, :cond_d

    sget-object v14, Ldev/ukanth/ufirewall/Api;->listOfUids:Ljava/util/List;

    .line 1954
    invoke-static {v14}, Ldev/ukanth/ufirewall/Api;->getPackagesForUser(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v14

    :cond_d
    move-object/from16 p0, v9

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1957
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v15, v9, :cond_22

    move-object/from16 v22, v14

    const/4 v9, 0x1

    add-int/lit8 v14, v20, 0x1

    .line 1960
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_e

    .line 1963
    invoke-virtual {v1, v14}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->doProgress(I)V

    .line 1967
    :cond_e
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    if-nez v1, :cond_f

    move-object/from16 v20, v12

    const-string v12, "android.permission.INTERNET"

    move/from16 v23, v14

    .line 1969
    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->showAllApps()Z

    move-result v12

    if-nez v12, :cond_10

    move-object/from16 v25, v3

    move-object/from16 v26, v6

    move-object v6, v13

    move-object/from16 v12, v19

    move-object/from16 v13, v24

    move-object/from16 v3, p0

    move-object/from16 v19, v8

    move-object/from16 p0, v11

    move-object/from16 v8, v18

    :goto_6
    move-object/from16 v11, v22

    goto/16 :goto_f

    :cond_f
    move-object/from16 v20, v12

    move/from16 v23, v14

    .line 1973
    :cond_10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1974
    invoke-interface {v3, v12, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1975
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_12

    move-object/from16 v25, v3

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ldev/ukanth/ufirewall/Api;->isRecentlyInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_7

    :cond_11
    const/4 v3, 0x0

    goto :goto_8

    :cond_12
    move-object/from16 v25, v3

    .line 1977
    :goto_7
    invoke-virtual {v11, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1978
    invoke-interface {v4, v12, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x1

    const/16 v21, 0x1

    :goto_8
    if-nez v1, :cond_15

    .line 1983
    new-instance v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/Api$PackageInfoData;-><init>()V

    .line 1984
    iget v12, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v12, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    .line 1987
    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v12, :cond_13

    .line 1988
    new-instance v12, Ljava/io/File;

    move-object/from16 v26, v6

    iget-object v6, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v13

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    iput-wide v12, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->installTime:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :cond_13
    move-object/from16 v26, v6

    move-object v6, v13

    .line 1992
    :try_start_4
    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 1993
    iget-wide v12, v12, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v12, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->installTime:J
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2001
    :goto_9
    :try_start_5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    .line 2002
    iget-object v12, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2003
    iput-object v9, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appinfo:Landroid/content/pm/ApplicationInfo;

    .line 2004
    iget-object v12, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appinfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_14

    iget-object v12, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appinfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v13, 0x1

    and-int/2addr v12, v13

    if-nez v12, :cond_14

    .line 2006
    iput v13, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appType:I

    const/4 v12, 0x0

    goto :goto_a

    :cond_14
    const/4 v12, 0x0

    .line 2009
    iput v12, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appType:I

    .line 2011
    :goto_a
    iget-object v13, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v13, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    .line 2012
    iget v13, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v16, 0x800000

    and-int v13, v13, v16

    if-eqz v13, :cond_16

    .line 2013
    iget v13, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b

    :catch_2
    const/4 v12, 0x0

    .line 1996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping app with null sourceDir and no package info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    move-object/from16 p0, v11

    move-object/from16 v12, v19

    move-object/from16 v11, v22

    move-object/from16 v13, v24

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    goto/16 :goto_f

    :cond_15
    move-object/from16 v26, v6

    move-object v6, v13

    const/4 v12, 0x0

    .line 2015
    iget-object v13, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2018
    :cond_16
    :goto_b
    iput-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->firstseen:Z

    .line 2020
    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    if-nez v3, :cond_17

    iget v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_17

    const/4 v3, 0x1

    .line 2021
    iput-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    .line 2023
    :cond_17
    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    if-nez v3, :cond_18

    iget v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_18

    const/4 v3, 0x1

    .line 2024
    iput-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    .line 2026
    :cond_18
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableRoam()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    if-nez v3, :cond_19

    iget v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_19

    const/4 v3, 0x1

    .line 2027
    iput-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    .line 2029
    :cond_19
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableVPN()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    if-nez v3, :cond_1a

    iget v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1a

    const/4 v3, 0x1

    .line 2030
    iput-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    .line 2032
    :cond_1a
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    if-nez v3, :cond_1b

    iget v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v13, v24

    invoke-static {v13, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1c

    const/4 v3, 0x1

    .line 2033
    iput-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    goto :goto_c

    :cond_1b
    move-object/from16 v13, v24

    .line 2035
    :cond_1c
    :goto_c
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    if-nez v3, :cond_1d

    iget v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v12, v19

    invoke-static {v12, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1e

    const/4 v3, 0x1

    .line 2036
    iput-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    goto :goto_d

    :cond_1d
    move-object/from16 v12, v19

    .line 2038
    :cond_1e
    :goto_d
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    if-nez v3, :cond_1f

    iget v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    invoke-static {v8, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_20

    const/4 v3, 0x1

    .line 2039
    iput-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    goto :goto_e

    :cond_1f
    move-object/from16 v19, v8

    move-object/from16 v8, v18

    .line 2041
    :cond_20
    :goto_e
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->supportDual()Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Ldev/ukanth/ufirewall/Api;->listOfUids:Ljava/util/List;

    move-object/from16 v3, p0

    move-object/from16 p0, v11

    move-object/from16 v11, v22

    .line 2042
    invoke-static {v9, v14, v1, v11, v3}, Ldev/ukanth/ufirewall/Api;->checkPartOfMultiUser(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Landroid/util/SparseArray;)V

    goto :goto_f

    :cond_21
    move-object/from16 v3, p0

    move-object/from16 p0, v11

    goto/16 :goto_6

    :goto_f
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v18, v8

    move-object v14, v11

    move-object/from16 v24, v13

    move-object/from16 v8, v19

    move-object/from16 v11, p0

    move-object/from16 p0, v3

    move-object v13, v6

    move-object/from16 v19, v12

    move-object/from16 v12, v20

    move/from16 v20, v23

    move-object/from16 v3, v25

    move-object/from16 v6, v26

    goto/16 :goto_5

    :cond_22
    move-object/from16 v3, p0

    move-object v6, v13

    move-object/from16 v8, v18

    move-object/from16 v12, v19

    move-object/from16 v13, v24

    .line 2046
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->supportDual()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    .line 2048
    :goto_10
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_2a

    .line 2049
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 2050
    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    if-nez v11, :cond_23

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_23

    const/4 v11, 0x1

    .line 2051
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    .line 2053
    :cond_23
    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    if-nez v11, :cond_24

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_24

    const/4 v11, 0x1

    .line 2054
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    .line 2056
    :cond_24
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableRoam()Z

    move-result v11

    if-eqz v11, :cond_25

    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    if-nez v11, :cond_25

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_25

    const/4 v11, 0x1

    .line 2057
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    .line 2059
    :cond_25
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableVPN()Z

    move-result v11

    if-eqz v11, :cond_26

    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    if-nez v11, :cond_26

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_26

    const/4 v11, 0x1

    .line 2060
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    .line 2062
    :cond_26
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v11

    if-eqz v11, :cond_27

    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    if-nez v11, :cond_27

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v13, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_27

    const/4 v11, 0x1

    .line 2063
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    .line 2065
    :cond_27
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v11

    if-eqz v11, :cond_28

    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    if-nez v11, :cond_28

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_28

    const/4 v11, 0x1

    .line 2066
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    .line 2068
    :cond_28
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v11

    if-eqz v11, :cond_29

    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    if-nez v11, :cond_29

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_29

    const/4 v11, 0x1

    .line 2069
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    .line 2071
    :cond_29
    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    .line 2075
    :cond_2a
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->getSpecialData()Ljava/util/List;

    move-result-object v1

    sget-object v3, Ldev/ukanth/ufirewall/Api;->specialApps:Ljava/util/Map;

    if-nez v3, :cond_2b

    .line 2078
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Ldev/ukanth/ufirewall/Api;->specialApps:Ljava/util/Map;

    :cond_2b
    const/4 v3, 0x0

    .line 2080
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_34

    .line 2081
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    const/4 v11, 0x2

    .line 2083
    iput v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appType:I

    sget-object v11, Ldev/ukanth/ufirewall/Api;->specialApps:Ljava/util/Map;

    .line 2084
    iget-object v14, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    iget v15, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    const/4 v14, -0x1

    if-eq v11, v14, :cond_33

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_33

    .line 2088
    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    if-nez v11, :cond_2c

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_2c

    const/4 v11, 0x1

    .line 2089
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    .line 2091
    :cond_2c
    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    if-nez v11, :cond_2d

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_2d

    const/4 v11, 0x1

    .line 2092
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    .line 2094
    :cond_2d
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableRoam()Z

    move-result v11

    if-eqz v11, :cond_2e

    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    if-nez v11, :cond_2e

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_2e

    const/4 v11, 0x1

    .line 2095
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    .line 2097
    :cond_2e
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableVPN()Z

    move-result v11

    if-eqz v11, :cond_2f

    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    if-nez v11, :cond_2f

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_2f

    const/4 v11, 0x1

    .line 2098
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    .line 2100
    :cond_2f
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v11

    if-eqz v11, :cond_30

    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    if-nez v11, :cond_30

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v13, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_30

    const/4 v11, 0x1

    .line 2101
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    .line 2103
    :cond_30
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v11

    if-eqz v11, :cond_31

    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    if-nez v11, :cond_31

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_31

    const/4 v11, 0x1

    .line 2104
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    .line 2106
    :cond_31
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v11

    if-eqz v11, :cond_32

    iget-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    if-nez v11, :cond_32

    iget v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_32

    const/4 v11, 0x1

    .line 2107
    iput-boolean v11, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    goto :goto_12

    :cond_32
    const/4 v11, 0x1

    .line 2109
    :goto_12
    iget v14, v9, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-virtual {v0, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_13

    :cond_33
    const/4 v11, 0x1

    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    :cond_34
    if-eqz v21, :cond_35

    .line 2114
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2117
    :cond_35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    const/4 v4, 0x0

    .line 2118
    :goto_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_36

    sget-object v1, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    .line 2119
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_36
    sget-object v0, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    const-string v1, "Exception in getting app list"

    .line 2123
    invoke-static {v2, v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 2125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getBinaryPath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6

    .line 342
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ip_path()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "ip6tables"

    goto :goto_0

    :cond_0
    const-string p1, "iptables"

    .line 346
    :goto_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isBuiltinIptablesFailed()Z

    move-result v1

    const-string v2, "System binary "

    const/4 v3, 0x1

    const-string v4, "AFWall"

    if-eqz v1, :cond_3

    const-string v1, "builtin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Built-in iptables previously failed, preferring system binary for "

    .line 347
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->findSystemBinary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object p1, Ldev/ukanth/ufirewall/Api;->bbPath:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 351
    invoke-static {p0, v3}, Ldev/ukanth/ufirewall/Api;->getBusyBoxPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ldev/ukanth/ufirewall/Api;->bbPath:Ljava/lang/String;

    :cond_1
    return-object v1

    .line 355
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found despite previous built-in failure"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v1, "system"

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "auto"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 360
    :cond_4
    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->findSystemBinary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    sget-object p1, Ldev/ukanth/ufirewall/Api;->bbPath:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 363
    invoke-static {p0, v3}, Ldev/ukanth/ufirewall/Api;->getBusyBoxPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ldev/ukanth/ufirewall/Api;->bbPath:Ljava/lang/String;

    :cond_5
    return-object v5

    .line 369
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found, falling back to built-in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bin"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object p1, Ldev/ukanth/ufirewall/Api;->bbPath:Ljava/lang/String;

    if-nez p1, :cond_8

    .line 382
    invoke-static {p0, v3}, Ldev/ukanth/ufirewall/Api;->getBusyBoxPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ldev/ukanth/ufirewall/Api;->bbPath:Ljava/lang/String;

    :cond_8
    return-object v0

    .line 388
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Built-in binary "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found, attempting to install binaries"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {p0, v2}, Ldev/ukanth/ufirewall/Api;->assertBinaries(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object p1, Ldev/ukanth/ufirewall/Api;->bbPath:Ljava/lang/String;

    if-nez p1, :cond_a

    .line 391
    invoke-static {p0, v3}, Ldev/ukanth/ufirewall/Api;->getBusyBoxPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ldev/ukanth/ufirewall/Api;->bbPath:Ljava/lang/String;

    :cond_a
    return-object v0

    .line 397
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No working "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " binary found, returning built-in path anyway"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Ldev/ukanth/ufirewall/Api;->bbPath:Ljava/lang/String;

    if-nez p1, :cond_c

    .line 399
    invoke-static {p0, v3}, Ldev/ukanth/ufirewall/Api;->getBusyBoxPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ldev/ukanth/ufirewall/Api;->bbPath:Ljava/lang/String;

    :cond_c
    return-object v0
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 4556
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4557
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4558
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4559
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getBusyBoxPath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5

    .line 456
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->bb_path()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "AFWall"

    if-eqz p1, :cond_2

    const-string p1, "system"

    .line 459
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "busybox"

    .line 460
    invoke-static {v3}, Ldev/ukanth/ufirewall/Api;->findSystemBinary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 462
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 466
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "System busybox not found, falling back to built-in"

    .line 467
    invoke-static {v2, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string p1, "bin"

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/busybox"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 475
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 481
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 482
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Built-in busybox not found at "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", returning path anyway"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 484
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Built-in busybox exists but not executable at "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", permissions: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v3

    const-string v4, "-"

    if-eqz v3, :cond_5

    const-string v3, "R"

    goto :goto_0

    :cond_5
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "W"

    goto :goto_1

    :cond_6
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string v4, "X"

    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 484
    invoke-static {v2, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChainStatus(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 6

    .line 2301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "-S INPUT"

    .line 2302
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "-S OUTPUT"

    .line 2303
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "-S FORWARD"

    .line 2304
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2305
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 2307
    invoke-static {v0, v4, v5}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    .line 2309
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2310
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2311
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2312
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 2313
    invoke-static {v5, v4, v0}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    .line 2315
    invoke-virtual {p1, p0, v4}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static getConnectivityStatus(Landroid/content/Context;)I
    .locals 2

    const-string v0, "connectivity"

    .line 3948
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 3951
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3955
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 3958
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 3961
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getCurrentPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 3938
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AFWall"

    const-string v1, "Package not found"

    .line 3940
    invoke-static {v0, v1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 p0, 0x0

    .line 3942
    :goto_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method private static getCurrentRulesAsMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3261
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->getApps(Landroid/content/Context;Ldev/ukanth/ufirewall/MainActivity$GetAppList;)Ljava/util/List;

    move-result-object p0

    .line 3262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3265
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 3266
    iget-object v2, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ldev/ukanth/ufirewall/Api;->updateExportPackage(Ljava/util/Map;Ljava/lang/String;ZI)V

    .line 3267
    iget-object v2, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Ldev/ukanth/ufirewall/Api;->updateExportPackage(Ljava/util/Map;Ljava/lang/String;ZI)V

    .line 3268
    iget-object v2, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4}, Ldev/ukanth/ufirewall/Api;->updateExportPackage(Ljava/util/Map;Ljava/lang/String;ZI)V

    .line 3269
    iget-object v2, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    const/4 v4, 0x3

    invoke-static {v0, v2, v3, v4}, Ldev/ukanth/ufirewall/Api;->updateExportPackage(Ljava/util/Map;Ljava/lang/String;ZI)V

    .line 3270
    iget-object v2, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    const/4 v4, 0x6

    invoke-static {v0, v2, v3, v4}, Ldev/ukanth/ufirewall/Api;->updateExportPackage(Ljava/util/Map;Ljava/lang/String;ZI)V

    .line 3271
    iget-object v2, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    const/4 v4, 0x4

    invoke-static {v0, v2, v3, v4}, Ldev/ukanth/ufirewall/Api;->updateExportPackage(Ljava/util/Map;Ljava/lang/String;ZI)V

    .line 3272
    iget-object v2, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    iget-boolean v1, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    const/4 v3, 0x5

    invoke-static {v0, v2, v1, v3}, Ldev/ukanth/ufirewall/Api;->updateExportPackage(Ljava/util/Map;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "AFWall"

    .line 3275
    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private static getDataSet()Ldev/ukanth/ufirewall/Api$RuleDataSet;
    .locals 15

    .line 1347
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->initSpecial()V

    .line 1349
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v1, "AllowedPKGWifi_UIDS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1350
    sget-object v1, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v3, "AllowedPKG3G_UIDS"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1351
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v4, "AllowedPKGRoaming_UIDS"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1352
    sget-object v4, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v5, "AllowedPKGVPN_UIDS"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1353
    sget-object v5, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v6, "AllowedPKGTether_UIDS"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1354
    sget-object v6, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v7, "AllowedPKGLAN_UIDS"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1355
    sget-object v7, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v8, "AllowedPKGTOR_UIDS"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1358
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1359
    invoke-static {v1}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 1363
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WARNING: No applications configured for firewall rules - firewall will not block any traffic!"

    const-string v1, "AFWall"

    .line 1364
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Please configure applications in AFWall+ main screen and apply rules."

    .line 1365
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_0
    new-instance v0, Ldev/ukanth/ufirewall/Api$RuleDataSet;

    .line 1370
    invoke-static {v3}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 1371
    invoke-static {v4}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 1372
    invoke-static {v5}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 1373
    invoke-static {v6}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 1374
    invoke-static {v2}, Ldev/ukanth/ufirewall/Api;->getListFromPref(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Ldev/ukanth/ufirewall/Api$RuleDataSet;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static getEnhancedNflogCommand(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 535
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->getNflogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFixLeakPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4019
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->initPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->initPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getListFromPref(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2244
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2246
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2247
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 2248
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2249
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2253
    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p0
.end method

.method public static getListOfUids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Ldev/ukanth/ufirewall/Api;->listOfUids:Ljava/util/List;

    return-object v0
.end method

.method public static getNflogPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "bin"

    const/4 v1, 0x0

    .line 499
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/nflog"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 501
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "AFWall"

    if-nez v1, :cond_0

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No NFLOG binary found at: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 508
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-nez v1, :cond_1

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "NFLOG binary not executable at: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 512
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/File;->setExecutable(Z)Z

    .line 513
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Failed to make nflog executable"

    .line 514
    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to make nflog executable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const-string v0, "Using original NFLOG binary"

    .line 523
    invoke-static {v3, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static getNotificationText(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 2834
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2835
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->storedProfile()Ljava/lang/String;

    move-result-object v0

    .line 2836
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AFWallPrefs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "AFWallProfile3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "AFWallProfile2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "AFWallProfile1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const-string v1, ")"

    const-string v3, " ("

    packed-switch v2, :pswitch_data_0

    .line 2846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Ldev/ukanth/ufirewall/R$string;->active:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2838
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Ldev/ukanth/ufirewall/R$string;->active:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v3, Ldev/ukanth/ufirewall/R$string;->defaultProfile:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "default"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2844
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Ldev/ukanth/ufirewall/R$string;->active:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v3, Ldev/ukanth/ufirewall/R$string;->profile3:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "profile3"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2842
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Ldev/ukanth/ufirewall/R$string;->active:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v3, Ldev/ukanth/ufirewall/R$string;->profile2:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "profile2"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2840
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Ldev/ukanth/ufirewall/R$string;->active:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v3, Ldev/ukanth/ufirewall/R$string;->profile1:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "profile1"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2849
    :cond_4
    sget v0, Ldev/ukanth/ufirewall/R$string;->active:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2dd7ba9 -> :sswitch_3
        -0x2dd7ba8 -> :sswitch_2
        -0x2dd7ba7 -> :sswitch_1
        0x67c32061 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPackageDetails(Landroid/content/Context;Ljava/util/HashMap;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2943
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 2944
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2945
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 p2, 0x80

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static getPackageVersion(Landroid/content/Context;)I
    .locals 2

    .line 2495
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "AFWall"

    const-string v0, "Can\'t determine the package version!"

    .line 2497
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getPackagesForUser(Ljava/util/List;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ": "

    const-string v1, "AFWall"

    .line 2208
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2209
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    :try_start_0
    new-array v5, v4, [Ljava/lang/String;

    .line 2211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pm list packages -U --user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v5

    invoke-virtual {v5}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v5

    .line 2212
    invoke-virtual {v5}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v5

    .line 2214
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Ldev/ukanth/ufirewall/Api;->dual_pattern:Ljava/util/regex/Pattern;

    .line 2215
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 2216
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 2217
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 2218
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 2219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 2227
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to list packages for user "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception p0

    .line 2224
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Package listing rejected for user "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return-object v2
.end method

.method private static getRulesForProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 3358
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "AllowedPKGWifi_UIDS"

    const-string v3, ""

    .line 3359
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v1}, Ldev/ukanth/ufirewall/Api;->updatePackage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v1, "AllowedPKG3G_UIDS"

    .line 3360
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Ldev/ukanth/ufirewall/Api;->updatePackage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v1, "AllowedPKGRoaming_UIDS"

    .line 3361
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Ldev/ukanth/ufirewall/Api;->updatePackage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v1, "AllowedPKGVPN_UIDS"

    .line 3362
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Ldev/ukanth/ufirewall/Api;->updatePackage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v1, "AllowedPKGTether_UIDS"

    .line 3363
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p0, v1, v0, v2}, Ldev/ukanth/ufirewall/Api;->updatePackage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v1, "AllowedPKGLAN_UIDS"

    .line 3364
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Ldev/ukanth/ufirewall/Api;->updatePackage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v1, "AllowedPKGTOR_UIDS"

    .line 3365
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    invoke-static {p0, p1, v0, v1}, Ldev/ukanth/ufirewall/Api;->updatePackage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    return-object v0
.end method

.method public static getRulesUpToDate()Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/Api;->RULES_LOCK:Ljava/lang/Object;

    .line 291
    monitor-enter v0

    :try_start_0
    sget-boolean v1, Ldev/ukanth/ufirewall/Api;->rulesUpToDate:Z

    .line 292
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSpecialAppName(I)Ljava/lang/String;
    .locals 3

    .line 946
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->getSpecialData()Ljava/util/List;

    move-result-object v0

    .line 947
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 948
    iget v2, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    if-ne v2, p0, :cond_0

    .line 949
    iget-object p0, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 954
    :cond_1
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/util/UidResolver;->resolveUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSpecialData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/Api$PackageInfoData;",
            ">;"
        }
    .end annotation

    .line 2142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2143
    new-instance v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v3, Ldev/ukanth/ufirewall/R$string;->all_item:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev.afwall.special.any"

    const/16 v4, -0xa

    invoke-direct {v1, v4, v2, v3}, Ldev/ukanth/ufirewall/Api$PackageInfoData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2144
    new-instance v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v3, Ldev/ukanth/ufirewall/R$string;->kernel_item:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev.afwall.special.kernel"

    const/16 v4, -0xb

    invoke-direct {v1, v4, v2, v3}, Ldev/ukanth/ufirewall/Api$PackageInfoData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2145
    new-instance v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v3, Ldev/ukanth/ufirewall/R$string;->tethering_item:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev.afwall.special.tether"

    const/16 v4, -0xc

    invoke-direct {v1, v4, v2, v3}, Ldev/ukanth/ufirewall/Api$PackageInfoData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2146
    new-instance v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v3, Ldev/ukanth/ufirewall/R$string;->ntp_item:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev.afwall.special.ntp"

    const/16 v4, -0xe

    invoke-direct {v1, v4, v2, v3}, Ldev/ukanth/ufirewall/Api$PackageInfoData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2149
    new-instance v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v3, Ldev/ukanth/ufirewall/R$string;->mdnslabel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev.afwall.special.mdnsr"

    const/16 v4, 0x3fc

    invoke-direct {v1, v4, v2, v3}, Ldev/ukanth/ufirewall/Api$PackageInfoData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 2152
    new-instance v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v3, Ldev/ukanth/ufirewall/R$string;->clat:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev.afwall.special.clat"

    const/16 v4, 0x405

    invoke-direct {v1, v4, v2, v3}, Ldev/ukanth/ufirewall/Api$PackageInfoData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Ldev/ukanth/ufirewall/Api;->specialAndroidAccounts:[Ljava/lang/String;

    .line 2158
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 2159
    sget-object v5, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    invoke-static {v5, v4}, Ldev/ukanth/ufirewall/Api;->getSpecialDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2161
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dev.afwall.special."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2162
    new-instance v7, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    invoke-direct {v7, v4, v5, v6}, Ldev/ukanth/ufirewall/Api$PackageInfoData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getSpecialDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 300
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_item"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 301
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSpecialDescriptionSystem(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ntp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "any"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "tether"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "kernel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 316
    :pswitch_0
    sget p1, Ldev/ukanth/ufirewall/R$string;->ntp_item:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 310
    :pswitch_1
    sget p1, Ldev/ukanth/ufirewall/R$string;->all_item:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 314
    :pswitch_2
    sget p1, Ldev/ukanth/ufirewall/R$string;->tethering_item:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 312
    :pswitch_3
    sget p1, Ldev/ukanth/ufirewall/R$string;->kernel_item:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x43a4b3c3 -> :sswitch_3
        -0x344843ee -> :sswitch_2
        0x179ec -> :sswitch_1
        0x1ab6a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getThreadSafeChainName()Ljava/lang/String;
    .locals 7

    const-string v0, "afwall"

    sget-object v1, Ldev/ukanth/ufirewall/Api;->CHAIN_NAME_LOCK:Ljava/lang/Object;

    .line 1274
    monitor-enter v1

    .line 1275
    :try_start_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isMultiUser()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getMultiUserId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 1276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getMultiUserId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "afwall"

    .line 1278
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 1279
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static hideCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DES"

    const-string v1, "UTF8"

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3876
    :cond_0
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v3, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 3877
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 3878
    invoke-virtual {p0, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 3879
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3880
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 3881
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3882
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AFWall"

    .line 3885
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v2
.end method

.method private static importAll(Landroid/content/Context;Ljava/io/File;Ljava/lang/StringBuilder;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "profilePrefs"

    const-string v3, "mode"

    const-string v4, "prefs"

    const-string v5, "AFWall"

    const/4 v6, 0x0

    .line 3595
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    move-object/from16 v9, p1

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6

    .line 3596
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3598
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3599
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3601
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3602
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v0, "Import file contains no data"

    .line 3603
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3698
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return v6

    :catch_0
    move-exception v0

    goto/16 :goto_e

    :catch_1
    move-exception v0

    goto/16 :goto_e

    .line 3607
    :cond_1
    :try_start_3
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3609
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v10, "default"

    const-string v11, "_profiles"

    const-string v12, "profiles"

    if-nez v8, :cond_2

    :try_start_4
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v0, "Import file does not contain valid AFWall+ data"

    .line 3610
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Invalid import file structure - missing expected keys"

    .line 3611
    invoke-static {v5, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3698
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    return v6

    .line 3616
    :cond_2
    :try_start_6
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3617
    sget-object v8, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v13, "BlockMode"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v13, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3620
    :cond_3
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 3621
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v13, "multiUserId"

    const-string v14, "false"

    const-string v15, "true"

    if-ge v4, v8, :cond_a

    .line 3622
    :try_start_7
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 3623
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 3625
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 3626
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Ljava/lang/String;

    move-object/from16 p1, v3

    .line 3627
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3628
    invoke-static {v6}, Ldev/ukanth/ufirewall/Api;->shouldIgnoreKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v3, p1

    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    .line 3631
    :cond_4
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v17, :cond_5

    goto :goto_4

    .line 3635
    :cond_5
    :try_start_8
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 3636
    sget-object v17, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v18, v8

    :try_start_9
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {v8, v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    :cond_6
    move-object/from16 v18, v8

    .line 3637
    invoke-static {v6}, Ldev/ukanth/ufirewall/Api;->isIntType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3638
    sget-object v1, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    .line 3640
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3641
    sget-object v2, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :catch_2
    move-object/from16 v18, v8

    .line 3644
    :catch_3
    :try_start_a
    sget-object v1, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    :cond_8
    :goto_4
    move-object/from16 v18, v8

    .line 3632
    sget-object v1, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v8, v18

    goto :goto_3

    :cond_9
    move-object/from16 p1, v3

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v6, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_b

    .line 3651
    :cond_a
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3652
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 3653
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 3654
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 3655
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 3657
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3658
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3659
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3660
    invoke-static {v4}, Ldev/ukanth/ufirewall/Api;->shouldIgnoreKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_7

    .line 3663
    :cond_b
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v8, :cond_c

    goto :goto_8

    .line 3667
    :cond_c
    :try_start_b
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 3668
    sget-object v8, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 p1, v2

    move-object/from16 v16, v3

    :try_start_c
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v8, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_9

    :cond_d
    move-object/from16 p1, v2

    move-object/from16 v16, v3

    .line 3669
    invoke-static {v4}, Ldev/ukanth/ufirewall/Api;->isIntType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3670
    sget-object v2, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_9

    .line 3672
    :cond_e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3673
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_9

    :catch_4
    move-object/from16 p1, v2

    move-object/from16 v16, v3

    .line 3676
    :catch_5
    :try_start_d
    sget-object v2, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_9

    :cond_f
    :goto_8
    move-object/from16 p1, v2

    move-object/from16 v16, v3

    .line 3664
    sget-object v2, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_9
    move-object/from16 v2, p1

    move-object/from16 v3, v16

    goto/16 :goto_7

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 3683
    :cond_11
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3684
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3685
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v1, p0

    .line 3686
    :try_start_e
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api;->importProfiles(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_a

    :cond_12
    move-object/from16 v1, p0

    .line 3688
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3689
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api;->importProfiles(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v0, "additional_profiles"

    .line 3690
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3691
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api;->importProfiles(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_a

    :cond_13
    move-object/from16 v1, p0

    .line 3694
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    .line 3695
    invoke-static {v1, v0, v2}, Ldev/ukanth/ufirewall/Api;->updateRulesFromJson(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_a
    const/4 v6, 0x1

    .line 3698
    :try_start_f
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_f

    :catchall_1
    move-exception v0

    :goto_b
    move-object v2, v0

    .line 3595
    :try_start_10
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_11
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v2
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_6

    :catch_6
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    :goto_d
    const/4 v6, 0x0

    .line 3701
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :catch_8
    const/4 v6, 0x0

    .line 3699
    :catch_9
    sget v0, Ldev/ukanth/ufirewall/R$string;->import_rules_missing:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    return v6
.end method

.method private static importProfiles(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3579
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 3580
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3581
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3583
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3584
    invoke-static {p0, v2, v1}, Ldev/ukanth/ufirewall/Api;->updateRulesFromJson(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3586
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static importRules(Landroid/content/Context;Ljava/io/File;Ljava/lang/StringBuilder;)Z
    .locals 6

    const-string v0, "mode"

    const/4 v1, 0x0

    .line 3475
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3476
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3478
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3479
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3481
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3482
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "Import file contains no data"

    .line 3483
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3499
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    .line 3487
    :cond_1
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3488
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3489
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "BlockMode"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    const-string v0, "rules"

    .line 3491
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3493
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    sget-object v3, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    invoke-static {p0, v0, v3}, Ldev/ukanth/ufirewall/Api;->updateRulesFromJson(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    .line 3495
    invoke-static {p0, v4, v0}, Ldev/ukanth/ufirewall/Api;->updateRulesFromJson(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    const/4 v1, 0x1

    .line 3499
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 3475
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_3
    const-string p1, "AFWall"

    .line 3506
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v0

    .line 3500
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EACCES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3501
    invoke-static {p0, p1, p2}, Ldev/ukanth/ufirewall/Api;->importRulesRoot(Landroid/content/Context;Ljava/io/File;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0

    .line 3503
    :cond_4
    sget p1, Ldev/ukanth/ufirewall/R$string;->import_rules_missing:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    return v1
.end method

.method private static importRulesRoot(Landroid/content/Context;Ljava/io/File;Ljava/lang/StringBuilder;)Z
    .locals 9

    const-string p2, "mode"

    const-string v0, "AFWall"

    const-string v1, "cat "

    const-string v2, "Failed to import rules from file: "

    const-string v3, "JSON parsing error during import: "

    const-string v4, "Import rules file read rejected: "

    const-string v5, "\'"

    const/4 v6, 0x0

    .line 3435
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v8, "\'\\\'\'"

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    .line 3436
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v6

    invoke-static {v7}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object p1

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object p1

    .line 3437
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object p1

    const-string v1, ""

    .line 3438
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3442
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3443
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    sget-object v7, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    invoke-static {p0, v1, v7}, Ldev/ukanth/ufirewall/Api;->updateRulesFromJson(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3446
    :catch_0
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3448
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3449
    sget-object p1, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v7, "BlockMode"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v7, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const-string p1, "rules"

    .line 3451
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    .line 3452
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    sget-object p2, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Ldev/ukanth/ufirewall/Api;->updateRulesFromJson(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 3469
    throw p0

    :catch_1
    move-exception p0

    .line 3460
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception p0

    .line 3458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception p0

    .line 3456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v6
.end method

.method private static initSpecial()V
    .locals 6

    sget-object v0, Ldev/ukanth/ufirewall/Api;->specialApps:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3771
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3772
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/Api;->specialApps:Ljava/util/Map;

    const/16 v1, -0xa

    .line 3773
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dev.afwall.special.any"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldev/ukanth/ufirewall/Api;->specialApps:Ljava/util/Map;

    const/16 v1, -0xb

    .line 3774
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dev.afwall.special.kernel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldev/ukanth/ufirewall/Api;->specialApps:Ljava/util/Map;

    const/16 v1, -0xc

    .line 3775
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dev.afwall.special.tether"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldev/ukanth/ufirewall/Api;->specialApps:Ljava/util/Map;

    const/16 v1, -0xe

    .line 3777
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dev.afwall.special.ntp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldev/ukanth/ufirewall/Api;->specialAndroidAccounts:[Ljava/lang/String;

    .line 3778
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3779
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dev.afwall.special."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3780
    invoke-static {v3}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v3

    sget-object v5, Ldev/ukanth/ufirewall/Api;->specialApps:Ljava/util/Map;

    .line 3781
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static installBinariesArm(Landroid/content/Context;)Z
    .locals 3

    .line 2474
    sget v0, Ldev/ukanth/ufirewall/R$raw;->busybox_arm:I

    const-string v1, "busybox"

    invoke-static {p0, v0, v1}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2475
    :cond_0
    sget v0, Ldev/ukanth/ufirewall/R$raw;->iptables_arm:I

    const-string v2, "iptables"

    invoke-static {p0, v0, v2}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 2476
    :cond_1
    sget v0, Ldev/ukanth/ufirewall/R$raw;->ip6tables_arm:I

    const-string v2, "ip6tables"

    invoke-static {p0, v0, v2}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 2477
    :cond_2
    sget v0, Ldev/ukanth/ufirewall/R$raw;->nflog_arm:I

    const-string v2, "nflog"

    invoke-static {p0, v0, v2}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static installBinariesArm64(Landroid/content/Context;)Z
    .locals 3

    .line 2464
    sget v0, Ldev/ukanth/ufirewall/R$raw;->busybox_arm64:I

    const-string v1, "busybox"

    invoke-static {p0, v0, v1}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2465
    :cond_0
    sget v0, Ldev/ukanth/ufirewall/R$raw;->iptables_arm64:I

    const-string v2, "iptables"

    invoke-static {p0, v0, v2}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 2466
    :cond_1
    sget v0, Ldev/ukanth/ufirewall/R$raw;->ip6tables_arm64:I

    const-string v2, "ip6tables"

    invoke-static {p0, v0, v2}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 2467
    :cond_2
    sget v0, Ldev/ukanth/ufirewall/R$raw;->nflog_arm64:I

    const-string v2, "nflog"

    invoke-static {p0, v0, v2}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static installBinariesForAbi(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "x86"

    .line 2484
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2485
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->installBinariesX86(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "arm64"

    .line 2486
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2487
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->installBinariesArm64(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 2489
    :cond_1
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->installBinariesArm(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static installBinariesX86(Landroid/content/Context;)Z
    .locals 3

    .line 2453
    sget v0, Ldev/ukanth/ufirewall/R$raw;->busybox_x86:I

    const-string v1, "busybox"

    invoke-static {p0, v0, v1}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2454
    :cond_0
    sget v0, Ldev/ukanth/ufirewall/R$raw;->iptables_x86:I

    const-string v2, "iptables"

    invoke-static {p0, v0, v2}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 2455
    :cond_1
    sget v0, Ldev/ukanth/ufirewall/R$raw;->ip6tables_x86:I

    const-string v2, "ip6tables"

    invoke-static {p0, v0, v2}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 2456
    :cond_2
    sget v0, Ldev/ukanth/ufirewall/R$raw;->nflog_x86:I

    const-string v2, "nflog"

    invoke-static {p0, v0, v2}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static installBinary(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 13

    const-string v0, " - "

    const-string v1, "AFWall"

    const-string v2, "Failed to fix permissions for: "

    const-string v3, "Fixed permissions for: "

    const-string v4, "Failed to delete existing binary: "

    const-string v5, "Binary installed but not executable: "

    const-string v6, "Successfully installed binary: "

    const-string v7, "Binary installation failed - file does not exist: "

    const-string v8, "Removing existing binary: "

    const-string v9, "Installing binary: "

    const/4 v10, 0x0

    :try_start_0
    const-string v11, "bin"

    .line 2384
    invoke-virtual {p0, v11, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v11

    .line 2385
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2387
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2390
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2392
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v4, "0755"

    .line 2396
    invoke-static {p0, p1, v12, v4}, Ldev/ukanth/ufirewall/Api;->copyRawFile(Landroid/content/Context;ILjava/io/File;Ljava/lang/String;)V

    .line 2399
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 2400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 2404
    :cond_1
    invoke-virtual {v12}, Ljava/io/File;->canExecute()Z

    move-result p0

    const/4 p1, 0x1

    if-nez p0, :cond_2

    .line 2405
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2408
    :try_start_1
    invoke-virtual {v12, p1, v10}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2409
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2411
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (size: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2416
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes, executable: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->canExecute()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2415
    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return p1

    :catch_1
    move-exception p0

    .line 2420
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "installBinary failed for "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2421
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2420
    invoke-static {v1, p1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    return v10
.end method

.method private static installBinaryIfExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "AFWall"

    const/4 v1, 0x0

    .line 2436
    :try_start_0
    const-class v2, Ldev/ukanth/ufirewall/R$raw;

    .line 2437
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 2438
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 2441
    invoke-static {p0, v2, p2}, Ldev/ukanth/ufirewall/Api;->installBinary(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2447
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Error checking/installing binary "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2444
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Resource "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found - this is expected if binary is not yet available"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1229
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    invoke-static {v0, p2}, Ldev/ukanth/ufirewall/Api;->getBinaryPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 1232
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ip_path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, " -w 5"

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1237
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#LITERAL# .*"

    .line 1239
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_2

    .line 1244
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "export IPTABLES=\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"; export BUSYBOX=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ldev/ukanth/ufirewall/Api;->bbPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"; export IPV6="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v5, "1"

    goto :goto_2

    :cond_1
    const-string v5, "0"

    .line 1246
    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; true"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1244
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :cond_2
    const-string v5, "^#LITERAL# "

    .line 1249
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v5, "#NOCHK# .*"

    .line 1250
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    const-string v6, " "

    if-eqz v5, :cond_4

    .line 1251
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "#NOCHK# "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "^#NOCHK# "

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1253
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "AFWallStatus"

    .line 2683
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "Enabled"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isFixPathFileExist(Ljava/lang/String;)Z
    .locals 1

    .line 4026
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->getFixLeakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4028
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4029
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isIntType(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "logPingTime"

    const-string v1, "customDelay"

    const-string v2, "patternMax"

    const-string v3, "widgetX"

    const-string v4, "widgetY"

    const-string v5, "notification_priority"

    .line 3574
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 3575
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMobileNetworkSupported(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "connectivity"

    .line 3923
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 3925
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "AFWall"

    .line 3930
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public static isNetfilterSupported()Z
    .locals 6

    const-string v0, "AFWall"

    .line 3757
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/net/netfilter"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "cat /proc/net/ip_tables_targets"

    aput-object v5, v4, v3

    .line 3759
    invoke-static {v4}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v4

    invoke-virtual {v4}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v4

    if-eqz v1, :cond_0

    .line 3760
    invoke-virtual {v4}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .line 3765
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to check netfilter support: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_1
    move-exception v1

    .line 3762
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Netfilter check rejected: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isPackageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x80

    .line 2934
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isRecentlyInstalled(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/Api;->recentlyInstalled:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 2236
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/Api;->recentlyInstalled:Ljava/util/Set;

    .line 2238
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRulesBeingApplied()Z
    .locals 1

    sget-boolean v0, Ldev/ukanth/ufirewall/Api;->globalStatus:Z

    return v0
.end method

.method static synthetic lambda$checkAndCopyFixLeak$4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 4052
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->initPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4054
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4055
    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->getFixLeakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "RW"

    invoke-static {p0, v0, v2}, Ldev/ukanth/ufirewall/Api;->mountDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4057
    new-instance v0, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    const/4 v2, 0x1

    .line 4058
    invoke-virtual {v0, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    .line 4059
    invoke-virtual {v0, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setLogging(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    sget-object v3, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "chmod 755 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4060
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/lang/String;)V

    .line 4061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v2, v1}, Lcom/stericson/roottools/RootTools;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 4063
    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->getFixLeakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RO"

    invoke-static {p0, p1, p2}, Ldev/ukanth/ufirewall/Api;->mountDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$fixFolderPermissionsAsync$2(Landroid/content/Context;)V
    .locals 3

    .line 1819
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1820
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1821
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/../shared_prefs"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {v0, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1824
    invoke-virtual {v0, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AFWall"

    .line 1826
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$showExportFileDialog$3(ZLandroid/content/Context;Ljava/io/File;)V
    .locals 3

    .line 3127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "afwall-backup"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v1, "-all"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 3128
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3129
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 3133
    invoke-static {p1, v1}, Ldev/ukanth/ufirewall/Api;->exportAllToFile(Landroid/content/Context;Ljava/io/File;)Z

    move-result p0

    goto :goto_1

    .line 3135
    :cond_1
    invoke-static {p1, v1}, Ldev/ukanth/ufirewall/Api;->exportRulesToFile(Landroid/content/Context;Ljava/io/File;)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_2

    .line 3139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Ldev/ukanth/ufirewall/R$string;->export_rules_success:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3141
    :cond_2
    sget p0, Ldev/ukanth/ufirewall/R$string;->export_rules_fail:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method static synthetic lambda$toast$0(Ljava/lang/CharSequence;)V
    .locals 2

    .line 330
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$toast$1(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 337
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static loadData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3841
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3842
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3844
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    .line 3843
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 3846
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3847
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 3848
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3851
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3852
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3853
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 3855
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 3856
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadSharedPreferencesFromFile(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z
    .locals 8

    .line 3709
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3710
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "AFWall"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 3712
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-string p0, "Import file is empty"

    .line 3713
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3714
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Import file is empty: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3717
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x3200000

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    const-string p0, "Import file is too large (>50MB)"

    .line 3718
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3719
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Import file is too large: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3723
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Importing from file: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (loadAll: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 3725
    invoke-static {p0, v0, p1}, Ldev/ukanth/ufirewall/Api;->importAll(Landroid/content/Context;Ljava/io/File;Ljava/lang/StringBuilder;)Z

    move-result v3

    goto :goto_0

    .line 3727
    :cond_2
    invoke-static {p0, v0, p1}, Ldev/ukanth/ufirewall/Api;->importRules(Landroid/content/Context;Ljava/io/File;Ljava/lang/StringBuilder;)Z

    move-result v3

    goto :goto_0

    .line 3730
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Import file does not exist: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3731
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3
.end method

.method public static mountDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 4036
    invoke-static {p0, v1}, Ldev/ukanth/ufirewall/Api;->getBusyBoxPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    .line 4037
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4038
    invoke-static {p1, p2, p0}, Lcom/stericson/roottools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static packagesExistForUserUid(Ljava/util/HashMap;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 2201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static probeLogTarget(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static purgeIptables(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V
    .locals 15

    .line 1575
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->getThreadSafeChainName()Ljava/lang/String;

    move-result-object v0

    .line 1577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Ldev/ukanth/ufirewall/Api;->staticChains:[Ljava/lang/String;

    .line 1581
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const-string v8, "-F "

    if-ge v7, v5, :cond_0

    aget-object v9, v4, v7

    .line 1582
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Ldev/ukanth/ufirewall/Api;->dynChains:[Ljava/lang/String;

    .line 1584
    array-length v5, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    aget-object v9, v4, v7

    .line 1585
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1587
    :cond_1
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v4

    const-string v5, "#NOCHK# -D OUTPUT -j "

    if-eqz v4, :cond_3

    sget-object v4, Ldev/ukanth/ufirewall/Api;->natChains:[Ljava/lang/String;

    .line 1588
    array-length v7, v4

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_2

    aget-object v10, v4, v9

    .line 1589
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "-t nat -F "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1591
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "#NOCHK# -t nat -D OUTPUT -j "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1593
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    const-string v4, "-P OUTPUT ACCEPT"

    .line 1597
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableInbound()Z

    move-result v7

    const-string v9, "-input"

    const-string v10, "-D INPUT -j "

    if-eqz v7, :cond_4

    .line 1603
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v7, "CustomScript2"

    .line 1606
    invoke-static {v7, v1}, Ldev/ukanth/ufirewall/Api;->addCustomRules(Ljava/lang/String;Ljava/util/List;)V

    const-string v7, "Executing purge commands for IPv4"

    const-string v11, "AFWall"

    .line 1609
    invoke-static {v11, v7}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1611
    invoke-static {v1, v3, v6}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    .line 1613
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableIPv6()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Executing purge commands for IPv6"

    .line 1614
    invoke-static {v11, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Ldev/ukanth/ufirewall/Api;->staticChains:[Ljava/lang/String;

    .line 1616
    array-length v7, v2

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v7, :cond_5

    aget-object v13, v2, v12

    .line 1617
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_5
    sget-object v2, Ldev/ukanth/ufirewall/Api;->dynChains:[Ljava/lang/String;

    .line 1619
    array-length v7, v2

    :goto_5
    if-ge v6, v7, :cond_6

    aget-object v12, v2, v6

    .line 1620
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1622
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1624
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableInbound()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v0, 0x1

    .line 1627
    invoke-static {v1, v3, v0}, Ldev/ukanth/ufirewall/Api;->iptablesCommands(Ljava/util/List;Ljava/util/List;Z)V

    :cond_8
    const-string v0, "Purge completed, calling callback"

    .line 1630
    invoke-static {v11, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    move-object/from16 v1, p2

    .line 1631
    invoke-virtual {v1, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->setRetryExitCode(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    move-object v1, p0

    invoke-virtual {v0, p0, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static purgeOldLog()V
    .locals 10

    .line 1742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x6ddd00

    sub-long/2addr v0, v2

    .line 1743
    new-instance v2, Lcom/raizlabs/android/dbflow/sql/language/Select;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const/4 v5, 0x0

    new-array v6, v5, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    invoke-static {v6}, Lcom/raizlabs/android/dbflow/sql/language/Method;->count([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v4}, Lcom/raizlabs/android/dbflow/sql/language/Select;-><init>([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    const-class v4, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v2, v4}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v2

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->count()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    cmp-long v2, v6, v8

    if-lez v2, :cond_0

    .line 1746
    new-instance v2, Lcom/raizlabs/android/dbflow/sql/language/Delete;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/sql/language/Delete;-><init>()V

    const-class v4, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v2, v4}, Lcom/raizlabs/android/dbflow/sql/language/Delete;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v2

    new-array v3, v3, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v4, Ldev/ukanth/ufirewall/log/LogData_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->lessThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->async()Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;->execute()V

    :cond_0
    return-void
.end method

.method public static removeAllUnusedCacheLabel(Landroid/content/Context;)V
    .locals 7

    const-string v0, ""

    const-string v1, "cache.label."

    :try_start_0
    const-string v2, "AFWallPrefs"

    const/4 v3, 0x0

    .line 2902
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2906
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2907
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 2909
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2910
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2911
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2913
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2914
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-static {p0, v5}, Ldev/ukanth/ufirewall/Api;->isPackageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2915
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static removeCacheLabel(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const-string v0, "cache.label."

    const-string v1, "AFWallPrefs"

    const/4 v2, 0x0

    .line 2887
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 2889
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AFWall"

    .line 2891
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static removePackageRef(Landroid/content/Context;Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;Ljava/lang/String;)Z
    .locals 3

    .line 2855
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2856
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2858
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 2860
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2861
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 2862
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2863
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x7c

    .line 2864
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2866
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 2873
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p4, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2874
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return p2
.end method

.method public static runIfconfig(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ifconfig -a || "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ldev/ukanth/ufirewall/Api;->getBusyBoxPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ifconfig -a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static runNetworkInterface(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 4

    const/4 v0, 0x1

    .line 1787
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1788
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 1789
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1790
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 1791
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1793
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1795
    new-instance v2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    .line 1796
    iput-object v1, v2, Ldev/ukanth/ufirewall/service/RootCommand;->res:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1797
    iput v1, v2, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    .line 1798
    iput-boolean v0, v2, Ldev/ukanth/ufirewall/service/RootCommand;->done:Z

    .line 1799
    iget-object v1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->cb:Ldev/ukanth/ufirewall/service/RootCommand$Callback;

    if-eqz v1, :cond_1

    .line 1800
    iget-object v1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->cb:Ldev/ukanth/ufirewall/service/RootCommand$Callback;

    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;->cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    .line 1805
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Android API network interface detection failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AFWall"

    invoke-static {v2, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ls /sys/class/net 2>/dev/null || "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1810
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->getBusyBoxPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ls /sys/class/net 2>/dev/null || ip link show 2>/dev/null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1812
    invoke-virtual {p1, p0, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static runScriptAsRoot(Landroid/content/Context;Ljava/util/List;Ljava/lang/StringBuilder;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2347
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AFWall"

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_0

    const-string v0, "runScriptAsRoot should not be called from the main thread\nCall Trace:\n"

    .line 2348
    invoke-static {v2, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 2350
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2355
    :try_start_0
    new-instance v3, Ldev/ukanth/ufirewall/Api$RunCommand;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ldev/ukanth/ufirewall/Api$RunCommand;-><init>(Ldev/ukanth/ufirewall/Api$RunCommand-IA;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const/4 p1, 0x2

    aput-object p0, v4, p1

    .line 2356
    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/Api$RunCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    .line 2375
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected error during shell execution: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception p0

    .line 2365
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 2366
    instance-of p2, p1, Ljava/io/InterruptedIOException;

    if-eqz p2, :cond_1

    .line 2367
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Shell execution interrupted (IO): "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2368
    :cond_1
    instance-of p2, p1, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz p2, :cond_2

    .line 2369
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Shell execution rejected in wrapped exception: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2371
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Shell execution failed with ExecutionException: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception p0

    .line 2361
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Shell execution was interrupted: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 2358
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Shell execution rejected, likely due to app shutdown: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method private static sanitizeRule(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 781
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&&"

    .line 784
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "AFWall"

    if-nez v1, :cond_7

    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "|"

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "rm "

    .line 791
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "dd "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "chmod "

    .line 792
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "chown "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "su "

    .line 793
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "sudo "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v1, "$"

    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "$IPTABLES"

    const-string v5, ""

    .line 802
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$IP6TABLES"

    .line 803
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$BUSYBOX"

    .line 804
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$IPV6"

    .line 805
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 807
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rejecting custom rule with non-whitelisted variables: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const-string v1, ". "

    .line 814
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "source "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "iptables "

    .line 820
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ip6tables "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "$IPTABLES "

    .line 821
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "$IP6TABLES "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-A "

    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-I "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-D "

    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-F "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-P "

    .line 824
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-N "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rejecting non-iptables rule: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    return-object v0

    .line 815
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rejecting file sourcing in custom rule (security risk): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 794
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rejecting potentially dangerous custom rule (system modification): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 786
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rejecting potentially dangerous custom rule (command chaining): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static sendToastBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 4012
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "TOAST"

    .line 4013
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MSG"

    .line 4014
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4015
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setDefaultPermission(Landroid/content/pm/ApplicationInfo;)V
    .locals 10

    .line 4105
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget-object v1, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4106
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4109
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v4, "BlockMode"

    const-string v5, "whitelist"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    new-array v5, v2, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 4112
    invoke-static {v5}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v5

    const-class v6, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    invoke-virtual {v5, v6}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v5

    new-array v6, v4, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v7, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->modeType:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 4113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v5, v6}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v3

    .line 4114
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/Where;->queryList()Ljava/util/List;

    move-result-object v3

    .line 4116
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    .line 4117
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->isState()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4118
    iget v7, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4119
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getUid()I

    move-result v6

    const-string v8, "|"

    const-string v9, ""

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 4145
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllowedPKGTether_UIDS"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 4141
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllowedPKGVPN_UIDS"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 4137
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllowedPKGTOR_UIDS"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 4133
    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllowedPKGRoaming_UIDS"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 4129
    :pswitch_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllowedPKG3G_UIDS"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 4125
    :pswitch_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllowedPKGWifi_UIDS"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 4121
    :pswitch_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllowedPKGLAN_UIDS"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 4152
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4154
    invoke-static {v2}, Ldev/ukanth/ufirewall/Api;->setRulesUpToDate(Z)V

    .line 4155
    sget-object p0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    new-instance v0, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->fastApply(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setEnabled(Landroid/content/Context;ZZ)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "AFWallStatus"

    const/4 v1, 0x0

    .line 2694
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "Enabled"

    .line 2695
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, p1, :cond_1

    return-void

    .line 2698
    :cond_1
    invoke-static {v1}, Ldev/ukanth/ufirewall/Api;->setRulesUpToDate(Z)V

    .line 2700
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2701
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2702
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 2703
    sget p1, Ldev/ukanth/ufirewall/R$string;->error_write_pref:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    .line 2707
    :cond_3
    new-instance p2, Landroid/content/Intent;

    const-class v0, Ldev/ukanth/ufirewall/service/FirewallService;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2708
    invoke-virtual {p0, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    .line 2710
    invoke-static {p0, p2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 2712
    :cond_4
    invoke-virtual {p0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2716
    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Ldev/ukanth/ufirewall/widget/StatusWidget;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "dev.ukanth.ufirewall.intent.action.STATUS_CHANGED"

    .line 2717
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "dev.ukanth.ufirewall.intent.extra.STATUS"

    .line 2718
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2719
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setRulesUpToDate(Z)V
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/Api;->RULES_LOCK:Ljava/lang/Object;

    .line 286
    monitor-enter v0

    :try_start_0
    sput-boolean p0, Ldev/ukanth/ufirewall/Api;->rulesUpToDate:Z

    .line 288
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setUserOwner(Landroid/content/Context;)V
    .locals 4

    .line 3816
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->supportsMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3818
    :try_start_0
    const-class v0, Landroid/os/UserManager;

    const-string v1, "getUserHandle"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "user"

    .line 3819
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 3820
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/G;->setMultiUserId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception on setUserOwner "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AFWall"

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static shouldIgnoreKey(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "appVersion"

    const-string v1, "fixLeak"

    const-string v2, "enableLogService"

    const-string v3, "sort"

    const-string v4, "storedProfile"

    const-string v5, "hasRoot"

    const-string v6, "logChains"

    const-string v7, "kingDetect"

    const-string v8, "fingerprintEnabled"

    .line 3569
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 3570
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static showExportFileDialog(Landroid/content/Context;Z)V
    .locals 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1e

    const-string v2, "/"

    if-lt v0, v1, :cond_0

    .line 3116
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 3118
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 3120
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/afwall/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3121
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3124
    :goto_0
    new-instance v1, Ldev/ukanth/ufirewall/util/FileDialog;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Ldev/ukanth/ufirewall/util/FileDialog;-><init>(Landroid/app/Activity;Ljava/io/File;Z)V

    .line 3125
    invoke-virtual {v1, v3}, Ldev/ukanth/ufirewall/util/FileDialog;->setSelectDirectoryOption(Z)V

    .line 3126
    new-instance v0, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda11;-><init>(ZLandroid/content/Context;)V

    invoke-virtual {v1, v0}, Ldev/ukanth/ufirewall/util/FileDialog;->addDirectoryListener(Ldev/ukanth/ufirewall/util/FileDialog$DirectorySelectedListener;)V

    .line 3144
    invoke-virtual {v1}, Ldev/ukanth/ufirewall/util/FileDialog;->showDialog()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    if-eqz p1, :cond_2

    .line 3148
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->exportAllPreferencesToFileConfirm(Landroid/content/Context;)V

    goto :goto_1

    .line 3150
    :cond_2
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->exportRulesToFileConfirm(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public static showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 3747
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 3749
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 3750
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "package"

    const/4 v2, 0x0

    .line 3751
    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3752
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3753
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static supportsMultipleUsers(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "user"

    .line 3829
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 v0, 0x0

    .line 3831
    :try_start_0
    const-class v1, Landroid/os/UserManager;

    const-string v2, "supportsMultipleUsers"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 3832
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 329
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 330
    new-instance v0, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda13;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 336
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 337
    new-instance v0, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda15;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static unhideCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DES"

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3906
    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 3907
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    const-string v3, "UTF8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 3908
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 3909
    invoke-virtual {p0, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 3910
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x2

    .line 3911
    invoke-virtual {v0, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3912
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 3913
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AFWall"

    .line 3915
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static updateBaseContextLocale(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    .line 4071
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->locale()Ljava/lang/String;

    move-result-object v0

    .line 4072
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v2, "zh"

    .line 4074
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "zh_CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "zh_TW"

    .line 4076
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4077
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    goto :goto_1

    .line 4075
    :cond_1
    :goto_0
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 4080
    :cond_2
    :goto_1
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_3

    .line 4082
    invoke-static {p0, v1}, Ldev/ukanth/ufirewall/Api;->updateResourcesLocale(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 4084
    :cond_3
    invoke-static {p0, v1}, Ldev/ukanth/ufirewall/Api;->updateResourcesLocaleLegacy(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private static updateExportPackage(Ljava/util/Map;Ljava/lang/String;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 3238
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const-string v1, ""

    if-eqz p2, :cond_1

    .line 3239
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    .line 3240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 3242
    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 3243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3244
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static updateLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "sys"

    .line 3787
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x18

    if-eqz v0, :cond_1

    .line 3788
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3789
    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 3790
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3791
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3792
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_0

    .line 3794
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    goto :goto_0

    .line 3796
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 3798
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3799
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    .line 3800
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3801
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-direct {v0, v3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3803
    :cond_2
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 3804
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3805
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3806
    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    .line 3808
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    goto :goto_0

    .line 3810
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static updateLogRules(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 5

    .line 1728
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1731
    :cond_0
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->getThreadSafeChainName()Ljava/lang/String;

    move-result-object v0

    .line 1732
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1733
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#NOCHK# -N "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-reject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1734
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-F "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1735
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api;->addRejectRules(Ljava/util/List;Ljava/lang/String;)V

    .line 1736
    invoke-static {p0, v1, p1}, Ldev/ukanth/ufirewall/Api;->apply46(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method public static updateNotification(ZLandroid/content/Context;)V
    .locals 8

    .line 2782
    sget v0, Ldev/ukanth/ufirewall/R$string;->firewall_service:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    .line 2784
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x1

    .line 2785
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "firewall.service"

    if-lt v3, v4, :cond_2

    const/4 v3, 0x2

    .line 2788
    invoke-static {v7, v0, v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 2789
    invoke-static {v0, v6}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    .line 2790
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getNotificationPriority()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    .line 2791
    invoke-static {v0, v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;I)V

    .line 2793
    :cond_0
    invoke-static {v0, v5, v5}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 2794
    invoke-static {v0, v6}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 2795
    invoke-static {v0, v6}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 2796
    invoke-static {v0, v6}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/NotificationChannel;Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x24

    if-lt v3, v4, :cond_1

    .line 2800
    invoke-static {v0, v6}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/app/NotificationChannel;Z)V

    .line 2803
    :cond_1
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 2806
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Ldev/ukanth/ufirewall/MainActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.MAIN"

    .line 2807
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    .line 2808
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x24000000

    .line 2809
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p0, :cond_3

    .line 2811
    sget v3, Ldev/ukanth/ufirewall/R$drawable;->notification:I

    goto :goto_0

    :cond_3
    sget v3, Ldev/ukanth/ufirewall/R$drawable;->notification_error:I

    :goto_0
    if-eqz p0, :cond_4

    .line 2812
    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->getNotificationText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    sget p0, Ldev/ukanth/ufirewall/R$string;->inactive:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const/high16 v4, 0x4000000

    .line 2814
    invoke-static {p1, v6, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2815
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v4, p1, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2816
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 2818
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v4, Ldev/ukanth/ufirewall/R$string;->app_name:I

    .line 2819
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v4, Ldev/ukanth/ufirewall/R$string;->app_name:I

    .line 2820
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 2821
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 2822
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v4, "service"

    .line 2823
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 2824
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 2825
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 2826
    invoke-virtual {p0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 2827
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 2829
    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x62

    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 2830
    invoke-virtual {v1, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private static updatePackage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3250
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3252
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 3253
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3254
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 3255
    invoke-static {p2, p1, v1, p3}, Ldev/ukanth/ufirewall/Api;->updateExportPackage(Ljava/util/Map;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static updateResourcesLocale(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;
    .locals 1

    .line 4089
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4090
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 4091
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private static updateResourcesLocaleLegacy(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;
    .locals 2

    .line 4095
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4096
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4097
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 4098
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object p0
.end method

.method private static updateRulesFromJson(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/StringBuilder;

    .line 3515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 3517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 3518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 3519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x6

    aput-object v1, v0, v6

    .line 3520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x4

    aput-object v1, v0, v7

    .line 3521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x5

    aput-object v1, v0, v8

    .line 3523
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/JsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 3524
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3526
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 3527
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ":"

    .line 3528
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3529
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v2

    .line 3532
    :cond_1
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ldev/ukanth/ufirewall/util/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 3533
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 3534
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3535
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3536
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 3537
    aget-object v11, v0, v11

    .line 3539
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_2

    const/16 v12, 0x7c

    .line 3540
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const-string v12, "dev.afwall.special"

    .line 3543
    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v12, Ldev/ukanth/ufirewall/Api;->specialApps:Ljava/util/Map;

    .line 3544
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3547
    :cond_3
    :try_start_0
    invoke-virtual {v1, v10, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 3555
    :cond_4
    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 3556
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    aget-object p1, v0, v2

    .line 3557
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AllowedPKGWifi_UIDS"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aget-object p1, v0, v3

    .line 3558
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AllowedPKG3G_UIDS"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aget-object p1, v0, v4

    .line 3559
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AllowedPKGRoaming_UIDS"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aget-object p1, v0, v5

    .line 3560
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AllowedPKGVPN_UIDS"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aget-object p1, v0, v6

    .line 3561
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AllowedPKGTether_UIDS"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aget-object p1, v0, v7

    .line 3562
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AllowedPKGLAN_UIDS"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aget-object p1, v0, v8

    .line 3563
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AllowedPKGTOR_UIDS"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3565
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static verifyBinaries(Landroid/content/Context;)Z
    .locals 16

    const-string v0, "test"

    const-string v1, "Busybox test output unexpected: "

    const-string v2, "verifyBinaries() - Busybox test output: \'"

    const-string v3, "Busybox test command failed with exit code: "

    const-string v4, "verifyBinaries() - Busybox test exitCode: "

    const-string v5, "verifyBinaries() called - Starting verification"

    const-string v6, "AFWall"

    .line 2598
    invoke-static {v6, v5}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "bin"

    const/4 v7, 0x0

    move-object/from16 v8, p0

    .line 2599
    invoke-virtual {v8, v5, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 2600
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "verifyBinaries() - Binary directory: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    new-instance v8, Ljava/io/File;

    const-string v9, "busybox"

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    .line 2605
    invoke-virtual {v8}, Ljava/io/File;->canExecute()Z

    move-result v10

    .line 2606
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v11

    .line 2607
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 2608
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "verifyBinaries() - Checking busybox: exists="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", canExecute="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", canRead="

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", size="

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_9

    if-nez v10, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v7, 0x2

    const/4 v9, 0x1

    :try_start_0
    const-string v10, "verifyBinaries() - Testing busybox functionality with \'echo test\'"

    .line 2618
    invoke-static {v6, v10}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    new-instance v10, Ljava/lang/ProcessBuilder;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const-string v8, "echo"

    aput-object v8, v11, v9

    aput-object v0, v11, v7

    invoke-direct {v10, v11}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 2620
    invoke-virtual {v10}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 2621
    invoke-virtual {v10}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v8

    .line 2622
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    move-result v10

    .line 2623
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_1

    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    .line 2631
    :cond_1
    new-instance v3, Ljava/util/Scanner;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 2632
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2633
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2634
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 2636
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    .line 2641
    :cond_2
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    const-string v0, "Busybox test produced no output"

    .line 2642
    invoke-static {v6, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    .line 2647
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "Permission denied"

    .line 2648
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "error=13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    const-string v0, "Busybox execution test failed due to Android security restrictions (expected behavior)"

    .line 2649
    invoke-static {v6, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Binary will be available for root execution. Skipping direct execution test."

    .line 2650
    invoke-static {v6, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, "verifyBinaries() - Checking other required binaries"

    .line 2660
    invoke-static {v6, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "iptables"

    const-string v1, "ip6tables"

    .line 2661
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v7, :cond_7

    .line 2662
    aget-object v1, v0, v12

    .line 2663
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "verifyBinaries() - Checking "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": exists="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2666
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Required binary missing or not executable: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_7
    const-string v0, "Binary verification successful - All checks passed"

    .line 2671
    invoke-static {v6, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_8
    const/4 v1, 0x0

    .line 2654
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Busybox verification failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    :goto_2
    const/4 v1, 0x0

    const-string v0, "Busybox binary missing or not executable"

    .line 2610
    invoke-static {v6, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static waitAndTerminate(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1283
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1285
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1289
    :catch_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1290
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method
