.class public Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;
.super Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;
.source "AsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject<",
        "Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery<",
        "TTModel;>;>;"
    }
.end annotation


# instance fields
.field private final modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private queryResultCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private queryResultListCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private queryResultSingleCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 59
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;->queryResultCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;

    .line 60
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->queryResult(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;)Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;->queryResultListCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;

    .line 61
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->queryListResult(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;)Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;->queryResultSingleCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;

    .line 62
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->querySingleResult(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;)Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;->executeTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)V

    return-void
.end method

.method public getTable()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    .line 70
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;->getTable()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public queryListResultCallback(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;)Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;->queryResultListCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;

    return-object p0
.end method

.method public queryResultCallback(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;)Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;->queryResultCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;

    return-object p0
.end method

.method public querySingleResultCallback(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;)Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;->queryResultSingleCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;

    return-object p0
.end method
