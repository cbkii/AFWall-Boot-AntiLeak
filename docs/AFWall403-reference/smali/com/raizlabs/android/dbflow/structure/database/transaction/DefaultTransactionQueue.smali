.class public Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;
.super Ljava/lang/Thread;
.source "DefaultTransactionQueue.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;


# instance fields
.field private isQuitting:Z

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->isQuitting:Z

    .line 29
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public add(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 61
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 62
    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 63
    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 65
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

.method public cancel(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 75
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 76
    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 77
    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 79
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

.method public cancel(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 89
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 90
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 91
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    .line 93
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->name()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 97
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public quit()V
    .locals 1

    .line 119
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->isQuitting:Z

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->interrupt()V

    return-void

    :catchall_0
    move-exception v0

    .line 121
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .line 35
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/16 v0, 0xa

    .line 36
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->isQuitting:Z

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->executeSync()V

    goto :goto_0

    .line 42
    :catch_0
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->isQuitting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 44
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 46
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    .line 46
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 49
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public startIfNotAlive()V
    .locals 2

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 105
    :try_start_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    :try_start_2
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->E:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v1, v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/Throwable;)V

    .line 111
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
