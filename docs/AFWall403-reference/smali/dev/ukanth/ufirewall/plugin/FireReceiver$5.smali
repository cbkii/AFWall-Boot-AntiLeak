.class Ldev/ukanth/ufirewall/plugin/FireReceiver$5;
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$5;->this$0:Ldev/ukanth/ufirewall/plugin/FireReceiver;

    iput-object p2, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$5;->val$context:Landroid/content/Context;

    .line 210
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 1

    .line 212
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 213
    sget v0, Ldev/ukanth/ufirewall/R$string;->toast_disabled:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$5;->this$0:Ldev/ukanth/ufirewall/plugin/FireReceiver;

    .line 214
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/plugin/FireReceiver;->-$$Nest$msendMessage(Ldev/ukanth/ufirewall/plugin/FireReceiver;Landroid/os/Message;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/plugin/FireReceiver$5;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 215
    invoke-static {p1, v0, v0}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    return-void
.end method
