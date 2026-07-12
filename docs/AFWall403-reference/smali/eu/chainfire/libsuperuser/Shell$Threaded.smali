.class public Leu/chainfire/libsuperuser/Shell$Threaded;
.super Leu/chainfire/libsuperuser/Shell$Interactive;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Threaded"
.end annotation


# static fields
.field private static threadCounter:I


# instance fields
.field private volatile closeEvenIfPooled:Z

.field private final handlerThread:Landroid/os/HandlerThread;

.field private final onCloseCalledSync:Ljava/lang/Object;

.field private volatile onClosedCalled:Z

.field private volatile onPoolRemoveCalled:Z

.field private final onPoolRemoveCalledSync:Ljava/lang/Object;

.field private final pooled:Z

.field private volatile reserved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)V
    .locals 1

    .line 2582
    invoke-static {}, Leu/chainfire/libsuperuser/Shell$Threaded;->createHandlerThread()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->setHandler(Landroid/os/Handler;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 2583
    invoke-virtual {p1, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->setDetectOpen(Z)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object p1

    .line 2584
    invoke-virtual {p1, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->setShellDiesOnSTDOUTERRClose(Z)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object p1

    .line 2582
    invoke-direct {p0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Interactive;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V

    .line 2566
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onCloseCalledSync:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onClosedCalled:Z

    .line 2568
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalledSync:Ljava/lang/Object;

    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->reserved:Z

    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->closeEvenIfPooled:Z

    .line 2588
    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    check-cast p1, Landroid/os/HandlerThread;

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->handlerThread:Landroid/os/HandlerThread;

    iput-boolean p3, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    return-void
.end method

.method static synthetic access$4800(Leu/chainfire/libsuperuser/Shell$Threaded;)Landroid/os/HandlerThread;
    .locals 0

    .line 2554
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->handlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$5000(Leu/chainfire/libsuperuser/Shell$Threaded;)Z
    .locals 0

    .line 2554
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Threaded;->isReserved()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    .locals 0

    .line 2554
    invoke-direct {p0, p1}, Leu/chainfire/libsuperuser/Shell$Threaded;->closeWhenIdle(Z)V

    return-void
.end method

.method static synthetic access$5200(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    .locals 0

    .line 2554
    invoke-direct {p0, p1}, Leu/chainfire/libsuperuser/Shell$Threaded;->setReserved(Z)V

    return-void
.end method

.method private closeWhenIdle(Z)V
    .locals 3

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalledSync:Ljava/lang/Object;

    .line 2653
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    .line 2656
    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Pool;->access$4700(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    .line 2658
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->closeEvenIfPooled:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 2663
    :cond_1
    :goto_0
    invoke-super {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeWhenIdle()V

    return-void
.end method

.method private static createHandlerThread()Landroid/os/Handler;
    .locals 3

    .line 2576
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shell.Threaded#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Leu/chainfire/libsuperuser/Shell$Threaded;->incThreadCounter()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2577
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2578
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method private static incThreadCounter()I
    .locals 3

    const-class v0, Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 2557
    monitor-enter v0

    :try_start_0
    sget v1, Leu/chainfire/libsuperuser/Shell$Threaded;->threadCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Leu/chainfire/libsuperuser/Shell$Threaded;->threadCounter:I

    .line 2560
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2561
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isReserved()Z
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->reserved:Z

    return v0
.end method

.method private setReserved(Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->reserved:Z

    return-void
.end method


# virtual methods
.method public ac()Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;
    .locals 1

    .line 2728
    instance-of v0, p0, Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;

    if-eqz v0, :cond_0

    .line 2729
    move-object v0, p0

    check-cast v0, Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    if-eqz v0, :cond_0

    .line 2619
    invoke-super {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeWhenIdle()V

    goto :goto_0

    .line 2621
    :cond_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Threaded;->closeWhenIdle()V

    :goto_0
    return-void
.end method

.method protected closeImmediately(Z)V
    .locals 2

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalledSync:Ljava/lang/Object;

    .line 2629
    monitor-enter p1

    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    if-nez v1, :cond_0

    .line 2631
    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Pool;->access$4600(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    :cond_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->closeEvenIfPooled:Z

    if-eqz v1, :cond_1

    .line 2634
    invoke-super {p0, v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately(Z)V

    .line 2636
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalledSync:Ljava/lang/Object;

    .line 2638
    monitor-enter v1

    :try_start_1
    iget-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    if-nez p1, :cond_3

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    .line 2641
    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Pool;->access$4700(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    .line 2643
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x0

    .line 2644
    invoke-super {p0, p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately(Z)V

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 2643
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 2647
    :cond_4
    invoke-super {p0, p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately(Z)V

    :goto_0
    return-void
.end method

.method public closeWhenIdle()V
    .locals 1

    const/4 v0, 0x0

    .line 2668
    invoke-direct {p0, v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->closeWhenIdle(Z)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2596
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->closed:Z

    .line 2597
    :cond_0
    invoke-super {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->finalize()V

    return-void
.end method

.method protected onClosed()V
    .locals 3

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalledSync:Ljava/lang/Object;

    .line 2680
    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    .line 2683
    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Pool;->access$4700(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    .line 2685
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onCloseCalledSync:Ljava/lang/Object;

    .line 2688
    monitor-enter v0

    :try_start_1
    iget-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onClosedCalled:Z

    if-eqz v2, :cond_2

    .line 2689
    monitor-exit v0

    return-void

    :cond_2
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onClosedCalled:Z

    .line 2691
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2693
    invoke-super {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->onClosed()V

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->handlerThread:Landroid/os/HandlerThread;

    .line 2695
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 2696
    :cond_3
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->handler:Landroid/os/Handler;

    new-instance v1, Leu/chainfire/libsuperuser/Shell$Threaded$1;

    invoke-direct {v1, p0}, Leu/chainfire/libsuperuser/Shell$Threaded$1;-><init>(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1
    move-exception v1

    .line 2691
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method declared-synchronized wasPoolRemoveCalled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2672
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
