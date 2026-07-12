.class public Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;
.super Ljava/lang/Thread;
.source "DBBatchSaveQueue.java"


# static fields
.field private static final MODEL_SAVE_SIZE:I = 0x32

.field private static final sMODEL_SAVE_CHECK_TIME:I = 0x7530


# instance fields
.field private databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

.field private emptyTransactionListener:Ljava/lang/Runnable;

.field private final errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

.field private errorListener:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

.field private isQuitting:Z

.field private modelSaveCheckTime:J

.field private modelSaveSize:I

.field private final modelSaver:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

.field private final models:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

.field private successListener:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 2

    const-string v0, "DBBatchSaveQueue"

    .line 64
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x32

    iput v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->modelSaveSize:I

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->modelSaveCheckTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->isQuitting:Z

    .line 236
    new-instance v0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue$1;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue$1;-><init>(Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->modelSaver:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    .line 249
    new-instance v0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue$2;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue$2;-><init>(Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 258
    new-instance v0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue$3;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue$3;-><init>(Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->successListener:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    return-object p0
.end method

.method static synthetic access$100(Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->errorListener:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 165
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 166
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->modelSaveSize:I

    if-le p1, v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->interrupt()V

    .line 171
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 178
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 179
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->modelSaveSize:I

    if-le p1, v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->interrupt()V

    .line 184
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addAll2(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 191
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->modelSaveSize:I

    if-le p1, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->interrupt()V

    .line 197
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public purgeQueue()V
    .locals 0

    .line 158
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->interrupt()V

    return-void
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->isQuitting:Z

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 204
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 206
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 214
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 216
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAll2(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 224
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 226
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 4

    .line 119
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 120
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/16 v0, 0xa

    .line 121
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 124
    monitor-enter v0

    .line 125
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->models:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 129
    new-instance v2, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->modelSaver:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    invoke-direct {v2, v3}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    .line 131
    invoke-virtual {v2, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->addAll(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 133
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 134
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->emptyTransactionListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 138
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    :try_start_1
    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->modelSaveCheckTime:J

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 145
    :catch_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->I:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string v1, "DBRequestQueue Batch interrupted to start saving"

    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->isQuitting:Z

    if-eqz v0, :cond_0

    return-void

    :catchall_0
    move-exception v1

    .line 127
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setEmptyTransactionListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->emptyTransactionListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setErrorListener(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->errorListener:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    return-void
.end method

.method public setModelSaveCheckTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->modelSaveCheckTime:J

    return-void
.end method

.method public setModelSaveSize(I)V
    .locals 0

    iput p1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->modelSaveSize:I

    return-void
.end method

.method public setSuccessListener(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->successListener:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    return-void
.end method
