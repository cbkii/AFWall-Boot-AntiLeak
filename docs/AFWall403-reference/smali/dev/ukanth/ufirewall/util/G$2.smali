.class Ldev/ukanth/ufirewall/util/G$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "G.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/util/G;->registerPrivateLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1251
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 1254
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    .line 1256
    invoke-static {p2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/LinkProperties;)Z

    move-result p1

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->-$$Nest$sfgetprivateDns()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1257
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Private DNS status changed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->-$$Nest$sfgetprivateDns()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AFWall"

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    invoke-static {p2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/LinkProperties;)Z

    move-result p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->-$$Nest$sfputprivateDns(Z)V

    .line 1259
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Private DNS changed.. reapplying rules"

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/InterfaceTracker;->applyRules(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
