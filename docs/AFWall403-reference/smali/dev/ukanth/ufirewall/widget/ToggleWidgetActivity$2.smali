.class Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;
.super Ljava/lang/Thread;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$toaster:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    iput-object p2, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->val$toaster:Landroid/os/Handler;

    .line 467
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 470
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 471
    invoke-static {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->-$$Nest$fgetactionType(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 472
    invoke-static {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->-$$Nest$fgetactionType(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "AFWallProfile3"

    .line 523
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_0

    :pswitch_1
    const-string v0, "AFWallProfile2"

    .line 520
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_0

    :pswitch_2
    const-string v0, "AFWallProfile1"

    .line 517
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_0

    .line 514
    :pswitch_3
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v0

    const-string v2, "AFWallPrefs"

    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->val$context:Landroid/content/Context;

    .line 495
    new-instance v2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v3, Ldev/ukanth/ufirewall/R$string;->toast_disabled:I

    .line 496
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->toast_error_disabling:I

    .line 497
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    .line 498
    invoke-virtual {v2, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    new-instance v3, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$2;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$2;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;)V

    .line 499
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    .line 495
    invoke-static {v0, v1, v2}, Ldev/ukanth/ufirewall/Api;->purgeIptables(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->val$context:Landroid/content/Context;

    .line 474
    new-instance v2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v3, Ldev/ukanth/ufirewall/R$string;->rules_applied:I

    .line 475
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 476
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    .line 477
    invoke-virtual {v2, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    new-instance v3, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$1;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$1;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;)V

    .line 478
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    .line 474
    invoke-static {v0, v1, v2}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    :goto_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 526
    invoke-static {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->-$$Nest$fgetactionType(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 527
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v2, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->val$context:Landroid/content/Context;

    .line 528
    new-instance v3, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v4, Ldev/ukanth/ufirewall/R$string;->rules_applied:I

    .line 529
    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    sget v4, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 530
    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    new-instance v4, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$3;

    invoke-direct {v4, p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2$3;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;Landroid/os/Message;)V

    .line 531
    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    .line 528
    invoke-static {v2, v1, v0}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    .line 543
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->reloadPrefs()V

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 547
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->updateNotification(ZLandroid/content/Context;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
