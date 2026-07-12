.class public Ldev/ukanth/ufirewall/MainActivity$GetAppList;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetAppList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
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

.field final synthetic this$0:Ldev/ukanth/ufirewall/MainActivity;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/MainActivity;Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2495
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2496
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->activityReference:Ljava/lang/ref/WeakReference;

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

    .line 2491
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->activityReference:Ljava/lang/ref/WeakReference;

    .line 2513
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p0}, Ldev/ukanth/ufirewall/Api;->getApps(Landroid/content/Context;Ldev/ukanth/ufirewall/MainActivity$GetAppList;)Ljava/util/List;

    .line 2514
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->isCancelled()Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public doProgress(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 2508
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->publishProgress([Ljava/lang/Object;)V

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

    .line 2491
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2522
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mselectFilterGroup(Ldev/ukanth/ufirewall/MainActivity;)V

    const/4 p1, -0x1

    .line 2523
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->doProgress(I)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2526
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetplsWait(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetplsWait(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2527
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetplsWait(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2534
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetplsWait(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2535
    :goto_0
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fputplsWait(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2534
    invoke-static {v1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetplsWait(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2535
    invoke-static {v1, p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fputplsWait(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 2536
    throw v0

    :catch_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2534
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetplsWait(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    goto :goto_0

    :catch_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetplsWait(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2537
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetmSwipeLayout(Ldev/ukanth/ufirewall/MainActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    nop

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2540
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetplsWait(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2541
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetplsWait(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2542
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fputplsWait(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    :cond_1
    :goto_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2501
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    sget v4, Ldev/ukanth/ufirewall/R$string;->reading_apps:I

    .line 2502
    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-virtual {v3}, Ldev/ukanth/ufirewall/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 2503
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    .line 2502
    invoke-virtual {v1, v2, v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZIZ)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 2503
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fputplsWait(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 2504
    invoke-virtual {p0, v2}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->doProgress(I)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    .line 2550
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2553
    invoke-static {v1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetplsWait(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 2554
    invoke-static {v1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetplsWait(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->incrementProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2491
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
