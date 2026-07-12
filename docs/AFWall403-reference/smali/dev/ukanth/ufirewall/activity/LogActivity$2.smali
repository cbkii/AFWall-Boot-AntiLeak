.class Ldev/ukanth/ufirewall/activity/LogActivity$2;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/activity/LogActivity;->clearDatabase(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/activity/LogActivity;Landroid/content/Context;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$2;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    iput-object p2, p0, Ldev/ukanth/ufirewall/activity/LogActivity$2;->val$ctx:Landroid/content/Context;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 2

    const-string p2, "Logs"

    .line 370
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p2

    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->reset()V

    iget-object p2, p0, Ldev/ukanth/ufirewall/activity/LogActivity$2;->val$ctx:Landroid/content/Context;

    .line 371
    sget v0, Ldev/ukanth/ufirewall/R$string;->log_cleared:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 372
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 373
    new-instance p1, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;

    iget-object p2, p0, Ldev/ukanth/ufirewall/activity/LogActivity$2;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    invoke-direct {p1, p2}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;-><init>(Ldev/ukanth/ufirewall/activity/LogActivity;)V

    iget-object p2, p0, Ldev/ukanth/ufirewall/activity/LogActivity$2;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    invoke-virtual {p1, p2}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->setContext(Landroid/content/Context;)Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;

    move-result-object p1

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->execute()V

    return-void
.end method
