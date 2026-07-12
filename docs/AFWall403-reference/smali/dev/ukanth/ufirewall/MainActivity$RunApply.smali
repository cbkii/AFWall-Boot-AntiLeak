.class Ldev/ukanth/ufirewall/MainActivity$RunApply;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunApply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ldev/ukanth/ufirewall/MainActivity;",
            ">;"
        }
    .end annotation
.end field

.field enabled:Z

.field final synthetic this$0:Ldev/ukanth/ufirewall/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$4ssSzGTPmMIHkW2PajvTaHCIPik(Ldev/ukanth/ufirewall/MainActivity$RunApply;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity$RunApply;->lambda$doInBackground$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactivityReference(Ldev/ukanth/ufirewall/MainActivity$RunApply;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->activityReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method constructor <init>(Ldev/ukanth/ufirewall/MainActivity;Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2565
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2561
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->enabled:Z

    .line 2566
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->activityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private synthetic lambda$doInBackground$0()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    const/4 v1, 0x0

    .line 2622
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    :try_start_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2624
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetrunProgress(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 2587
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->hasRoot()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2588
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->setRulesUpToDate(Z)V

    .line 2589
    new-instance p1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {p1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v0, Ldev/ukanth/ufirewall/R$string;->rules_applied:I

    .line 2590
    invoke-virtual {p1, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 2591
    invoke-virtual {p1, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p1

    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;-><init>(Ldev/ukanth/ufirewall/MainActivity$RunApply;)V

    .line 2592
    invoke-virtual {p1, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p1

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->activityReference:Ljava/lang/ref/WeakReference;

    .line 2618
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    .line 2619
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2621
    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$RunApply$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/MainActivity$RunApply$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/MainActivity$RunApply;)V

    invoke-virtual {p1, v1}, Ldev/ukanth/ufirewall/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2628
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

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

    .line 2560
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$RunApply;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 2635
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2636
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->activityReference:Ljava/lang/ref/WeakReference;

    .line 2637
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    sget v1, Ldev/ukanth/ufirewall/R$string;->error_su_toast:I

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2638
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mdisableFirewall(Ldev/ukanth/ufirewall/MainActivity;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2639
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mrefreshHeader(Ldev/ukanth/ufirewall/MainActivity;)V

    :try_start_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2641
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetrunProgress(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
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

    .line 2560
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$RunApply;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2571
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Ldev/ukanth/ufirewall/R$string;->su_check_title:I

    .line 2572
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 2573
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$layout;->apply_view:I

    const/4 v3, 0x0

    .line 2574
    invoke-virtual {v1, v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(IZ)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const-string v2, "Dismiss"

    .line 2577
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 2578
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fputrunProgress(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 2579
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableIPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2580
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetrunProgress(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$id;->apply6layout:I

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
