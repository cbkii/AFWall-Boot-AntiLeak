.class Ldev/ukanth/ufirewall/broadcast/PackageBroadcast$1;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "PackageBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/broadcast/PackageBroadcast;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/broadcast/PackageBroadcast;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/broadcast/PackageBroadcast;Landroid/content/Intent;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/broadcast/PackageBroadcast$1;->this$0:Ldev/ukanth/ufirewall/broadcast/PackageBroadcast;

    iput-object p2, p0, Ldev/ukanth/ufirewall/broadcast/PackageBroadcast$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Ldev/ukanth/ufirewall/broadcast/PackageBroadcast$1;->val$context:Landroid/content/Context;

    iput p4, p0, Ldev/ukanth/ufirewall/broadcast/PackageBroadcast$1;->val$uid:I

    .line 87
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 1

    .line 90
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-nez p1, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/broadcast/PackageBroadcast$1;->val$intent:Landroid/content/Intent;

    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ldev/ukanth/ufirewall/broadcast/PackageBroadcast$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api;->removeCacheLabel(Ljava/lang/String;Landroid/content/Context;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/broadcast/PackageBroadcast$1;->val$context:Landroid/content/Context;

    .line 92
    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->removeAllUnusedCacheLabel(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 94
    sput-object p1, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    iget p1, p0, Ldev/ukanth/ufirewall/broadcast/PackageBroadcast$1;->val$uid:I

    .line 96
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/UidResolver;->invalidateUid(I)V

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Package removed, invalidated UID cache for: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Ldev/ukanth/ufirewall/broadcast/PackageBroadcast$1;->val$uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AFWall"

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
