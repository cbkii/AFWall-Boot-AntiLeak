.class Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$3;
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

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$3;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;

    iput-object p2, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$3;->val$msg:Landroid/os/Message;

    .line 531
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 1

    .line 534
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-nez p1, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$3;->val$msg:Landroid/os/Message;

    .line 535
    sget v0, Ldev/ukanth/ufirewall/R$string;->rules_applied:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$3;->val$msg:Landroid/os/Message;

    .line 538
    sget v0, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    :goto_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$3;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;

    .line 540
    iget-object p1, p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->val$toaster:Landroid/os/Handler;

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$3;->val$msg:Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
