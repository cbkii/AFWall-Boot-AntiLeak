.class Ldev/ukanth/ufirewall/MainActivity$RunApply$1;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/MainActivity$RunApply;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;


# direct methods
.method public static synthetic $r8$lambda$wX-2UZWKCy1Pv0tvnrraj8lcTt4(Ldev/ukanth/ufirewall/MainActivity$RunApply$1;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->lambda$cbFunc$0(Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method constructor <init>(Ldev/ukanth/ufirewall/MainActivity$RunApply;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 2592
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method

.method private synthetic lambda$cbFunc$0(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 2605
    iget-object v0, v0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    .line 2606
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 2607
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity$RunApply;->-$$Nest$fgetactivityReference(Ldev/ukanth/ufirewall/MainActivity$RunApply;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->errorNotification(Landroid/content/Context;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 2608
    iget-object p1, p1, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    invoke-static {v2}, Ldev/ukanth/ufirewall/MainActivity$RunApply;->-$$Nest$fgetactivityReference(Ldev/ukanth/ufirewall/MainActivity$RunApply;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/ukanth/ufirewall/MainActivity;

    invoke-static {v2}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetmainMenu(Ldev/ukanth/ufirewall/MainActivity;)Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ldev/ukanth/ufirewall/MainActivity;->menuSetApplyOrSave(Landroid/view/Menu;Z)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 2609
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity$RunApply;->-$$Nest$fgetactivityReference(Ldev/ukanth/ufirewall/MainActivity$RunApply;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v1, v0}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 2611
    iget-object p1, p1, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    invoke-static {v1}, Ldev/ukanth/ufirewall/MainActivity$RunApply;->-$$Nest$fgetactivityReference(Ldev/ukanth/ufirewall/MainActivity$RunApply;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/ukanth/ufirewall/MainActivity;

    invoke-static {v1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetmainMenu(Ldev/ukanth/ufirewall/MainActivity;)Landroid/view/Menu;

    move-result-object v1

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    iget-boolean v2, v2, Ldev/ukanth/ufirewall/MainActivity$RunApply;->enabled:Z

    invoke-virtual {p1, v1, v2}, Ldev/ukanth/ufirewall/MainActivity;->menuSetApplyOrSave(Landroid/view/Menu;Z)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 2612
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity$RunApply;->-$$Nest$fgetactivityReference(Ldev/ukanth/ufirewall/MainActivity$RunApply;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    iget-boolean v1, v1, Ldev/ukanth/ufirewall/MainActivity$RunApply;->enabled:Z

    invoke-static {p1, v1, v0}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    :goto_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 2614
    iget-object p1, p1, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mrefreshHeader(Ldev/ukanth/ufirewall/MainActivity;)V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 2595
    iget-object v0, v0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetrunProgress(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 2596
    iget-object v0, v0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetrunProgress(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2600
    :cond_0
    :goto_0
    iget v0, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 2601
    iget-object v0, v0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    :cond_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$RunApply$1;->this$1:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 2604
    iget-object v0, v0, Ldev/ukanth/ufirewall/MainActivity$RunApply;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$RunApply$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/MainActivity$RunApply$1$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/MainActivity$RunApply$1;Ldev/ukanth/ufirewall/service/RootCommand;)V

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
