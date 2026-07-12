.class public final Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;,
        Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;,
        Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;
    }
.end annotation


# static fields
.field private static TRANSACTION_HANDLER:Landroid/os/Handler;


# instance fields
.field final databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

.field final errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

.field final name:Ljava/lang/String;

.field final runCallbacksOnSameThread:Z

.field final shouldRunInTransaction:Z

.field final successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

.field final transaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 71
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 72
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 73
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->transaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->transaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;

    .line 74
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->name:Ljava/lang/String;

    .line 75
    iget-boolean v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->shouldRunInTransaction:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->shouldRunInTransaction:Z

    .line 76
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->access$000(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->runCallbacksOnSameThread:Z

    return-void
.end method

.method static getTransactionHandler()Landroid/os/Handler;
    .locals 2

    sget-object v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->TRANSACTION_HANDLER:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->TRANSACTION_HANDLER:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->TRANSACTION_HANDLER:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 110
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getTransactionManager()Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->cancelTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V

    return-void
.end method

.method public error()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    return-object v0
.end method

.method public execute()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 103
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getTransactionManager()Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->addTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V

    return-void
.end method

.method public executeSync()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->shouldRunInTransaction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->transaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;

    .line 121
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->executeTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->transaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 123
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;->execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    :goto_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->runCallbacksOnSameThread:Z

    if-eqz v1, :cond_1

    .line 127
    invoke-interface {v0, p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;->onSuccess(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V

    goto :goto_1

    .line 129
    :cond_1
    invoke-static {}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->getTransactionHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$1;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$1;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 138
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->logError(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->runCallbacksOnSameThread:Z

    if-eqz v2, :cond_2

    .line 141
    invoke-interface {v1, p0, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;->onError(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 143
    :cond_2
    invoke-static {}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->getTransactionHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$2;

    invoke-direct {v2, p0, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$2;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void

    .line 151
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An exception occurred while executing a transaction"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;
    .locals 3

    .line 158
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->transaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 159
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 160
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->name:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->name(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->shouldRunInTransaction:Z

    .line 162
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->shouldRunInTransaction(Z)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->runCallbacksOnSameThread:Z

    .line 163
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->runCallbacksOnSameThread(Z)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public success()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    return-object v0
.end method

.method public transaction()Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->transaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;

    return-object v0
.end method
