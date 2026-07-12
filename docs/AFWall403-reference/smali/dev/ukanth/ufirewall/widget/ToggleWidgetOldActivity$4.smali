.class Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;
.super Ljava/lang/Thread;
.source "ToggleWidgetOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->startAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$i:I

.field final synthetic val$toaster:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;ILandroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

    iput p2, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->val$i:I

    iput-object p3, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->val$toaster:Landroid/os/Handler;

    .line 275
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 278
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->val$i:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "AFWallProfile3"

    .line 389
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->val$context:Landroid/content/Context;

    .line 390
    new-instance v1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    new-instance v3, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$6;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$6;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;)V

    .line 391
    invoke-virtual {v1, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    .line 390
    invoke-static {v0, v2, v1}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "AFWallProfile2"

    .line 366
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->val$context:Landroid/content/Context;

    .line 367
    new-instance v1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    new-instance v3, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$5;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$5;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;)V

    .line 368
    invoke-virtual {v1, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    .line 367
    invoke-static {v0, v2, v1}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "AFWallProfile1"

    .line 343
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->val$context:Landroid/content/Context;

    .line 344
    new-instance v1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    new-instance v3, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$4;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$4;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;)V

    .line 345
    invoke-virtual {v1, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    .line 344
    invoke-static {v0, v2, v1}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    .line 320
    :pswitch_3
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v0

    const-string v1, "AFWallPrefs"

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->val$context:Landroid/content/Context;

    .line 321
    new-instance v1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    new-instance v3, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$3;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$3;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;)V

    .line 322
    invoke-virtual {v1, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    .line 321
    invoke-static {v0, v2, v1}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->val$context:Landroid/content/Context;

    .line 301
    new-instance v2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v3, Ldev/ukanth/ufirewall/R$string;->toast_disabled:I

    .line 302
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->toast_error_disabling:I

    .line 303
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    .line 304
    invoke-virtual {v2, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    new-instance v3, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$2;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$2;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;)V

    .line 305
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    .line 301
    invoke-static {v0, v1, v2}, Ldev/ukanth/ufirewall/Api;->purgeIptables(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->val$context:Landroid/content/Context;

    .line 281
    new-instance v1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    new-instance v3, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$1;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4$1;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;)V

    .line 282
    invoke-virtual {v1, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    .line 281
    invoke-static {v0, v2, v1}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    :goto_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

    .line 413
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->getApplicationContext()Landroid/content/Context;

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
