.class Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$1;
.super Landroid/os/Handler;
.source "ToggleWidgetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->invokeAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;


# direct methods
.method public static synthetic $r8$lambda$W6ilefg6DP4DSdgF8z_Ujl8dE_8(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$1;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$1;->lambda$handleMessage$0(Landroid/os/Message;)V

    return-void
.end method

.method constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$1;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 458
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$0(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$1;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 462
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 461
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$1;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 462
    new-instance v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$1$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$1;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
