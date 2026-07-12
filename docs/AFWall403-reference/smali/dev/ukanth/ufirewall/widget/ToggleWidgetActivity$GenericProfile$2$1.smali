.class Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2$1;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "ToggleWidgetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2$1;->this$2:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;

    .line 280
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 1

    .line 283
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 284
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-nez p1, :cond_0

    .line 285
    sget p1, Ldev/ukanth/ufirewall/R$string;->rules_applied:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 288
    :cond_0
    sget p1, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    :goto_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2$1;->this$2:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;

    .line 290
    iget-object p1, p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;->val$toaster:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
