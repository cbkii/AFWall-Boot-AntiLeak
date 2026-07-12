.class Ldev/ukanth/ufirewall/MainActivity$RootCheck;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootCheck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field suDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field suGranted:[Z

.field final synthetic this$0:Ldev/ukanth/ufirewall/MainActivity;

.field unsupportedSU:Z


# direct methods
.method public static synthetic $r8$lambda$U0jJVOBAvoNlPgMIXEIlqE7JuBk(Ldev/ukanth/ufirewall/MainActivity$RootCheck;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->lambda$onPostExecute$0(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method private constructor <init>(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2648
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->suDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->unsupportedSU:Z

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    iput-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->suGranted:[Z

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Ldev/ukanth/ufirewall/MainActivity;Ldev/ukanth/ufirewall/MainActivity$RootCheck-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$RootCheck;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$0(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    iget-object p2, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2698
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/MainActivity;->finish()V

    .line 2699
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {p2}, Landroid/os/Process;->killProcess(I)V

    .line 2700
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2648
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 2670
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->suGranted:[Z

    .line 2671
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->isAppGrantedRoot()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    aput-boolean v0, p1, v1

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2672
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.kingroot.kinguser"

    invoke-virtual {p1, v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->isSuPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->unsupportedSU:Z

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2648
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 2678
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->suDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    .line 2681
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->suDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 2686
    throw v0

    :catch_0
    :cond_0
    :goto_0
    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->suDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 2687
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->isNetfilterSupported()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/MainActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2688
    new-instance p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-direct {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v1, Ldev/ukanth/ufirewall/R$string;->error_common:I

    .line 2689
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v1, Ldev/ukanth/ufirewall/R$string;->error_netfilter:I

    .line 2690
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$RootCheck$1;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/MainActivity$RootCheck$1;-><init>(Ldev/ukanth/ufirewall/MainActivity$RootCheck;)V

    .line 2691
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$RootCheck$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/MainActivity$RootCheck$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/MainActivity$RootCheck;)V

    .line 2697
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v1, Ldev/ukanth/ufirewall/R$string;->Continue:I

    .line 2702
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v1, Ldev/ukanth/ufirewall/R$string;->exit:I

    .line 2703
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 2704
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->suGranted:[Z

    .line 2710
    aget-boolean p1, p1, v0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->unsupportedSU:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/MainActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2711
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mdisableFirewall(Ldev/ukanth/ufirewall/MainActivity;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2712
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mshowRootNotFoundMessage(Ldev/ukanth/ufirewall/MainActivity;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 2714
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->hasRoot(Z)Z

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2715
    invoke-static {v1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mstartRootShell(Ldev/ukanth/ufirewall/MainActivity;)V

    .line 2716
    new-instance v1, Ldev/ukanth/ufirewall/util/SecurityUtil;

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-direct {v1, v2}, Ldev/ukanth/ufirewall/util/SecurityUtil;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/util/SecurityUtil;->passCheck()Z

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2717
    invoke-static {v1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mregisterNetworkObserver(Ldev/ukanth/ufirewall/MainActivity;)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2719
    invoke-static {v1}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2720
    invoke-static {v1, p1, v0}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 2662
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2663
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    sget v3, Ldev/ukanth/ufirewall/R$string;->su_check_title:I

    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->context:Landroid/content/Context;

    sget v2, Ldev/ukanth/ufirewall/R$string;->su_check_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 2664
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->suDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public setContext(Landroid/content/Context;)Ldev/ukanth/ufirewall/MainActivity$RootCheck;
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->context:Landroid/content/Context;

    return-object p0
.end method
