.class Ldev/ukanth/ufirewall/plugin/FireReceiver$4;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/plugin/FireReceiver;Landroid/content/Context;)V
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$4;->this$0:Ldev/ukanth/ufirewall/plugin/FireReceiver;

    iput-object p2, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$4;->val$context:Landroid/content/Context;

    .line 191
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 3

    .line 194
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 195
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-nez p1, :cond_0

    .line 196
    sget p1, Ldev/ukanth/ufirewall/R$string;->rules_applied:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$4;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    invoke-static {p1, v1, v2}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 200
    :cond_0
    sget p1, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    :goto_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$4;->this$0:Ldev/ukanth/ufirewall/plugin/FireReceiver;

    .line 202
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/plugin/FireReceiver;->-$$Nest$msendMessage(Ldev/ukanth/ufirewall/plugin/FireReceiver;Landroid/os/Message;)V

    return-void
.end method
