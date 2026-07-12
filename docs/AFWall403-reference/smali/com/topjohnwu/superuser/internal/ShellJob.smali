.class Lcom/topjohnwu/superuser/internal/ShellJob;
.super Lcom/topjohnwu/superuser/internal/JobTask;
.source "ShellJob.java"


# instance fields
.field private final shell:Lcom/topjohnwu/superuser/internal/ShellImpl;


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/internal/ShellImpl;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/JobTask;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellJob;->shell:Lcom/topjohnwu/superuser/internal/ShellImpl;

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

    .line 59
    new-instance v0, Lcom/topjohnwu/superuser/internal/ResultFuture;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/ResultFuture;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellJob;->callback:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellJob;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellJob;->shell:Lcom/topjohnwu/superuser/internal/ShellImpl;

    .line 62
    invoke-virtual {v1, p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->submitTask(Lcom/topjohnwu/superuser/Shell$Task;)V

    return-object v0
.end method

.method public exec()Lcom/topjohnwu/superuser/Shell$Result;
    .locals 2

    .line 40
    new-instance v0, Lcom/topjohnwu/superuser/internal/ResultHolder;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/ResultHolder;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellJob;->callback:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellJob;->callbackExecutor:Ljava/util/concurrent/Executor;

    :try_start_0
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellJob;->shell:Lcom/topjohnwu/superuser/internal/ShellImpl;

    .line 44
    invoke-virtual {v1, p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->execTask(Lcom/topjohnwu/superuser/Shell$Task;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ResultHolder;->getResult()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellJob;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 52
    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/ShellJob;->callback:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellJob;->shell:Lcom/topjohnwu/superuser/internal/ShellImpl;

    .line 53
    invoke-virtual {p1, p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->submitTask(Lcom/topjohnwu/superuser/Shell$Task;)V

    return-void
.end method
