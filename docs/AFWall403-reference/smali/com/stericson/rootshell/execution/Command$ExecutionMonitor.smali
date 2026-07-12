.class Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;
.super Ljava/lang/Thread;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/rootshell/execution/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecutionMonitor"
.end annotation


# instance fields
.field private final command:Lcom/stericson/rootshell/execution/Command;

.field final synthetic this$0:Lcom/stericson/rootshell/execution/Command;


# direct methods
.method public constructor <init>(Lcom/stericson/rootshell/execution/Command;Lcom/stericson/rootshell/execution/Command;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/rootshell/execution/Command;

    .line 271
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;->command:Lcom/stericson/rootshell/execution/Command;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Timeout Exception has occurred for command: "

    const-string v1, "Exception: "

    const-string v2, "Command "

    iget-object v3, p0, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;->command:Lcom/stericson/rootshell/execution/Command;

    .line 277
    iget v3, v3, Lcom/stericson/rootshell/execution/Command;->timeout:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;->command:Lcom/stericson/rootshell/execution/Command;

    .line 279
    monitor-enter v3

    .line 281
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;->command:Lcom/stericson/rootshell/execution/Command;

    iget v2, v2, Lcom/stericson/rootshell/execution/Command;->id:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is waiting for: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;->command:Lcom/stericson/rootshell/execution/Command;

    iget v2, v2, Lcom/stericson/rootshell/execution/Command;->timeout:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;->command:Lcom/stericson/rootshell/execution/Command;

    .line 282
    iget v4, v2, Lcom/stericson/rootshell/execution/Command;->timeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 284
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;->command:Lcom/stericson/rootshell/execution/Command;

    .line 287
    invoke-virtual {v1}, Lcom/stericson/rootshell/execution/Command;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;->command:Lcom/stericson/rootshell/execution/Command;

    iget v0, v0, Lcom/stericson/rootshell/execution/Command;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/rootshell/execution/Command;

    const-string v1, "Timeout Exception"

    .line 289
    invoke-virtual {v0, v1}, Lcom/stericson/rootshell/execution/Command;->terminate(Ljava/lang/String;)V

    .line 291
    :cond_0
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-void
.end method
