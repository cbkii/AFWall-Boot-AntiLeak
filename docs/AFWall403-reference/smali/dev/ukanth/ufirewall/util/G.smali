.class public Ldev/ukanth/ufirewall/util/G;
.super Landroid/app/Application;
.source "G.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final ACTIVE_NOTIFICATION:Ljava/lang/String; = "activeNotification"

.field private static final ACTIVE_RULES:Ljava/lang/String; = "activeRules"

.field private static final ADDITIONAL_PROFILES:Ljava/lang/String; = "plusprofiles"

.field private static final ADD_DELAY:Ljava/lang/String; = "addDelay"

.field private static final AFWALL_PROFILE:Ljava/lang/String; = "AFWallProfile"

.field private static final AFWALL_STATUS:Ljava/lang/String; = "AFWallStatus"

.field private static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final BUSYBOX_PATH:Ljava/lang/String; = "bb_path"

.field private static final CONTROL_IPV6:Ljava/lang/String; = "controlIPv6"

.field private static final COPIED_OLD_EXPORTS:Ljava/lang/String; = "copyOldExports"

.field private static final CUSTOM_DELAY_SECONDS:Ljava/lang/String; = "customDelay"

.field private static final DISABLE_ICONS:Ljava/lang/String; = "disableIcons"

.field private static final DISABLE_TASKER_TOAST:Ljava/lang/String; = "disableTaskerToast"

.field private static final DUAL_APPS:Ljava/lang/String; = "supportDualApps"

.field private static final ENABLE_ADMIN:Ljava/lang/String; = "enableAdmin"

.field private static final ENABLE_CONFIRM:Ljava/lang/String; = "enableConfirm"

.field private static final ENABLE_DEVICE_CHECK:Ljava/lang/String; = "enableDeviceCheck"

.field private static final ENABLE_INBOUND:Ljava/lang/String; = "enableInbound"

.field private static final ENABLE_IPV6:Ljava/lang/String; = "enableIPv6"

.field private static final ENABLE_LAN:Ljava/lang/String; = "enableLAN"

.field private static final ENABLE_LOG_SERVICE:Ljava/lang/String; = "enableLogService"

.field private static final ENABLE_MULTI_PROFILE:Ljava/lang/String; = "enableMultiProfile"

.field private static final ENABLE_ROAM:Ljava/lang/String; = "enableRoam"

.field private static final ENABLE_TETHER:Ljava/lang/String; = "enableTether"

.field private static final ENABLE_TOR:Ljava/lang/String; = "enableTor"

.field private static final ENABLE_VPN:Ljava/lang/String; = "enableVPN"

.field private static final FASTER_RULES:Ljava/lang/String; = "fasterApplyRules"

.field private static final FINGERPRINT_ENABLED:Ljava/lang/String; = "fingerprintEnabled"

.field private static final FIX_START_LEAK:Ljava/lang/String; = "fixLeak"

.field private static final HAS_ROOT:Ljava/lang/String; = "hasRoot"

.field private static final INITPATH:Ljava/lang/String; = "initPath"

.field private static final IP4_FWD:Ljava/lang/String; = "forward_chain"

.field private static final IP4_INPUT:Ljava/lang/String; = "input_chain"

.field private static final IP4_OUTPUT:Ljava/lang/String; = "output_chain"

.field private static final IP6_FWD:Ljava/lang/String; = "forward_chain_v6"

.field private static final IP6_INPUT:Ljava/lang/String; = "input_chain_v6"

.field private static final IP6_OUTPUT:Ljava/lang/String; = "output_chain_v6"

.field private static final IPTABLES_BUILTIN_FAILED:Ljava/lang/String; = "ipt_builtin_failed"

.field private static final IPTABLES_PATH:Ljava/lang/String; = "ipt_path"

.field private static final ISKINGDETECT:Ljava/lang/String; = "kingDetect"

.field private static final IS_MIGRATED:Ljava/lang/String; = "isMigrated"

.field private static final LANGUAGE:Ljava/lang/String; = "locale"

.field private static final LAST_STORED_PROFILE:Ljava/lang/String; = "storedProfile"

.field private static final LOG_PING_TIMEOUT:Ljava/lang/String; = "logPingTime"

.field private static final LOG_TARGET:Ljava/lang/String; = "logTarget"

.field private static final LOG_TARGETS:Ljava/lang/String; = "logTargets"

.field private static final MULTI_USER:Ljava/lang/String; = "multiUser"

.field private static final MULTI_USER_ID:Ljava/lang/String; = "multiUserId"

.field private static final NOTIFICATION_PRIORITY:Ljava/lang/String; = "notification_priority"

.field private static final NOTIFY_INSTALL:Ljava/lang/String; = "notifyAppInstall"

.field private static final PATTERN_MAX_TRY:Ljava/lang/String; = "patternMax"

.field private static final PATTERN_STEALTH:Ljava/lang/String; = "stealthMode"

.field private static final PRIMARY_COLOR:Ljava/lang/String; = "primaryColor"

.field private static final PRIMARY_DARK_COLOR:Ljava/lang/String; = "primaryColor"

.field private static final PROFILES_MIGRATED:Ljava/lang/String; = "profilesmigrated"

.field private static final PROFILE_PWD:Ljava/lang/String; = "profilePwd"

.field private static final PROFILE_SWITCH:Ljava/lang/String; = "applyOnSwitchProfiles"

.field private static final PROTECTION_OPTION:Ljava/lang/String; = "passSetting"

.field private static final PWD_ENCRYPT:Ljava/lang/String; = "pwdEncrypt"

.field private static final REG_DO:Ljava/lang/String; = "ipurchaseddonatekey"

.field private static final RUN_NOTIFICATION:Ljava/lang/String; = "runNotification"

.field private static final SELECTED_FILTER:Ljava/lang/String; = "selectedFilter"

.field private static final SHOW_ALL_APPS:Ljava/lang/String; = "showAllApps"

.field private static final SHOW_FILTER:Ljava/lang/String; = "showFilter"

.field private static final SHOW_HOST:Ljava/lang/String; = "showHostName"

.field private static final SHOW_UID:Ljava/lang/String; = "showUid"

.field private static final SORT_BY:Ljava/lang/String; = "sort"

.field private static final STARTUP_DELAY:Ljava/lang/String; = "addDelayStart"

.field private static final SYSTEM_APP_COLOR:Ljava/lang/String; = "sysColor"

.field public static final TAG:Ljava/lang/String; = "AFWall"

.field private static final THEME:Ljava/lang/String; = "theme"

.field private static final TOAST_POS:Ljava/lang/String; = "toast_pos"

.field private static VALID_IPV4_PATTERN:Ljava/util/regex/Pattern; = null

.field private static VALID_IPV6_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final WIDGET_X:Ljava/lang/String; = "widgetX"

.field private static final WIDGET_Y:Ljava/lang/String; = "widgetY"

.field private static activityVisible:Z = false

.field private static callback:Landroid/net/ConnectivityManager$NetworkCallback; = null

.field public static ctx:Landroid/content/Context; = null

.field private static defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler; = null

.field public static default_profiles:[Ljava/lang/String; = null

.field private static enabledPrivateLink:Z = false

.field public static gPrefs:Landroid/content/SharedPreferences; = null

.field private static instance:Ldev/ukanth/ufirewall/util/G; = null

.field private static final ipv4Pattern:Ljava/lang/String; = "(([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.){3}([01]?\\d\\d?|2[0-4]\\d|25[0-5])"

.field private static final ipv6Pattern:Ljava/lang/String; = "^(((?=(?>.*?::)(?!.*::)))(::)?([0-9A-F]{1,4}::?){0,5}|([0-9A-F]{1,4}:){6})(\\2([0-9A-F]{1,4}(::?|$)){0,2}|((25[0-5]|(2[0-4]|1\\d|[1-9])?\\d)(\\.|$)){4}|[0-9A-F]{1,4}:[0-9A-F]{1,4})(?<![^:]:|\\.)\\z"

.field private static isActivityVisible:Z

.field private static ownerModuleAvailable:Ljava/lang/Boolean;

.field public static pPrefs:Landroid/content/SharedPreferences;

.field private static privateDns:Z

.field public static profiles:[Ljava/lang/String;

.field public static sPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static bridge synthetic -$$Nest$sfgetdefaultExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetprivateDns()Z
    .locals 1

    sget-boolean v0, Ldev/ukanth/ufirewall/util/G;->privateDns:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputprivateDns(Z)V
    .locals 0

    sput-boolean p0, Ldev/ukanth/ufirewall/util/G;->privateDns:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 82
    invoke-static {}, Lcom/topjohnwu/superuser/Shell$Builder;->create()Lcom/topjohnwu/superuser/Shell$Builder;

    move-result-object v0

    const/16 v1, 0x8

    .line 83
    invoke-virtual {v0, v1}, Lcom/topjohnwu/superuser/Shell$Builder;->setFlags(I)Lcom/topjohnwu/superuser/Shell$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1e

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/topjohnwu/superuser/Shell$Builder;->setTimeout(J)Lcom/topjohnwu/superuser/Shell$Builder;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/topjohnwu/superuser/Shell;->setDefaultBuilder(Lcom/topjohnwu/superuser/Shell$Builder;)V

    const/4 v0, 0x0

    sput-boolean v0, Ldev/ukanth/ufirewall/util/G;->privateDns:Z

    const-string v0, "AFWallPrefs"

    const-string v1, "AFWallProfile1"

    const-string v2, "AFWallProfile2"

    const-string v3, "AFWallProfile3"

    .line 193
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->profiles:[Ljava/lang/String;

    .line 194
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->default_profiles:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->ownerModuleAvailable:Ljava/lang/Boolean;

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->VALID_IPV4_PATTERN:Ljava/util/regex/Pattern;

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->VALID_IPV6_PATTERN:Ljava/util/regex/Pattern;

    :try_start_0
    const-string v1, "(([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.){3}([01]?\\d\\d?|2[0-4]\\d|25[0-5])"

    const/4 v2, 0x2

    .line 1224
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ldev/ukanth/ufirewall/util/G;->VALID_IPV4_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "^(((?=(?>.*?::)(?!.*::)))(::)?([0-9A-F]{1,4}::?){0,5}|([0-9A-F]{1,4}:){6})(\\2([0-9A-F]{1,4}(::?|$)){0,2}|((25[0-5]|(2[0-4]|1\\d|[1-9])?\\d)(\\.|$)){4}|[0-9A-F]{1,4}:[0-9A-F]{1,4})(?<![^:]:|\\.)\\z"

    .line 1225
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ldev/ukanth/ufirewall/util/G;->VALID_IPV6_PATTERN:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Ldev/ukanth/ufirewall/util/G;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static activeNotification()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "activeNotification"

    const/4 v2, 0x1

    .line 400
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static activeNotification(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 404
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "activeNotification"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static activeRules()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "activeRules"

    const/4 v2, 0x1

    .line 634
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static activityPaused()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Ldev/ukanth/ufirewall/util/G;->activityVisible:Z

    return-void
.end method

.method public static activityResumed()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Ldev/ukanth/ufirewall/util/G;->activityVisible:Z

    return-void
.end method

.method public static addAdditionalProfile(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "plusprofiles"

    .line 1070
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    .line 1072
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1073
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1074
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 1075
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1077
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    .line 1078
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object p0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 1081
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public static addDelay()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v2, "addDelay"

    if-lt v0, v1, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    .line 640
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    .line 642
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static appVersion()I
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "appVersion"

    const/4 v2, 0x0

    .line 711
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static appVersion(I)I
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 715
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appVersion"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static applyOnSwitchProfiles()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "applyOnSwitchProfiles"

    const/4 v2, 0x0

    .line 678
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bb_path()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "bb_path"

    const-string v2, "builtin"

    .line 559
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bb_path(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 563
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bb_path"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method

.method public static canShow(I)Z
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 1152
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/log/LogPreference;

    .line 1153
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v4, Ldev/ukanth/ufirewall/log/LogPreference_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 1154
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-virtual {v1, v3}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->querySingle()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldev/ukanth/ufirewall/log/LogPreference;

    if-eqz p0, :cond_0

    .line 1155
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogPreference;->isDisable()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static cleanupShellInstances()V
    .locals 2

    .line 1291
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1300
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static clearSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 1087
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/shared_prefs/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 1089
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1091
    aget-object v2, p0, v1

    const-string v3, ".xml"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1092
    new-instance p1, Ljava/io/File;

    aget-object p0, p0, v1

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static controlIPv6()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "controlIPv6"

    const/4 v2, 0x0

    .line 427
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static disableIcons()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "disableIcons"

    const/4 v2, 0x0

    .line 537
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static disableTaskerToast()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "disableTaskerToast"

    const/4 v2, 0x0

    .line 414
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableAdmin()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableAdmin"

    const/4 v2, 0x0

    .line 468
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableAdmin(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 472
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableAdmin"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static enableConfirm()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableConfirm"

    const/4 v2, 0x0

    .line 496
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableDeviceCheck()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableDeviceCheck"

    const/4 v2, 0x0

    .line 487
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableDeviceCheck(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 491
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableDeviceCheck"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static enableIPv6()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableIPv6"

    const/4 v2, 0x1

    .line 418
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableIPv6(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 422
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableIPv6"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static enableInbound()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableInbound"

    const/4 v2, 0x0

    .line 442
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableLAN()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableLAN"

    const/4 v2, 0x1

    .line 780
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableLAN(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 784
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableLAN"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static enableLogService()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableLogService"

    const/4 v2, 0x0

    .line 446
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableLogService(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 450
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableLogService"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static enableMultiProfile()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableMultiProfile"

    const/4 v2, 0x0

    .line 500
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableMultiProfile(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 504
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableMultiProfile"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static enableRoam()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableRoam"

    const/4 v2, 0x0

    .line 753
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableRoam(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 757
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableRoam"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static enableStealthPattern()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "stealthMode"

    const/4 v2, 0x0

    .line 654
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableTether()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableTether"

    const/4 v2, 0x0

    .line 771
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableTether(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 775
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableTether"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static enableTor()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableTor"

    const/4 v2, 0x0

    .line 789
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableTor(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 793
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableTor"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static enableVPN()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableVPN"

    const/4 v2, 0x0

    .line 762
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableVPN(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 766
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableVPN"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static fixLeak()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fixLeak"

    const/4 v2, 0x0

    .line 410
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAdditionalProfiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "plusprofiles"

    const-string v2, ""

    .line 1121
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1124
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "\\s*,\\s*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    return-object v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->instance:Ldev/ukanth/ufirewall/util/G;

    return-object v0
.end method

.method public static getCustomDelay()I
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "customDelay"

    const/4 v2, 0x5

    .line 854
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static getDefaultProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Ldev/ukanth/ufirewall/util/G;->default_profiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getInstance()Ldev/ukanth/ufirewall/util/G;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->instance:Ldev/ukanth/ufirewall/util/G;

    return-object v0
.end method

.method public static getMaxPatternTry()I
    .locals 3

    :try_start_0
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "patternMax"

    const-string v2, "3"

    .line 659
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x3

    return v0
.end method

.method public static getMultiUserId()Ljava/lang/Long;
    .locals 4

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "multiUserId"

    const-wide/16 v2, 0x0

    .line 674
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkDebounceDelay()I
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "networkDebounceDelay"

    const/4 v2, 0x2

    .line 858
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNotificationPriority()I
    .locals 3

    :try_start_0
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "notification_priority"

    const-string v2, "0"

    .line 356
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getPrivateDnsStatus()Z
    .locals 1

    sget-boolean v0, Ldev/ukanth/ufirewall/util/G;->privateDns:Z

    return v0
.end method

.method public static getSelectedTheme()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "D"

    .line 337
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedTheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method

.method public static getWidgetX(Landroid/content/Context;)I
    .locals 3

    .line 841
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 842
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 843
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 844
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "widgetX"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0
.end method

.method public static getWidgetY(Landroid/content/Context;)I
    .locals 3

    .line 862
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 863
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 864
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 865
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "widgetY"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0
.end method

.method public static hasCopyOld()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "copyOldExports"

    const/4 v2, 0x0

    .line 239
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hasCopyOldExports(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "copyOldExports"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static hasOwnerModule()Z
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ownerModuleAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 806
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->ownerModuleAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 808
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->ownerModuleAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ownerModuleAvailable:Ljava/lang/Boolean;

    .line 811
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static hasRoot()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "hasRoot"

    const/4 v2, 0x0

    .line 391
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hasRoot(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 395
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasRoot"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static initPath()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "initPath"

    const/4 v2, 0x0

    .line 327
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "initPath"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method

.method public static ip_path()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ipt_path"

    const-string v2, "system"

    .line 541
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ip_path(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 545
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ipt_path"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method

.method public static ipv4Fwd()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "forward_chain"

    const/4 v2, 0x1

    .line 272
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ipv4Fwd(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "forward_chain"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static ipv4Input()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "input_chain"

    const/4 v2, 0x1

    .line 263
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ipv4Input(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 267
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "input_chain"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static ipv4Output()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "output_chain"

    const/4 v2, 0x1

    .line 281
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ipv4Output(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "output_chain"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static ipv6Fwd()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "forward_chain_v6"

    const/4 v2, 0x1

    .line 290
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ipv6Fwd(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "forward_chain_v6"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static ipv6Input()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "input_chain_v6"

    const/4 v2, 0x1

    .line 299
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ipv6Input(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "input_chain_v6"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static ipv6Output()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "output_chain_v6"

    const/4 v2, 0x1

    .line 308
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ipv6Output(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "output_chain_v6"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static isActivityVisible()Z
    .locals 1

    sget-boolean v0, Ldev/ukanth/ufirewall/util/G;->activityVisible:Z

    return v0
.end method

.method public static isBootProcessActive()Z
    .locals 1

    .line 650
    invoke-static {}, Ldev/ukanth/ufirewall/util/BootRuleManager;->isBootInProgress()Z

    move-result v0

    return v0
.end method

.method public static isBuiltinIptablesFailed()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ipt_builtin_failed"

    const/4 v2, 0x0

    .line 550
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDo(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 748
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ipurchaseddonatekey"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static isDoKey(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ipurchaseddonatekey"

    const/4 v2, 0x0

    .line 823
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "dev.ukanth.ufirewall.donatekey"

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 827
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 830
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    sget-object p0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 836
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isDonate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isEnc()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pwdEncrypt"

    const/4 v2, 0x0

    .line 318
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEnc(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 322
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pwdEncrypt"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static isFaster()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fasterApplyRules"

    const/4 v2, 0x0

    .line 219
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFaster(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fasterApplyRules"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static isFingerprintEnabled()Ljava/lang/Boolean;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fingerprintEnabled"

    const/4 v2, 0x0

    .line 364
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isFingerprintEnabled(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fingerprintEnabled"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method

.method public static isIp4Address(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->VALID_IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 1232
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1233
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isIp6Address(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->VALID_IPV6_PATTERN:Ljava/util/regex/Pattern;

    .line 1237
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1238
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isMigrated()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "isMigrated"

    const/4 v2, 0x0

    .line 720
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMigrated(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 724
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isMigrated"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static isMultiUser()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "multiUser"

    const/4 v2, 0x0

    .line 666
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNotificationMigrated()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "NewDBNotification"

    const/4 v2, 0x0

    .line 1148
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isProfileMigrated()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "profilesmigrated"

    const/4 v2, 0x0

    .line 373
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isProfileMigrated(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 377
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profilesmigrated"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static isRun()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "runNotification"

    const/4 v2, 0x1

    .line 229
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRun(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "runNotification"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static isXposedEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static kingDetected()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "kingDetect"

    const/4 v2, 0x0

    .line 528
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static kingDetected(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 532
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "kingDetect"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method static synthetic lambda$cleanupShellInstances$4()V
    .locals 2

    .line 1293
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->getCachedShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1294
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1295
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell;->close()V

    :cond_0
    const-wide/16 v0, 0x64

    .line 1297
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$storeBlockedApps$0(Ldev/ukanth/ufirewall/log/LogPreference;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0

    .line 897
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogPreference;->save(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    return-void
.end method

.method static synthetic lambda$storeDefaultConnection$1(Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0

    .line 909
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->save(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    return-void
.end method

.method static synthetic lambda$storeDefaultConnection$2(Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0

    .line 916
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->save(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    return-void
.end method

.method static synthetic lambda$updateLogNotification$3(Ldev/ukanth/ufirewall/log/LogPreference;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0

    .line 1139
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogPreference;->save(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    return-void
.end method

.method public static locale()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    .line 572
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "locale"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static locale(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 576
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locale"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method

.method public static logPingTimeout()I
    .locals 3

    :try_start_0
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "logPingTime"

    const-string v2, "10"

    .line 456
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/16 v0, 0xa

    return v0
.end method

.method public static logTarget()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "logTarget"

    const-string v2, ""

    .line 691
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 695
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "logTarget"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method

.method public static logTargets()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "logTargets"

    const/4 v2, 0x0

    .line 682
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logTargets(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 686
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "logTargets"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method

.method public static oldLogView()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "oldLogView"

    const/4 v2, 0x0

    .line 744
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static oldLogView(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 739
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oldLogView"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static profile_pwd()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "profilePwd"

    const-string v2, ""

    .line 346
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static profile_pwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 350
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profilePwd"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method

.method public static protectionLevel()Ljava/lang/String;
    .locals 4

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "passSetting"

    const-string v2, "p0"

    .line 877
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Disable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 878
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 880
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readBlockedApps()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 934
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v0

    const-class v1, Ldev/ukanth/ufirewall/log/LogPreference;

    .line 935
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v0

    .line 936
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->queryList()Ljava/util/List;

    move-result-object v0

    .line 937
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 938
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/ukanth/ufirewall/log/LogPreference;

    .line 939
    invoke-virtual {v2}, Ldev/ukanth/ufirewall/log/LogPreference;->isDisable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 940
    invoke-virtual {v2}, Ldev/ukanth/ufirewall/log/LogPreference;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static readDefaultConnection(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 921
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v0

    const-class v1, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    .line 922
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v0

    .line 923
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->queryList()Ljava/util/List;

    move-result-object v0

    .line 924
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 925
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    .line 926
    invoke-virtual {v2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->isState()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getModeType()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 927
    invoke-virtual {v2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static registerPrivateLink()V
    .locals 3

    sget-boolean v0, Ldev/ukanth/ufirewall/util/G;->enabledPrivateLink:Z

    if-nez v0, :cond_1

    .line 1249
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget-object v1, Ldev/ukanth/ufirewall/util/G;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_0

    .line 1251
    new-instance v1, Ldev/ukanth/ufirewall/util/G$2;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/util/G$2;-><init>()V

    sput-object v1, Ldev/ukanth/ufirewall/util/G;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1265
    :cond_0
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x1

    sput-boolean v0, Ldev/ukanth/ufirewall/util/G;->enabledPrivateLink:Z

    goto :goto_0

    :cond_1
    const-string v0, "AFWall"

    const-string v1, "Private link has registered already"

    .line 1268
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static reloadPrefs()V
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    .line 1041
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 1046
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->storedProfile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "AFWallPrefs"

    .line 1050
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selected Profile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AFWall"

    invoke-static {v2, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    sput-object v0, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    sget-object v1, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    .line 1053
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const-string v1, "AFWallStatus"

    .line 1054
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->sPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static reloadProfile()V
    .locals 1

    .line 1058
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->reloadPrefs()V

    const/4 v0, 0x0

    .line 1059
    sput-object v0, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    return-void
.end method

.method public static removeAdditionalProfile(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1102
    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/util/G;->clearSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v2, ""

    const-string v3, "plusprofiles"

    .line 1103
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1105
    new-instance v2, Ljava/util/ArrayList;

    const-string v4, "\\s*,\\s*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1106
    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 1107
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static resetOwnerModuleCheck()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->ownerModuleAvailable:Ljava/lang/Boolean;

    return-void
.end method

.method public static ruleTextSize()I
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ruleTextSize"

    const/16 v2, 0x20

    .line 730
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static ruleTextSize(I)I
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 734
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ruleTextSize"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static saveSelectedFilter(I)V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 701
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selectedFilter"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static selectedFilter()I
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "selectedFilter"

    const/16 v2, 0x63

    .line 705
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setBuiltinIptablesFailed(Z)V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 554
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ipt_builtin_failed"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setMultiUserId(I)V
    .locals 4

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 670
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "multiUserId"

    int-to-long v2, p0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setProfile(ZLjava/lang/String;)Z
    .locals 0

    .line 1063
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile(Z)Z

    .line 1064
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->storedProfile(Ljava/lang/String;)Ljava/lang/String;

    .line 1065
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->reloadProfile()V

    const/4 p0, 0x1

    return p0
.end method

.method public static showAllApps()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "showAllApps"

    const/4 v2, 0x0

    .line 249
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showAllApps(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showAllApps"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static showFilter()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "showFilter"

    const/4 v2, 0x0

    .line 518
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showFilter(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 522
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showFilter"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static showHost()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "showHostName"

    const/4 v2, 0x0

    .line 477
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showHost(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 481
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showHostName"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static showUid()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "showUid"

    const/4 v2, 0x0

    .line 509
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showUid(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 513
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showUid"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static sortBy()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "sort"

    const-string v2, "s0"

    .line 590
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sortBy(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 594
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sort"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static startupDelay()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "addDelayStart"

    const/4 v2, 0x0

    .line 646
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static storeBlockedApps(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 892
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 893
    new-instance v1, Ldev/ukanth/ufirewall/log/LogPreference;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/log/LogPreference;-><init>()V

    .line 894
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ldev/ukanth/ufirewall/log/LogPreference;->setUid(I)V

    .line 895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ldev/ukanth/ufirewall/log/LogPreference;->setTimestamp(J)V

    const/4 v0, 0x1

    .line 896
    invoke-virtual {v1, v0}, Ldev/ukanth/ufirewall/log/LogPreference;->setDisable(Z)V

    .line 897
    const-class v0, Ldev/ukanth/ufirewall/log/LogPreferenceDB;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    new-instance v2, Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda2;-><init>(Ldev/ukanth/ufirewall/log/LogPreference;)V

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static storeDefaultConnection(Ljava/util/List;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 904
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 905
    new-instance v1, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;-><init>()V

    .line 906
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->setUid(I)V

    const/4 v0, 0x1

    .line 907
    invoke-virtual {v1, v0}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->setState(Z)V

    .line 908
    invoke-virtual {v1, p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->setModeType(I)V

    .line 909
    const-class v0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPrefDB;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    new-instance v2, Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)V

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    goto :goto_0

    .line 911
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 912
    new-instance v0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;-><init>()V

    .line 913
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->setUid(I)V

    const/4 p1, 0x0

    .line 914
    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->setState(Z)V

    .line 915
    invoke-virtual {v0, p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->setModeType(I)V

    .line 916
    const-class p1, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPrefDB;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p1

    new-instance v1, Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)V

    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static storedPid()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "storedPid"

    const/4 v2, 0x0

    .line 201
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static storedPid(Ljava/util/Set;)V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "storedPid"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static storedProfile()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "storedProfile"

    const-string v2, "AFWallPrefs"

    .line 598
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static storedProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 602
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "storedProfile"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method

.method public static supportDual()Z
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "supportDualApps"

    const/4 v2, 0x0

    .line 209
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportDual(Z)Z
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "supportDualApps"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p0
.end method

.method public static sysColor()I
    .locals 4

    .line 615
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "#000000"

    const-string v2, "sysColor"

    if-eqz v0, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    .line 616
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 617
    :cond_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LHC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "#0F9D58"

    .line 621
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toast_pos()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v1, "toast_pos"

    const-string v2, "bottom"

    .line 568
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateLogNotification(IZ)V
    .locals 3

    .line 1135
    new-instance v0, Ldev/ukanth/ufirewall/log/LogPreference;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/log/LogPreference;-><init>()V

    .line 1136
    invoke-virtual {v0, p0}, Ldev/ukanth/ufirewall/log/LogPreference;->setUid(I)V

    .line 1137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldev/ukanth/ufirewall/log/LogPreference;->setTimestamp(J)V

    .line 1138
    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/log/LogPreference;->setDisable(Z)V

    .line 1139
    const-class p0, Ldev/ukanth/ufirewall/log/LogPreferenceDB;

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p0

    new-instance p1, Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda3;-><init>(Ldev/ukanth/ufirewall/log/LogPreference;)V

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    return-void
.end method

.method public static userColor()I
    .locals 2

    .line 607
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "#FFFFFF"

    .line 610
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const-string v0, "#000000"

    .line 608
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1192
    instance-of p1, p1, Ldev/ukanth/ufirewall/MainActivity;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    sput-boolean p1, Ldev/ukanth/ufirewall/util/G;->isActivityVisible:Z

    .line 1194
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->cleanupShellInstances()V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1185
    instance-of p1, p1, Ldev/ukanth/ufirewall/MainActivity;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Ldev/ukanth/ufirewall/util/G;->isActivityVisible:Z

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1200
    instance-of p1, p1, Ldev/ukanth/ufirewall/MainActivity;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    sput-boolean p1, Ldev/ukanth/ufirewall/util/G;->isActivityVisible:Z

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    sput-object p0, Ldev/ukanth/ufirewall/util/G;->instance:Ldev/ukanth/ufirewall/util/G;

    .line 998
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1001
    new-instance v0, Ldev/ukanth/ufirewall/util/G$1;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/util/G$1;-><init>(Ldev/ukanth/ufirewall/util/G;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1025
    invoke-virtual {p0, p0}, Ldev/ukanth/ufirewall/util/G;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1026
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 1028
    :try_start_0
    new-instance v0, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1029
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->openDatabasesOnInit(Z)Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->build()Lcom/raizlabs/android/dbflow/config/FlowConfig;

    move-result-object v0

    .line 1028
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->init(Lcom/raizlabs/android/dbflow/config/FlowConfig;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AFWall"

    const-string v1, "unable to open database - exception"

    .line 1031
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :goto_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/G;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    .line 1034
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->reloadPrefs()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1284
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->getCachedShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    :catch_0
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 1275
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->getCachedShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    :catch_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
