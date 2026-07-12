.class Lcom/topjohnwu/superuser/internal/PendingJob;
.super Lcom/topjohnwu/superuser/internal/JobTask;
.source "PendingJob.java"


# instance fields
.field private retryTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$41bYW0wqu4rVphc95Heg7AvwZ7I(Lcom/topjohnwu/superuser/internal/PendingJob;)V
    .locals 0

    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/PendingJob;->exec0()V

    return-void
.end method

.method public static synthetic $r8$lambda$5rU62fRlNErOLbMhP59AK0HOOfA(Lcom/topjohnwu/superuser/internal/PendingJob;)V
    .locals 0

    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/PendingJob;->submit0()V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/JobTask;-><init>()V

    .line 36
    sget-object v0, Lcom/topjohnwu/superuser/internal/PendingJob;->UNSET_LIST:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/PendingJob;->to(Ljava/util/List;)Lcom/topjohnwu/superuser/Shell$Job;

    return-void
.end method

.method private exec0()V
    .locals 1

    .line 53
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/internal/MainShell;->get()Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v0
    :try_end_0
    .catch Lcom/topjohnwu/superuser/NoShellException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->execTask(Lcom/topjohnwu/superuser/Shell$Task;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 55
    :catch_1
    invoke-super {p0}, Lcom/topjohnwu/superuser/internal/JobTask;->shellDied()V

    return-void
.end method

.method private submit0()V
    .locals 2

    .line 75
    new-instance v0, Lcom/topjohnwu/superuser/internal/PendingJob$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/PendingJob$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/internal/PendingJob;)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/topjohnwu/superuser/internal/MainShell;->get(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$GetShellCallback;)V

    return-void
.end method


# virtual methods
.method public enqueue()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/topjohnwu/superuser/Shell$Result;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/topjohnwu/superuser/internal/PendingJob$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/PendingJob$$ExternalSyntheticLambda2;-><init>(Lcom/topjohnwu/superuser/internal/PendingJob;)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/PendingJob;->retryTask:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/topjohnwu/superuser/internal/ResultFuture;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/ResultFuture;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/PendingJob;->callback:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/topjohnwu/superuser/internal/PendingJob;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 88
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/PendingJob;->submit0()V

    return-object v0
.end method

.method public exec()Lcom/topjohnwu/superuser/Shell$Result;
    .locals 2

    .line 66
    new-instance v0, Lcom/topjohnwu/superuser/internal/PendingJob$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/PendingJob$$ExternalSyntheticLambda1;-><init>(Lcom/topjohnwu/superuser/internal/PendingJob;)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/PendingJob;->retryTask:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Lcom/topjohnwu/superuser/internal/ResultHolder;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/ResultHolder;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/PendingJob;->callback:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/topjohnwu/superuser/internal/PendingJob;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 70
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/PendingJob;->exec0()V

    .line 71
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ResultHolder;->getResult()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$submit0$0$com-topjohnwu-superuser-internal-PendingJob(Lcom/topjohnwu/superuser/Shell;)V
    .locals 0

    .line 76
    check-cast p1, Lcom/topjohnwu/superuser/internal/ShellImpl;

    .line 77
    invoke-virtual {p1, p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->submitTask(Lcom/topjohnwu/superuser/Shell$Task;)V

    return-void
.end method

.method public shellDied()V
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/PendingJob;->retryTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/topjohnwu/superuser/internal/PendingJob;->retryTask:Ljava/lang/Runnable;

    .line 44
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-super {p0}, Lcom/topjohnwu/superuser/internal/JobTask;->shellDied()V

    :goto_0
    return-void
.end method

.method public submit(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V
    .locals 1

    .line 94
    new-instance v0, Lcom/topjohnwu/superuser/internal/PendingJob$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/PendingJob$$ExternalSyntheticLambda2;-><init>(Lcom/topjohnwu/superuser/internal/PendingJob;)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/PendingJob;->retryTask:Ljava/lang/Runnable;

    .line 95
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/PendingJob;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 96
    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/PendingJob;->callback:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    .line 97
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/PendingJob;->submit0()V

    return-void
.end method
