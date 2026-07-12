.class Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/activity/LogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectLog"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fromSwipeRefresh:Z

.field loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field final synthetic this$0:Ldev/ukanth/ufirewall/activity/LogActivity;


# direct methods
.method public static synthetic $r8$lambda$f-IylHA9vJ2jcTN8EiMais-Ws9Y(Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->lambda$execute$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$iyUD12cLKmHM7cL1l68ZYbdd9hc(Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->lambda$run$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ldev/ukanth/ufirewall/activity/LogActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->context:Landroid/content/Context;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->fromSwipeRefresh:Z

    return-void
.end method

.method private synthetic lambda$execute$0()V
    .locals 1

    .line 197
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->onPreExecute()V

    .line 198
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 199
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 200
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private synthetic lambda$run$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 217
    invoke-static {v0}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$mgetLogData(Ldev/ukanth/ufirewall/activity/LogActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 220
    invoke-static {v1, v0, p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$mupdateMap(Ldev/ukanth/ufirewall/activity/LogActivity;Ljava/util/List;Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;)Ljava/util/List;

    move-result-object v0

    .line 221
    new-instance v1, Ldev/ukanth/ufirewall/util/DateComparator;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/util/DateComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 222
    invoke-static {v1}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetrecyclerViewAdapter(Ldev/ukanth/ufirewall/activity/LogActivity;)Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->updateData(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 223
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 225
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while retrieving data"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFWall"

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public execute()V
    .locals 2

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 196
    new-instance v1, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 236
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 244
    throw p1

    :catch_0
    :cond_0
    :goto_0
    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 245
    invoke-static {v1}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetrecyclerView(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 246
    invoke-static {v0}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetrecyclerView(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    invoke-static {v1}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetrecyclerViewAdapter(Ldev/ukanth/ufirewall/activity/LogActivity;)Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 248
    invoke-static {v0}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetmSwipeLayout(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 251
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetrecyclerViewAdapter(Ldev/ukanth/ufirewall/activity/LogActivity;)Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 252
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetrecyclerView(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 253
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetemptyView(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 255
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetrecyclerView(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 256
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetemptyView(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 259
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetmSwipeLayout(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setVisibility(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 261
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetrecyclerView(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    .line 262
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->-$$Nest$fgetrecyclerView(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->fromSwipeRefresh:Z

    if-eqz v0, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    sget v3, Ldev/ukanth/ufirewall/R$string;->working:I

    .line 210
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/activity/LogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->this$0:Ldev/ukanth/ufirewall/activity/LogActivity;

    sget v3, Ldev/ukanth/ufirewall/R$string;->loading_data:I

    .line 212
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/activity/LogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 213
    invoke-virtual {v0, v2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->loadDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public run()V
    .locals 3

    .line 267
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    .line 268
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 269
    new-instance v2, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setFromSwipeRefresh(Z)Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;
    .locals 0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->fromSwipeRefresh:Z

    return-object p0
.end method
