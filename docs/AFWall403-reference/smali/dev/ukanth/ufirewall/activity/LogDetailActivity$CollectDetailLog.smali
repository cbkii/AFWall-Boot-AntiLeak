.class Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;
.super Landroid/os/AsyncTask;
.source "LogDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/activity/LogDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectDetailLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field final synthetic this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;


# direct methods
.method public constructor <init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 324
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->context:Landroid/content/Context;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    :try_start_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 348
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$mgetCount(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)I

    move-result p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    .line 349
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->publishProgress([Ljava/lang/Object;)V

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 353
    invoke-static {}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfgetuid()I

    move-result v2

    invoke-static {p1, v2}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$mgetLogData(Ldev/ukanth/ufirewall/activity/LogDetailActivity;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfputfullLogDataList(Ljava/util/List;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 354
    invoke-static {}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfgetuid()I

    move-result v2

    invoke-static {p1, v2, v3, v1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$mgetPagedLogData(Ldev/ukanth/ufirewall/activity/LogDetailActivity;III)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfputlogDataList(Ljava/util/List;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 355
    invoke-static {p1, v3}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$fputcurrentPage(Ldev/ukanth/ufirewall/activity/LogDetailActivity;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 358
    invoke-static {}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfgetuid()I

    move-result v1

    invoke-static {p1, v1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$mgetLogData(Ldev/ukanth/ufirewall/activity/LogDetailActivity;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfputlogDataList(Ljava/util/List;)V

    .line 359
    invoke-static {}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfgetlogDataList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfputfullLogDataList(Ljava/util/List;)V

    .line 362
    :goto_0
    invoke-static {}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfgetlogDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfgetlogDataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 363
    invoke-static {}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfgetlogDataList()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ldev/ukanth/ufirewall/util/DateComparator;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/util/DateComparator;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 364
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$fgetrecyclerViewAdapter(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;

    move-result-object p1

    invoke-static {}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfgetlogDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->updateData(Ljava/util/List;)V

    .line 365
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 367
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while retrieving data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AFWall"

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

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

    .line 320
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public doProgress(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 387
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 388
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->doProgress(I)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 391
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 399
    throw p1

    :catch_0
    :cond_0
    :goto_0
    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 401
    invoke-static {v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$fgetmSwipeLayout(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 403
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 404
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$fgetrecyclerView(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 405
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$fgetmSwipeLayout(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setVisibility(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 406
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$fgetemptyView(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 407
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$fgetrecyclerViewAdapter(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 410
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$mupdateTitleWithLogCount(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 413
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$mupdateSummaryStatistics(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    .line 416
    invoke-static {}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfgetfullLogDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$sfgetfullLogDataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 417
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$msetupLoadMoreFunctionality(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 420
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$fgetmSwipeLayout(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setVisibility(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 421
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$fgetrecyclerView(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 422
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$fgetemptyView(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
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

    .line 320
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 335
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    sget v3, Ldev/ukanth/ufirewall/R$string;->loading_data:I

    .line 336
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    invoke-static {v2}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$mgetCount(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZIZ)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 337
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->doProgress(I)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    .line 378
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
    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 381
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

    .line 320
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->context:Landroid/content/Context;

    return-object p0
.end method
