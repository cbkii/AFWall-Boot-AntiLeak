.class public Leu/chainfire/libsuperuser/StreamGobbler;
.super Ljava/lang/Thread;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;,
        Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    }
.end annotation


# static fields
.field private static threadCounter:I


# instance fields
.field private volatile active:Z

.field private final inputStream:Ljava/io/InputStream;

.field private final lineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private final reader:Ljava/io/BufferedReader;

.field private final shell:Ljava/lang/String;

.field private final streamClosedListener:Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

.field private final writer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Gobbler#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Leu/chainfire/libsuperuser/StreamGobbler;->incThreadCounter()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    iput-object p1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->shell:Ljava/lang/String;

    iput-object p2, p0, Leu/chainfire/libsuperuser/StreamGobbler;->inputStream:Ljava/io/InputStream;

    .line 111
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->reader:Ljava/io/BufferedReader;

    iput-object p3, p0, Leu/chainfire/libsuperuser/StreamGobbler;->lineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    iput-object p4, p0, Leu/chainfire/libsuperuser/StreamGobbler;->streamClosedListener:Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

    const/4 p1, 0x0

    iput-object p1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->writer:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Gobbler#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Leu/chainfire/libsuperuser/StreamGobbler;->incThreadCounter()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    iput-object p1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->shell:Ljava/lang/String;

    iput-object p2, p0, Leu/chainfire/libsuperuser/StreamGobbler;->inputStream:Ljava/io/InputStream;

    .line 89
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->reader:Ljava/io/BufferedReader;

    iput-object p3, p0, Leu/chainfire/libsuperuser/StreamGobbler;->writer:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->lineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    iput-object p1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->streamClosedListener:Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

    return-void
.end method

.method private static incThreadCounter()I
    .locals 3

    const-class v0, Leu/chainfire/libsuperuser/StreamGobbler;

    .line 33
    monitor-enter v0

    :try_start_0
    sget v1, Leu/chainfire/libsuperuser/StreamGobbler;->threadCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Leu/chainfire/libsuperuser/StreamGobbler;->threadCounter:I

    .line 36
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOnLineListener()Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 1

    iget-object v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->lineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 207
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    xor-int/lit8 v0, v0, 0x1

    .line 208
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 209
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeGobbling()V
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    if-nez v0, :cond_0

    .line 165
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 168
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 7

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Leu/chainfire/libsuperuser/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 124
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 125
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "[%s] %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Leu/chainfire/libsuperuser/StreamGobbler;->shell:Ljava/lang/String;

    aput-object v6, v5, v1

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/libsuperuser/Debug;->logOutput(Ljava/lang/String;)V

    iget-object v3, p0, Leu/chainfire/libsuperuser/StreamGobbler;->writer:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 126
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Leu/chainfire/libsuperuser/StreamGobbler;->lineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    if-eqz v3, :cond_2

    .line 127
    invoke-interface {v3, v2}, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-boolean v2, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    if-nez v2, :cond_0

    .line 129
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v2, 0x80

    .line 131
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 135
    :catch_0
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    nop

    iget-object v2, p0, Leu/chainfire/libsuperuser/StreamGobbler;->streamClosedListener:Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

    if-eqz v2, :cond_3

    .line 142
    invoke-interface {v2}, Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;->onStreamClosed()V

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    :try_start_4
    iget-object v1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 148
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    nop

    :goto_4
    if-nez v0, :cond_4

    iget-object v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->streamClosedListener:Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

    if-eqz v0, :cond_4

    .line 155
    invoke-interface {v0}, Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;->onStreamClosed()V

    :cond_4
    return-void
.end method

.method public suspendGobbling()V
    .locals 1

    .line 178
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForSuspend()V
    .locals 2

    .line 190
    monitor-enter p0

    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x20

    .line 193
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
