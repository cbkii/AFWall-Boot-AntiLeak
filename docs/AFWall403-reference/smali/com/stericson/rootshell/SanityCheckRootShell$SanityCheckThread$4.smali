.class Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;
.super Lcom/stericson/rootshell/execution/Command;
.source "SanityCheckRootShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _catch:Z

.field final synthetic this$1:Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;


# direct methods
.method varargs constructor <init>(Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;IZ[Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;->this$1:Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;

    .line 297
    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;->_catch:Z

    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 2

    iget-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;->this$1:Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;

    .line 339
    iget-object p1, p1, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->this$0:Lcom/stericson/rootshell/SanityCheckRootShell;

    monitor-enter p1

    const/4 p2, 0x1

    :try_start_0
    iput-boolean p2, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;->_catch:Z

    iget-object p2, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;->this$1:Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;

    const-string v0, "All tests complete."

    const/4 v1, 0x4

    .line 343
    invoke-static {p2, v1, v0}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->-$$Nest$mvisualUpdate(Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;->this$1:Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 344
    invoke-static {p2, v0, v1}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->-$$Nest$mvisualUpdate(Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :try_start_1
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->closeAllShells()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 353
    :try_start_2
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 356
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

    iget-boolean v0, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;->_catch:Z

    if-eqz v0, :cond_0

    const-string v0, "CAUGHT!!!"

    .line 306
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 309
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method

.method public commandTerminated(ILjava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;->this$1:Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;

    .line 316
    iget-object p1, p1, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->this$0:Lcom/stericson/rootshell/SanityCheckRootShell;

    monitor-enter p1

    const/4 p2, 0x1

    :try_start_0
    iput-boolean p2, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;->_catch:Z

    iget-object p2, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;->this$1:Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;

    const-string v0, "All tests complete."

    const/4 v1, 0x4

    .line 320
    invoke-static {p2, v1, v0}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->-$$Nest$mvisualUpdate(Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;->this$1:Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 321
    invoke-static {p2, v0, v1}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->-$$Nest$mvisualUpdate(Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :try_start_1
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->closeAllShells()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 330
    :try_start_2
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 333
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
