.class Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$4;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "ToggleWidgetOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$4;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;

    .line 345
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 1

    .line 348
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 349
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-nez p1, :cond_0

    .line 350
    sget p1, Ldev/ukanth/ufirewall/R$string;->rules_applied:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$4;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;

    .line 351
    iget-object p1, p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->val$toaster:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$4;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;

    .line 352
    iget-object p1, p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

    invoke-static {p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$menableOthers(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$4;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;

    .line 353
    iget-object p1, p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

    const-string v0, "AFWallProfile1"

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$mdisableCustom(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_0
    sget p1, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$4;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;

    .line 357
    iget-object p1, p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->val$toaster:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
