.class public Ldev/ukanth/ufirewall/preferences/ShareProfilePreference;
.super Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;
.source "ShareProfilePreference.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "dev.ukanth.ufirewall.donate_preferences"

    .line 11
    sget-object v1, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkAccess(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    xor-int/lit8 p1, p3, 0x1

    return p1
.end method
