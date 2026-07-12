.class public final Ldev/ukanth/ufirewall/plugin/BundleScrubber;
.super Ljava/lang/Object;
.source "BundleScrubber.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scrub(Landroid/content/Intent;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Ldev/ukanth/ufirewall/plugin/BundleScrubber;->scrub(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static scrub(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 67
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 71
    :catch_0
    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    const/4 p0, 0x1

    return p0
.end method
