.class public final Ldev/ukanth/ufirewall/plugin/PluginBundleManager;
.super Ljava/lang/Object;
.source "PluginBundleManager.java"


# static fields
.field public static final BUNDLE_EXTRA_INT_VERSION_CODE:Ljava/lang/String; = "dev.ukanth.ufirewall.plugin.extra.INT_VERSION_CODE"

.field public static final BUNDLE_EXTRA_STRING_MESSAGE:Ljava/lang/String; = "dev.ukanth.ufirewall.plugin.APPLY_PROFILE"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 78
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "dev.ukanth.ufirewall.plugin.APPLY_PROFILE"

    .line 79
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static isBundleValid(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "dev.ukanth.ufirewall.plugin.APPLY_PROFILE"

    .line 61
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 68
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
