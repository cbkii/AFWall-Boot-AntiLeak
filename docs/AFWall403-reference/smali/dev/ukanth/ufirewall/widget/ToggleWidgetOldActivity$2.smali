.class Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;
.super Ljava/lang/Thread;
.source "ToggleWidgetOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->runProfile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$profileName:Ljava/lang/String;

.field final synthetic val$toaster:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

    iput-object p2, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;->val$profileName:Ljava/lang/String;

    iput-object p3, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;->val$toaster:Landroid/os/Handler;

    .line 223
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 226
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;->val$profileName:Ljava/lang/String;

    .line 227
    invoke-static {v0}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByName(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object v0

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;->val$context:Landroid/content/Context;

    .line 229
    new-instance v1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    new-instance v2, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2$1;

    invoke-direct {v2, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2$1;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;)V

    .line 230
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    const/4 v2, 0x0

    .line 229
    invoke-static {v0, v2, v1}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

    .line 246
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->updateNotification(ZLandroid/content/Context;)V

    return-void
.end method
