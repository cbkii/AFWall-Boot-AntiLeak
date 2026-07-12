.class public Lcom/raizlabs/android/dbflow/list/FlowQueryList;
.super Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;
.source "FlowQueryList.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;",
        "Ljava/util/List<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator<",
        "TTModel;>;"
    }
.end annotation


# static fields
.field private static final REFRESH_HANDLER:Landroid/os/Handler;


# instance fields
.field private changeInTransaction:Z

.field private final deleteModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

.field private final internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final internalErrorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

.field private final internalSuccessCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

.field private pendingRefresh:Z

.field private final refreshRunnable:Ljava/lang/Runnable;

.field private final saveModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

.field private transact:Z

.field private final updateModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->REFRESH_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->access$000(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->access$000(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "com.dbflow.authority"

    .line 64
    :goto_0
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->transact:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->changeInTransaction:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->pendingRefresh:Z

    .line 604
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$1;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$1;-><init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->saveModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    .line 612
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$2;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$2;-><init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->updateModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    .line 620
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$3;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$3;-><init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->deleteModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    .line 628
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$4;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$4;-><init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalErrorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 638
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$5;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$5;-><init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalSuccessCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 653
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$6;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$6;-><init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->refreshRunnable:Ljava/lang/Runnable;

    .line 67
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->access$100(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->transact:Z

    .line 68
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->access$200(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->changeInTransaction:Z

    .line 69
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->access$300(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 70
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->access$400(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 71
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->access$900(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;-><init>(Ljava/lang/Class;)V

    .line 72
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->access$800(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->cursor(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    move-result-object v0

    .line 73
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->access$700(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->cacheModels(Z)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    move-result-object v0

    .line 74
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->access$600(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelQueriable(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    move-result-object v0

    .line 75
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->access$500(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelCache(Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->build()Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;Lcom/raizlabs/android/dbflow/list/FlowQueryList$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;-><init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->isInTransaction:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/raizlabs/android/dbflow/list/FlowQueryList;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->changeInTransaction:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/raizlabs/android/dbflow/list/FlowQueryList;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->pendingRefresh:Z

    return p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTModel;)V"
        }
    .end annotation

    .line 217
    invoke-virtual {p0, p2}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 229
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->saveModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    .line 231
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object p1

    .line 230
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalErrorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 232
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalSuccessCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 233
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object p1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->transact:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->executeSync()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TTModel;>;)Z"
        }
    .end annotation

    .line 256
    invoke-virtual {p0, p2}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TTModel;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 271
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->saveModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    .line 273
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->addAll(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object p1

    .line 272
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalErrorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 274
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalSuccessCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 275
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object p1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->transact:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->executeSync()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public addOnCursorRefreshListener(Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener<",
            "TTModel;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 89
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->addOnCursorRefreshListener(Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener;)V

    return-void
.end method

.method public changeInTransaction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->changeInTransaction:Z

    return v0
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 290
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;

    .line 292
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->delete()Lcom/raizlabs/android/dbflow/sql/language/Delete;

    move-result-object v2

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/Delete;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)V

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalErrorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 293
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalSuccessCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 294
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->transact:Z

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->executeSync()V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 601
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->close()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 314
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 316
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getInstanceAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->exists(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 330
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 332
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 333
    invoke-virtual {p0, v1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public cursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 356
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cursorList()Lcom/raizlabs/android/dbflow/list/FlowCursorList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    return-object v0
.end method

.method public endTransactionAndNotify()V
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->changeInTransaction:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->changeInTransaction:Z

    .line 203
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->refresh()V

    .line 205
    :cond_0
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->endTransactionAndNotify()V

    return-void
.end method

.method public error()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTModel;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    int-to-long v1, p1

    .line 370
    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getItem(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCopy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 129
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCount()J
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 344
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method getInstanceAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/InstanceAdapter<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 162
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getInstanceAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getItem(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTModel;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 350
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getItem(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 157
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 375
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "We cannot determine which index in the table this item exists at efficiently"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 381
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorIterator<",
            "TTModel;>;"
        }
    .end annotation

    .line 391
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;-><init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;)V

    return-object v0
.end method

.method public iterator(IJ)Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorIterator<",
            "TTModel;>;"
        }
    .end annotation

    .line 397
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;-><init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;IJ)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->iterator()Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 402
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "We cannot determine which index in the table this item exists at efficiently"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TTModel;>;"
        }
    .end annotation

    .line 413
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;-><init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TTModel;>;"
        }
    .end annotation

    .line 424
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;-><init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;I)V

    return-object v0
.end method

.method public newBuilder()Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;-><init>(Lcom/raizlabs/android/dbflow/list/FlowCursorList;Lcom/raizlabs/android/dbflow/list/FlowQueryList$1;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 172
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 173
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->changeInTransaction:Z

    .line 174
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->changeInTransaction(Z)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->transact:Z

    .line 175
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->transact(Z)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onChange(Z)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onChange(Z)V

    .line 106
    iget-boolean p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->isInTransaction:Z

    if-nez p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->refreshAsync()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->changeInTransaction:Z

    :goto_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 117
    iget-boolean p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->isInTransaction:Z

    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->refreshAsync()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->changeInTransaction:Z

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 182
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->refresh()V

    return-void
.end method

.method public refreshAsync()V
    .locals 2

    .line 190
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->pendingRefresh:Z

    if-eqz v0, :cond_0

    .line 192
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->pendingRefresh:Z

    .line 195
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->REFRESH_HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->refreshRunnable:Ljava/lang/Runnable;

    .line 196
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 195
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerForContentChanges(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 85
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->registerForContentChanges(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public registerForContentChanges(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 98
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This method is not to be used in the FlowQueryList. We should only ever receive notifications for one class here. Call registerForContentChanges(Context) instead"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTModel;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    int-to-long v1, p1

    .line 437
    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getItem(J)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 439
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->deleteModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    .line 441
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object v1

    .line 440
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalErrorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 442
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalSuccessCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 443
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->transact:Z

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->executeSync()V

    :goto_0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 466
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 468
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->deleteModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    .line 470
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object p1

    .line 469
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalErrorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 471
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalSuccessCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 472
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object p1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->transact:Z

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->executeSync()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 498
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->deleteModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    .line 500
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->addAll(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object p1

    .line 499
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalErrorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 501
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalSuccessCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 502
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object p1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->transact:Z

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->executeSync()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public removeOnCursorRefreshListener(Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener<",
            "TTModel;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 93
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->removeOnCursorRefreshListener(Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener;)V

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 522
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getAll()Ljava/util/List;

    move-result-object v0

    .line 523
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 524
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p1

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->deleteModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    invoke-direct {v1, v0, v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    .line 526
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object v0

    .line 525
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalErrorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 527
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalSuccessCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 528
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object p1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->transact:Z

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->executeSync()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTModel;)TTModel;"
        }
    .end annotation

    .line 547
    invoke-virtual {p0, p2}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->set(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)TTModel;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 558
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->updateModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    .line 560
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    move-result-object v1

    .line 561
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object v1

    .line 559
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalErrorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 562
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalSuccessCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 563
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->transact:Z

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->executeSync()V

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 575
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getCount()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 581
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getAll()Ljava/util/List;

    move-result-object v0

    .line 582
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public success()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 588
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getAll()Ljava/util/List;

    move-result-object v0

    .line 589
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->internalCursorList:Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    .line 595
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getAll()Ljava/util/List;

    move-result-object v0

    .line 596
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public transact()Z
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->transact:Z

    return v0
.end method
