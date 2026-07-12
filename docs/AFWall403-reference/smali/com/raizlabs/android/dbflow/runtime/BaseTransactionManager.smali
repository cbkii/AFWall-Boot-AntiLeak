.class public abstract Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;
.super Ljava/lang/Object;
.source "BaseTransactionManager.java"


# instance fields
.field private saveQueue:Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;

.field private final transactionQueue:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->transactionQueue:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;

    .line 21
    new-instance p1, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;

    invoke-direct {p1, p2}, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->saveQueue:Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;

    .line 22
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->checkQueue()V

    return-void
.end method


# virtual methods
.method public addTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->getQueue()Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;->add(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V

    return-void
.end method

.method public cancelTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->getQueue()Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;->cancel(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V

    return-void
.end method

.method public checkQueue()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->getQueue()Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;->startIfNotAlive()V

    return-void
.end method

.method public getQueue()Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->transactionQueue:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;

    return-object v0
.end method

.method public getSaveQueue()Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->saveQueue:Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;

    .line 28
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->saveQueue:Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;

    .line 29
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->logError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->saveQueue:Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;

    return-object v0
.end method

.method public stopQueue()V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->getQueue()Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;->quit()V

    return-void
.end method
