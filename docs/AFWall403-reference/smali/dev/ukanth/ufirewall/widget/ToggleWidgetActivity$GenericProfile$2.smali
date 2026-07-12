.class Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;
.super Ljava/lang/Thread;
.source "ToggleWidgetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;->menuActiviated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$toaster:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;Landroid/content/Context;Landroid/os/Handler;)V
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;

    iput-object p2, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;->val$toaster:Landroid/os/Handler;

    .line 268
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 271
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;

    .line 272
    invoke-static {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;->-$$Nest$fgetprofileName(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByName(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;

    .line 275
    invoke-static {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;->-$$Nest$fgetprofileName(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    :goto_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;->val$context:Landroid/content/Context;

    .line 277
    new-instance v2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v3, Ldev/ukanth/ufirewall/R$string;->rules_applied:I

    .line 278
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 279
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    new-instance v3, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2$1;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2$1;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;)V

    .line 280
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    .line 277
    invoke-static {v0, v1, v2}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;

    .line 294
    iget-object v0, v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;->this$1:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;

    iget-object v1, v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->updateNotification(ZLandroid/content/Context;)V

    return-void
.end method
