.class public Ldev/ukanth/ufirewall/util/FingerprintUtil;
.super Ljava/lang/Object;
.source "FingerprintUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintSuccess;,
        Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintFailure;,
        Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AfWall-FingerprintUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->getCurrentPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Fingerprint"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAndroidSupport()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
