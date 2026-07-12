.class Ldev/ukanth/ufirewall/InterfaceTracker$2$1;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "InterfaceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/InterfaceTracker$2;->cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/InterfaceTracker$2;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/InterfaceTracker$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/InterfaceTracker$2$1;->this$0:Ldev/ukanth/ufirewall/InterfaceTracker$2;

    .line 447
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 0

    .line 450
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/InterfaceTracker$2$1;->this$0:Ldev/ukanth/ufirewall/InterfaceTracker$2;

    .line 451
    iget-object p1, p1, Ldev/ukanth/ufirewall/InterfaceTracker$2;->val$safeCtx:Landroid/content/Context;

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->errorNotification(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
