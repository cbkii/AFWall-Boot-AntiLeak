.class public Lcom/stericson/rootshell/execution/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;,
        Lcom/stericson/rootshell/execution/Command$CommandHandler;
    }
.end annotation


# instance fields
.field command:[Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field executing:Z

.field executionMonitor:Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;

.field exitCode:I

.field finished:Z

.field handlerEnabled:Z

.field id:I

.field protected javaCommand:Z

.field mHandler:Landroid/os/Handler;

.field terminated:Z

.field timeout:I

.field public totalOutput:I

.field public totalOutputProcessed:I

.field protected used:Z


# direct methods
.method public varargs constructor <init>(II[Ljava/lang/String;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->javaCommand:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->context:Landroid/content/Context;

    iput v0, p0, Lcom/stericson/rootshell/execution/Command;->totalOutput:I

    iput v0, p0, Lcom/stericson/rootshell/execution/Command;->totalOutputProcessed:I

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->executionMonitor:Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->used:Z

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->executing:Z

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->command:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->finished:Z

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->terminated:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stericson/rootshell/execution/Command;->handlerEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/stericson/rootshell/execution/Command;->exitCode:I

    iput v0, p0, Lcom/stericson/rootshell/execution/Command;->id:I

    .line 67
    sget v0, Lcom/stericson/rootshell/RootShell;->defaultCommandTimeout:I

    iput-object p3, p0, Lcom/stericson/rootshell/execution/Command;->command:[Ljava/lang/String;

    iput p1, p0, Lcom/stericson/rootshell/execution/Command;->id:I

    iput p2, p0, Lcom/stericson/rootshell/execution/Command;->timeout:I

    .line 110
    sget-boolean p1, Lcom/stericson/rootshell/RootShell;->handlerEnabled:Z

    invoke-direct {p0, p1}, Lcom/stericson/rootshell/execution/Command;->createHandler(Z)V

    return-void
.end method

.method public varargs constructor <init>(IZ[Ljava/lang/String;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->javaCommand:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->context:Landroid/content/Context;

    iput v0, p0, Lcom/stericson/rootshell/execution/Command;->totalOutput:I

    iput v0, p0, Lcom/stericson/rootshell/execution/Command;->totalOutputProcessed:I

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->executionMonitor:Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->used:Z

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->executing:Z

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->command:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->finished:Z

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->terminated:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stericson/rootshell/execution/Command;->handlerEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/stericson/rootshell/execution/Command;->exitCode:I

    iput v0, p0, Lcom/stericson/rootshell/execution/Command;->id:I

    .line 67
    sget v0, Lcom/stericson/rootshell/RootShell;->defaultCommandTimeout:I

    iput v0, p0, Lcom/stericson/rootshell/execution/Command;->timeout:I

    iput-object p3, p0, Lcom/stericson/rootshell/execution/Command;->command:[Ljava/lang/String;

    iput p1, p0, Lcom/stericson/rootshell/execution/Command;->id:I

    .line 94
    invoke-direct {p0, p2}, Lcom/stericson/rootshell/execution/Command;->createHandler(Z)V

    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->javaCommand:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->context:Landroid/content/Context;

    iput v0, p0, Lcom/stericson/rootshell/execution/Command;->totalOutput:I

    iput v0, p0, Lcom/stericson/rootshell/execution/Command;->totalOutputProcessed:I

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->executionMonitor:Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->used:Z

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->executing:Z

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->command:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->finished:Z

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->terminated:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stericson/rootshell/execution/Command;->handlerEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/stericson/rootshell/execution/Command;->exitCode:I

    iput v0, p0, Lcom/stericson/rootshell/execution/Command;->id:I

    .line 67
    sget v0, Lcom/stericson/rootshell/RootShell;->defaultCommandTimeout:I

    iput v0, p0, Lcom/stericson/rootshell/execution/Command;->timeout:I

    iput-object p2, p0, Lcom/stericson/rootshell/execution/Command;->command:[Ljava/lang/String;

    iput p1, p0, Lcom/stericson/rootshell/execution/Command;->id:I

    .line 79
    sget-boolean p1, Lcom/stericson/rootshell/RootShell;->handlerEnabled:Z

    invoke-direct {p0, p1}, Lcom/stericson/rootshell/execution/Command;->createHandler(Z)V

    return-void
.end method

.method private createHandler(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/stericson/rootshell/execution/Command;->handlerEnabled:Z

    .line 151
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "CommandHandler created"

    .line 152
    invoke-static {p1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 153
    new-instance p1, Lcom/stericson/rootshell/execution/Command$CommandHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/stericson/rootshell/execution/Command$CommandHandler;-><init>(Lcom/stericson/rootshell/execution/Command;Lcom/stericson/rootshell/execution/Command$CommandHandler-IA;)V

    iput-object p1, p0, Lcom/stericson/rootshell/execution/Command;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const-string p1, "CommandHandler not created"

    .line 155
    invoke-static {p1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 0

    return-void
.end method

.method protected final commandFinished()V
    .locals 5

    const-string v0, "Command "

    iget-boolean v1, p0, Lcom/stericson/rootshell/execution/Command;->terminated:Z

    if-nez v1, :cond_1

    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/stericson/rootshell/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/stericson/rootshell/execution/Command;->handlerEnabled:Z

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 133
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "action"

    const/4 v4, 0x2

    .line 134
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Command;->mHandler:Landroid/os/Handler;

    .line 136
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/stericson/rootshell/execution/Command;->id:I

    iget v2, p0, Lcom/stericson/rootshell/execution/Command;->exitCode:I

    .line 138
    invoke-virtual {p0, v1, v2}, Lcom/stericson/rootshell/execution/Command;->commandCompleted(II)V

    .line 141
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/stericson/rootshell/execution/Command;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " finished."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/stericson/rootshell/execution/Command;->finishCommand()V

    .line 143
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public commandOutput(ILjava/lang/String;)V
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Command"

    invoke-static {p2, p1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/stericson/rootshell/execution/Command;->totalOutputProcessed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/stericson/rootshell/execution/Command;->totalOutputProcessed:I

    return-void
.end method

.method public commandTerminated(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final finish()V
    .locals 1

    const-string v0, "Command finished at users request!"

    .line 161
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/stericson/rootshell/execution/Command;->commandFinished()V

    return-void
.end method

.method protected final finishCommand()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->executing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->finished:Z

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public final getCommand()Ljava/lang/String;
    .locals 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/stericson/rootshell/execution/Command;->command:[Ljava/lang/String;

    .line 175
    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const/16 v2, 0xa

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/stericson/rootshell/execution/Command;->command:[Ljava/lang/String;

    .line 180
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExitCode()I
    .locals 1

    iget v0, p0, Lcom/stericson/rootshell/execution/Command;->exitCode:I

    return v0
.end method

.method public final isExecuting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->executing:Z

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->finished:Z

    return v0
.end method

.method public final isHandlerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->handlerEnabled:Z

    return v0
.end method

.method protected final output(ILjava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/stericson/rootshell/execution/Command;->totalOutput:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/stericson/rootshell/execution/Command;->totalOutput:I

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/stericson/rootshell/execution/Command;->handlerEnabled:Z

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    .line 258
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "text"

    .line 259
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/stericson/rootshell/execution/Command;->mHandler:Landroid/os/Handler;

    .line 261
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected final setExitCode(I)V
    .locals 0

    .line 203
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/stericson/rootshell/execution/Command;->exitCode:I

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final startExecution()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->used:Z

    .line 210
    new-instance v1, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;

    invoke-direct {v1, p0, p0}, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;-><init>(Lcom/stericson/rootshell/execution/Command;Lcom/stericson/rootshell/execution/Command;)V

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Command;->executionMonitor:Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;

    .line 211
    invoke-virtual {v1, v0}, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;->setPriority(I)V

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Command;->executionMonitor:Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;

    .line 212
    invoke-virtual {v1}, Lcom/stericson/rootshell/execution/Command$ExecutionMonitor;->start()V

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Command;->executing:Z

    return-void
.end method

.method public final terminate()V
    .locals 1

    const-string v0, "Terminating command at users request!"

    .line 218
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    const-string v0, "Terminated at users request!"

    .line 219
    invoke-virtual {p0, v0}, Lcom/stericson/rootshell/execution/Command;->terminated(Ljava/lang/String;)V

    return-void
.end method

.method protected final terminate(Ljava/lang/String;)V
    .locals 1

    .line 224
    :try_start_0
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->closeAll()V

    const-string v0, "Terminating all shells."

    .line 225
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/stericson/rootshell/execution/Command;->terminated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final terminated(Ljava/lang/String;)V
    .locals 5

    const-string v0, "Command "

    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/stericson/rootshell/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/stericson/rootshell/execution/Command;->handlerEnabled:Z

    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 236
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "action"

    const/4 v4, 0x3

    .line 237
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "text"

    .line 238
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Command;->mHandler:Landroid/os/Handler;

    .line 240
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/stericson/rootshell/execution/Command;->id:I

    .line 242
    invoke-virtual {p0, v1, p1}, Lcom/stericson/rootshell/execution/Command;->commandTerminated(ILjava/lang/String;)V

    .line 245
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/stericson/rootshell/execution/Command;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " did not finish because it was terminated. Termination reason: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 246
    invoke-virtual {p0, p1}, Lcom/stericson/rootshell/execution/Command;->setExitCode(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/stericson/rootshell/execution/Command;->terminated:Z

    .line 248
    invoke-virtual {p0}, Lcom/stericson/rootshell/execution/Command;->finishCommand()V

    .line 249
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
