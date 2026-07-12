.class Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$2;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "ToggleWidgetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$2;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;

    .line 499
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2

    .line 501
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 502
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-nez p1, :cond_0

    .line 503
    sget p1, Ldev/ukanth/ufirewall/R$string;->toast_disabled:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$2;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;

    .line 504
    iget-object p1, p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1, v1}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 507
    :cond_0
    sget p1, Ldev/ukanth/ufirewall/R$string;->toast_error_disabling:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    :goto_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$2;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;

    .line 509
    iget-object p1, p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->val$toaster:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
