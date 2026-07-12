.class Ldev/ukanth/ufirewall/activity/RulesActivity$5;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "RulesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/activity/RulesActivity;->flushAllRules(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/activity/RulesActivity;Landroid/content/Context;)V
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$5;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    iput-object p2, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$5;->val$ctx:Landroid/content/Context;

    .line 357
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 1

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$5;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$5;->val$ctx:Landroid/content/Context;

    .line 359
    invoke-virtual {p1, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->populateData(Landroid/content/Context;)V

    return-void
.end method
