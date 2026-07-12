.class Ldev/ukanth/ufirewall/activity/RulesActivity$3;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "RulesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/activity/RulesActivity;->appendNetworkInterfaces(Landroid/content/Context;)V
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$3;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    iput-object p2, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$3;->val$ctx:Landroid/content/Context;

    .line 247
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 1

    .line 249
    iget-object p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->res:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 250
    sget-object v0, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$3;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$3;->val$ctx:Landroid/content/Context;

    .line 251
    invoke-virtual {p1, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->appendIfconfig(Landroid/content/Context;)V

    return-void
.end method
