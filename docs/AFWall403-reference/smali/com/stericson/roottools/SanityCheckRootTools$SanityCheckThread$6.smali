.class Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;
.super Lcom/stericson/rootshell/execution/Command;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _catch:Z

.field final synthetic this$1:Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;


# direct methods
.method varargs constructor <init>(Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;IZ[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;->this$1:Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;

    .line 358
    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;->_catch:Z

    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 2

    iget-object p1, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;->this$1:Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;

    .line 392
    iget-object p1, p1, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->this$0:Lcom/stericson/roottools/SanityCheckRootTools;

    monitor-enter p1

    const/4 p2, 0x1

    :try_start_0
    iput-boolean p2, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;->_catch:Z

    iget-object p2, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;->this$1:Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;

    const-string v0, "All tests complete."

    const/4 v1, 0x4

    .line 395
    invoke-static {p2, v1, v0}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->-$$Nest$mvisualUpdate(Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;->this$1:Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 396
    invoke-static {p2, v0, v1}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->-$$Nest$mvisualUpdate(Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :try_start_1
    invoke-static {}, Lcom/stericson/roottools/RootTools;->closeAllShells()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 402
    :try_start_2
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 405
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public commandOutput(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;->_catch:Z

    if-eqz v0, :cond_0

    const-string v0, "CAUGHT!!!"

    .line 365
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 368
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method

.method public commandTerminated(ILjava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;->this$1:Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;

    .line 374
    iget-object p1, p1, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->this$0:Lcom/stericson/roottools/SanityCheckRootTools;

    monitor-enter p1

    const/4 p2, 0x1

    :try_start_0
    iput-boolean p2, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;->_catch:Z

    iget-object p2, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;->this$1:Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;

    const-string v0, "All tests complete."

    const/4 v1, 0x4

    .line 377
    invoke-static {p2, v1, v0}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->-$$Nest$mvisualUpdate(Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;->this$1:Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 378
    invoke-static {p2, v0, v1}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->-$$Nest$mvisualUpdate(Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :try_start_1
    invoke-static {}, Lcom/stericson/roottools/RootTools;->closeAllShells()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 384
    :try_start_2
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 387
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
