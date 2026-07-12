.class public final Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;
.super Ljava/lang/Object;
.source "QueryTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

.field queryResultCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field queryResultListCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field queryResultSingleCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field runResultCallbacksOnSameThread:Z


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    return-void
.end method


# virtual methods
.method public build()Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction<",
            "TTResult;>;"
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;)V

    return-object v0
.end method

.method public queryListResult(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;)Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback<",
            "TTResult;>;)",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder<",
            "TTResult;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->queryResultListCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;

    return-object p0
.end method

.method public queryResult(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;)Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback<",
            "TTResult;>;)",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder<",
            "TTResult;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->queryResultCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;

    return-object p0
.end method

.method public querySingleResult(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;)Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback<",
            "TTResult;>;)",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder<",
            "TTResult;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->queryResultSingleCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;

    return-object p0
.end method

.method public runResultCallbacksOnSameThread(Z)Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder<",
            "TTResult;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$Builder;->runResultCallbacksOnSameThread:Z

    return-object p0
.end method
