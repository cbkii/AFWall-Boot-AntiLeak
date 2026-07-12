.class Lcom/topjohnwu/superuser/internal/ShellImpl;
.super Lcom/topjohnwu/superuser/Shell;
.source "ShellImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;,
        Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;,
        Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;
    }
.end annotation


# instance fields
.field private final STDERR:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

.field private final STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

.field private final STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

.field private final idle:Ljava/util/concurrent/locks/Condition;

.field private isRunningTask:Z

.field private final process:Ljava/lang/Process;

.field private final scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile status:I

.field private final tasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/topjohnwu/superuser/Shell$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$s0PUNn9LoGilzQm1QDsbRoEjcGo(Lcom/topjohnwu/superuser/internal/ShellImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->processTasks()V

    return-void
.end method

.method public static synthetic $r8$lambda$xuaTbFTKmBRsu7VqlthB6RS4_dk(Lcom/topjohnwu/superuser/internal/ShellImpl;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->shellCheck()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/topjohnwu/superuser/internal/BuilderImpl;Ljava/lang/Process;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/topjohnwu/superuser/Shell;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->idle:Ljava/util/concurrent/locks/Condition;

    .line 56
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->tasks:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->process:Ljava/lang/Process;

    .line 123
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    .line 124
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    .line 125
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-virtual {p2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDERR:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    .line 128
    new-instance p2, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/ShellImpl$$ExternalSyntheticLambda1;-><init>(Lcom/topjohnwu/superuser/internal/ShellImpl;)V

    invoke-direct {p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 129
    sget-object v0, Lcom/topjohnwu/superuser/internal/ShellImpl;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 132
    :try_start_0
    iget-wide v0, p1, Lcom/topjohnwu/superuser/internal/BuilderImpl;->timeout:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 143
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Shell check interrupted"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 141
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Shell check timeout"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 135
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_0

    .line 136
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 138
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Unknown ExecutionException"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :goto_0
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->release()V

    .line 147
    throw p1
.end method

.method private declared-synchronized exec0(Lcom/topjohnwu/superuser/Shell$Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    if-gez v0, :cond_0

    .line 243
    invoke-interface {p1}, Lcom/topjohnwu/superuser/Shell$Task;->shellDied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    .line 247
    invoke-static {v0}, Lcom/topjohnwu/superuser/ShellUtils;->cleanInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDERR:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    .line 248
    invoke-static {v0}, Lcom/topjohnwu/superuser/ShellUtils;->cleanInputStream(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    const/16 v1, 0xa

    .line 250
    invoke-virtual {v0, v1}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->write(I)V

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    .line 251
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDERR:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    .line 258
    invoke-interface {p1, v0, v1, v2}, Lcom/topjohnwu/superuser/Shell$Task;->run(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 253
    :catch_0
    :try_start_4
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->release()V

    .line 254
    invoke-interface {p1}, Lcom/topjohnwu/superuser/Shell$Task;->shellDied()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private processNextTask(Z)Lcom/topjohnwu/superuser/Shell$Task;
    .locals 3

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 272
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->tasks:Ljava/util/ArrayDeque;

    .line 274
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/topjohnwu/superuser/Shell$Task;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->idle:Ljava/util/concurrent/locks/Condition;

    .line 277
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 291
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 280
    :cond_0
    :try_start_1
    instance-of v2, v0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;

    if-eqz v2, :cond_1

    .line 281
    check-cast v0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 291
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    :try_start_2
    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->tasks:Ljava/util/ArrayDeque;

    .line 286
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->offerFirst(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 291
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 293
    sget-object p1, Lcom/topjohnwu/superuser/internal/ShellImpl;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/ShellImpl$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/internal/ShellImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v1

    :cond_2
    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 291
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 292
    throw p1
.end method

.method private processTasks()V
    .locals 1

    :goto_0
    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->processNextTask(Z)Lcom/topjohnwu/superuser/Shell$Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    :try_start_0
    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->exec0(Lcom/topjohnwu/superuser/Shell$Task;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method private release()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    .line 189
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->close0()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDERR:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    .line 190
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;->close0()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    .line 191
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;->close0()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->process:Ljava/lang/Process;

    .line 192
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    return-void
.end method

.method private shellCheck()Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "cd "

    :try_start_0
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->process:Ljava/lang/Process;

    .line 153
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    .line 154
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Created process has terminated"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    .line 160
    invoke-static {v1}, Lcom/topjohnwu/superuser/ShellUtils;->cleanInputStream(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDERR:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    .line 161
    invoke-static {v1}, Lcom/topjohnwu/superuser/ShellUtils;->cleanInputStream(Ljava/io/InputStream;)V

    .line 164
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_1
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    const-string v3, "echo SHELL_TEST\n"

    .line 166
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->write([B)V

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    .line 167
    invoke-virtual {v2}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->flush()V

    .line 168
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SHELL_TEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    const-string v3, "id\n"

    .line 172
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->write([B)V

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    .line 173
    invoke-virtual {v2}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->flush()V

    .line 174
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "uid=0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 177
    invoke-static {v2}, Lcom/topjohnwu/superuser/internal/Utils;->setConfirmedRootState(Z)V

    const-string v3, "user.dir"

    .line 179
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/topjohnwu/superuser/ShellUtils;->escapedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->write([B)V

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    .line 181
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 183
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 170
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Created process is not a shell"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 164
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    if-gez v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->release()V

    return-void
.end method

.method public execTask(Lcom/topjohnwu/superuser/Shell$Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 313
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;-><init>(Ljava/util/concurrent/locks/Condition;)V

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->tasks:Ljava/util/ArrayDeque;

    .line 317
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->await()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 323
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 325
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/internal/ShellImpl;->exec0(Lcom/topjohnwu/superuser/Shell$Task;)V

    .line 326
    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->processNextTask(Z)Lcom/topjohnwu/superuser/Shell$Task;

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 323
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 324
    throw p1
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    return v0
.end method

.method public isAlive()Z
    .locals 2

    iget v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->process:Ljava/lang/Process;

    .line 231
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    .line 233
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public newJob()Lcom/topjohnwu/superuser/Shell$Job;
    .locals 1

    .line 332
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellJob;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/ShellJob;-><init>(Lcom/topjohnwu/superuser/internal/ShellImpl;)V

    return-object v0
.end method

.method public submitTask(Lcom/topjohnwu/superuser/Shell$Task;)V
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 299
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->tasks:Ljava/util/ArrayDeque;

    .line 301
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z

    .line 304
    sget-object p1, Lcom/topjohnwu/superuser/internal/ShellImpl;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/ShellImpl$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/internal/ShellImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 307
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 308
    throw p1
.end method

.method public waitAndClose(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    const/4 v1, 0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 200
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->idle:Ljava/util/concurrent/locks/Condition;

    .line 202
    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 206
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return p1

    .line 204
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 206
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 207
    throw p1
.end method
