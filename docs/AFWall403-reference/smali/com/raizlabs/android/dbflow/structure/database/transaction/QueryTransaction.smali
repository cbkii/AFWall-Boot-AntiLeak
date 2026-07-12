.class public Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;
.super Ljava/lang/Object;
.source "QueryTransaction.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;,
        Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;,
        Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;,
        Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;"
    }
.end annotation


# instance fields
.field final modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field final queryResultCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field final queryResultListCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field final queryResultSingleCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field final runResultCallbacksOnSameThread:Z


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    .line 74
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->queryResultCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->queryResultCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;

    .line 75
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->queryResultListCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->queryResultListCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;

    .line 76
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->queryResultSingleCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->queryResultSingleCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;

    .line 77
    iget-boolean p1, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->runResultCallbacksOnSameThread:Z

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->runResultCallbacksOnSameThread:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 3

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    .line 82
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;->queryResults()Lcom/raizlabs/android/dbflow/sql/language/CursorResult;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->queryResultCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->runResultCallbacksOnSameThread:Z

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;->onQueryResult(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;Lcom/raizlabs/android/dbflow/sql/language/CursorResult;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->getTransactionHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$1;

    invoke-direct {v1, p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$1;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;Lcom/raizlabs/android/dbflow/sql/language/CursorResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->queryResultListCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->toListClose()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->runResultCallbacksOnSameThread:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->queryResultListCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;

    .line 99
    invoke-interface {v1, p0, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;->onListQueryResult(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;Ljava/util/List;)V

    goto :goto_1

    .line 101
    :cond_2
    invoke-static {}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->getTransactionHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$2;

    invoke-direct {v2, p0, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$2;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->queryResultSingleCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;

    if-eqz v0, :cond_5

    .line 111
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->toModelClose()Ljava/lang/Object;

    move-result-object p1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->runResultCallbacksOnSameThread:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->queryResultSingleCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;

    .line 113
    invoke-interface {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;->onSingleQueryResult(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;Ljava/lang/Object;)V

    goto :goto_2

    .line 115
    :cond_4
    invoke-static {}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->getTransactionHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$3;

    invoke-direct {v1, p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$3;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_2
    return-void
.end method
