.class Ldev/ukanth/ufirewall/MainActivity$PurgeTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurgeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


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

.field private progress:Lcom/afollestad/materialdialogs/MaterialDialog;

.field final synthetic this$0:Ldev/ukanth/ufirewall/MainActivity;


# direct methods
.method static bridge synthetic -$$Nest$fgetprogress(Ldev/ukanth/ufirewall/MainActivity$PurgeTask;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 2421
    const-class v0, Ldev/ukanth/ufirewall/MainActivity;

    return-void
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2426
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2427
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->activityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 2442
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->hasRoot()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2444
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->hasRoot(Z)Z

    .line 2445
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    new-instance v1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v2, Ldev/ukanth/ufirewall/R$string;->rules_deleted:I

    .line 2446
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->error_purge:I

    .line 2447
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    .line 2448
    invoke-virtual {v1, p1}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    new-instance v2, Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1;

    invoke-direct {v2, p0}, Ldev/ukanth/ufirewall/MainActivity$PurgeTask$1;-><init>(Ldev/ukanth/ufirewall/MainActivity$PurgeTask;)V

    .line 2449
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    .line 2445
    invoke-static {v0, p1, v1}, Ldev/ukanth/ufirewall/Api;->purgeIptables(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    .line 2467
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 2469
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    .line 2421
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 2475
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2476
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2477
    sget-object p1, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v1, Ldev/ukanth/ufirewall/R$string;->error_su_toast:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 2479
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2484
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 2486
    throw v0

    :catch_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 2484
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    :goto_0
    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;

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

    .line 2421
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 2432
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Ldev/ukanth/ufirewall/R$string;->working:I

    .line 2433
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2434
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v2, Ldev/ukanth/ufirewall/R$string;->purging_rules:I

    .line 2435
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 2436
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 2437
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method
