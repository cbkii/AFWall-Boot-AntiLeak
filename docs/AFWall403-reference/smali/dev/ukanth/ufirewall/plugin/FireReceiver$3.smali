.class Ldev/ukanth/ufirewall/plugin/FireReceiver$3;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "FireReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/plugin/FireReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/plugin/FireReceiver;

.field final synthetic val$disableToasts:Z


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/plugin/FireReceiver;Z)V
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$3;->this$0:Ldev/ukanth/ufirewall/plugin/FireReceiver;

    iput-boolean p2, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$3;->val$disableToasts:Z

    .line 152
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 1

    .line 155
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 156
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-nez p1, :cond_0

    .line 157
    sget p1, Ldev/ukanth/ufirewall/R$string;->tasker_profile_applied:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-boolean p1, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$3;->val$disableToasts:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$3;->this$0:Ldev/ukanth/ufirewall/plugin/FireReceiver;

    .line 159
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/plugin/FireReceiver;->-$$Nest$msendMessage(Ldev/ukanth/ufirewall/plugin/FireReceiver;Landroid/os/Message;)V

    goto :goto_0

    .line 162
    :cond_0
    sget p1, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    :cond_1
    :goto_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$3;->this$0:Ldev/ukanth/ufirewall/plugin/FireReceiver;

    .line 164
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/plugin/FireReceiver;->-$$Nest$msendMessage(Ldev/ukanth/ufirewall/plugin/FireReceiver;Landroid/os/Message;)V

    return-void
.end method
