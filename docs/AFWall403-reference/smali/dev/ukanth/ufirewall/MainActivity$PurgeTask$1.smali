.class Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldev/ukanth/ufirewall/MainActivity$PurgeTask;


# direct methods
.method public static synthetic $r8$lambda$aUuhB9VbGu5nwBRnZpPbNGpkSQc(Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1;->lambda$cbFunc$0(Z)V

    return-void
.end method

.method constructor <init>(Ldev/ukanth/ufirewall/MainActivity$PurgeTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$PurgeTask;

    .line 2449
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method

.method private synthetic lambda$cbFunc$0(Z)V
    .locals 2

    .line 2460
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$PurgeTask;

    .line 2461
    iget-object v0, v0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$PurgeTask;

    iget-object v1, v1, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-static {v1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetmainMenu(Ldev/ukanth/ufirewall/MainActivity;)Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ldev/ukanth/ufirewall/MainActivity;->menuSetApplyOrSave(Landroid/view/Menu;Z)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$PurgeTask;

    .line 2462
    iget-object p1, p1, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mrefreshHeader(Ldev/ukanth/ufirewall/MainActivity;)V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$PurgeTask;

    .line 2455
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->-$$Nest$fgetprogress(Ldev/ukanth/ufirewall/MainActivity$PurgeTask;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2458
    :goto_0
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$PurgeTask;

    .line 2459
    iget-object v0, v0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1;Z)V

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
