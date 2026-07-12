.class Lcom/topjohnwu/superuser/internal/ResultFuture;
.super Lcom/topjohnwu/superuser/internal/ResultHolder;
.source "ResultFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/topjohnwu/superuser/internal/ResultHolder;",
        "Ljava/util/concurrent/Future<",
        "Lcom/topjohnwu/superuser/Shell$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ResultHolder;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 4

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/ResultFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 40
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get()Lcom/topjohnwu/superuser/Shell$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 56
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/ResultFuture;->getResult()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/topjohnwu/superuser/Shell$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 62
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/ResultFuture;->getResult()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/ResultFuture;->get()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/ResultFuture;->get(JLjava/util/concurrent/TimeUnit;)Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 5

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onResult(Lcom/topjohnwu/superuser/Shell$Result;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/topjohnwu/superuser/internal/ResultHolder;->onResult(Lcom/topjohnwu/superuser/Shell$Result;)V

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/ResultFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 35
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
