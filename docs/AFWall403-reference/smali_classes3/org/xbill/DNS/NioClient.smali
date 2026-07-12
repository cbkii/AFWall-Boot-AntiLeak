.class public abstract Lorg/xbill/DNS/NioClient;
.super Ljava/lang/Object;
.source "NioClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/NioClient$KeyProcessor;
    }
.end annotation


# static fields
.field private static final CLOSE_TASKS:[Ljava/lang/Runnable;

.field private static final REGISTRATIONS_TASKS:[Ljava/lang/Runnable;

.field private static final TIMEOUT_TASKS:[Ljava/lang/Runnable;

.field private static closeThread:Ljava/lang/Thread;

.field private static final log:Lorg/slf4j/Logger;

.field private static packetLogger:Lorg/xbill/DNS/PacketLogger;

.field private static volatile run:Z

.field private static volatile selector:Ljava/nio/channels/Selector;

.field private static selectorThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/xbill/DNS/NioClient;

    .line 32
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/NioClient;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    sput-object v0, Lorg/xbill/DNS/NioClient;->packetLogger:Lorg/xbill/DNS/PacketLogger;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Runnable;

    sput-object v1, Lorg/xbill/DNS/NioClient;->TIMEOUT_TASKS:[Ljava/lang/Runnable;

    new-array v1, v0, [Ljava/lang/Runnable;

    sput-object v1, Lorg/xbill/DNS/NioClient;->REGISTRATIONS_TASKS:[Ljava/lang/Runnable;

    new-array v0, v0, [Ljava/lang/Runnable;

    sput-object v0, Lorg/xbill/DNS/NioClient;->CLOSE_TASKS:[Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTask([Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 159
    aput-object p1, p0, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 161
    aput-object p1, p0, p2

    :goto_0
    return-void
.end method

.method public static close()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-static {v0}, Lorg/xbill/DNS/NioClient;->close(Z)V

    return-void
.end method

.method private static close(Z)V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lorg/xbill/DNS/NioClient;->run:Z

    if-nez p0, :cond_0

    .line 81
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    sget-object v0, Lorg/xbill/DNS/NioClient;->closeThread:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lorg/xbill/DNS/NioClient;->log:Lorg/slf4j/Logger;

    const-string v0, "Failed to remove shutdown hook, ignoring and continuing close"

    .line 83
    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_1
    sget-object p0, Lorg/xbill/DNS/NioClient;->CLOSE_TASKS:[Ljava/lang/Runnable;

    .line 88
    invoke-static {p0}, Lorg/xbill/DNS/NioClient;->runTasks([Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object v0, Lorg/xbill/DNS/NioClient;->log:Lorg/slf4j/Logger;

    const-string v1, "Failed to execute shutdown task, ignoring and continuing close"

    .line 90
    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object p0, Lorg/xbill/DNS/NioClient;->selector:Ljava/nio/channels/Selector;

    sget-object v0, Lorg/xbill/DNS/NioClient;->selectorThread:Ljava/lang/Thread;

    const-class v1, Lorg/xbill/DNS/NioClient;

    .line 95
    monitor-enter v1

    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lorg/xbill/DNS/NioClient;->selector:Ljava/nio/channels/Selector;

    sput-object v2, Lorg/xbill/DNS/NioClient;->selectorThread:Ljava/lang/Thread;

    sput-object v2, Lorg/xbill/DNS/NioClient;->closeThread:Ljava/lang/Thread;

    .line 99
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    .line 102
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 104
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    sget-object v1, Lorg/xbill/DNS/NioClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed to properly close selector, ignoring and continuing close"

    .line 106
    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 112
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 114
    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_3
    return-void

    :catchall_0
    move-exception p0

    .line 99
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method static synthetic lambda$selector$0()V
    .locals 1

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Lorg/xbill/DNS/NioClient;->close(Z)V

    return-void
.end method

.method private static processReadyKeys()V
    .locals 3

    sget-object v0, Lorg/xbill/DNS/NioClient;->selector:Ljava/nio/channels/Selector;

    .line 177
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 178
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 181
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/NioClient$KeyProcessor;

    .line 182
    invoke-interface {v2, v1}, Lorg/xbill/DNS/NioClient$KeyProcessor;->processReadyKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static runSelector()V
    .locals 4

    const-string v0, "dnsjava.nio.selector_timeout"

    const/16 v1, 0x3e8

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    if-gt v0, v1, :cond_3

    :cond_0
    :goto_0
    sget-boolean v1, Lorg/xbill/DNS/NioClient;->run:Z

    if-eqz v1, :cond_2

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/NioClient;->selector:Ljava/nio/channels/Selector;

    int-to-long v2, v0

    .line 128
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/xbill/DNS/NioClient;->TIMEOUT_TASKS:[Ljava/lang/Runnable;

    .line 129
    invoke-static {v1}, Lorg/xbill/DNS/NioClient;->runTasks([Ljava/lang/Runnable;)V

    :cond_1
    sget-boolean v1, Lorg/xbill/DNS/NioClient;->run:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/xbill/DNS/NioClient;->REGISTRATIONS_TASKS:[Ljava/lang/Runnable;

    .line 133
    invoke-static {v1}, Lorg/xbill/DNS/NioClient;->runTasks([Ljava/lang/Runnable;)V

    .line 134
    invoke-static {}, Lorg/xbill/DNS/NioClient;->processReadyKeys()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lorg/xbill/DNS/NioClient;->log:Lorg/slf4j/Logger;

    const-string v3, "A selection operation failed"

    .line 137
    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/xbill/DNS/NioClient;->log:Lorg/slf4j/Logger;

    const-string v1, "dnsjava NIO selector thread stopped"

    .line 142
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 123
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid selector_timeout, must be between 1 and 1000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized runTasks([Ljava/lang/Runnable;)V
    .locals 2

    const-class v0, Lorg/xbill/DNS/NioClient;

    monitor-enter v0

    const/4 v1, 0x0

    .line 166
    :try_start_0
    aget-object v1, p0, v1

    if-eqz v1, :cond_0

    .line 168
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v1, 0x1

    .line 170
    aget-object p0, p0, v1

    if-eqz p0, :cond_1

    .line 172
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static selector()Ljava/nio/channels/Selector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xbill/DNS/NioClient;->selector:Ljava/nio/channels/Selector;

    if-nez v0, :cond_1

    const-class v0, Lorg/xbill/DNS/NioClient;

    .line 52
    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/NioClient;->selector:Ljava/nio/channels/Selector;

    if-nez v1, :cond_0

    .line 54
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/NioClient;->selector:Ljava/nio/channels/Selector;

    sget-object v1, Lorg/xbill/DNS/NioClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Starting dnsjava NIO selector thread"

    .line 55
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lorg/xbill/DNS/NioClient;->run:Z

    .line 57
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/xbill/DNS/NioClient$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/xbill/DNS/NioClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v2, Lorg/xbill/DNS/NioClient;->selectorThread:Ljava/lang/Thread;

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v1, Lorg/xbill/DNS/NioClient;->selectorThread:Ljava/lang/Thread;

    const-string v2, "dnsjava NIO selector"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    sget-object v1, Lorg/xbill/DNS/NioClient;->selectorThread:Ljava/lang/Thread;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 61
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/xbill/DNS/NioClient$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/xbill/DNS/NioClient$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lorg/xbill/DNS/NioClient;->closeThread:Ljava/lang/Thread;

    const-string v2, "dnsjava NIO shutdown hook"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    sget-object v2, Lorg/xbill/DNS/NioClient;->closeThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 65
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
    sget-object v0, Lorg/xbill/DNS/NioClient;->selector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method static declared-synchronized setCloseTask(Ljava/lang/Runnable;Z)V
    .locals 2

    const-class v0, Lorg/xbill/DNS/NioClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/NioClient;->CLOSE_TASKS:[Ljava/lang/Runnable;

    .line 154
    invoke-static {v1, p0, p1}, Lorg/xbill/DNS/NioClient;->addTask([Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static setPacketLogger(Lorg/xbill/DNS/PacketLogger;)V
    .locals 0

    sput-object p0, Lorg/xbill/DNS/NioClient;->packetLogger:Lorg/xbill/DNS/PacketLogger;

    return-void
.end method

.method static declared-synchronized setRegistrationsTask(Ljava/lang/Runnable;Z)V
    .locals 2

    const-class v0, Lorg/xbill/DNS/NioClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/NioClient;->REGISTRATIONS_TASKS:[Ljava/lang/Runnable;

    .line 150
    invoke-static {v1, p0, p1}, Lorg/xbill/DNS/NioClient;->addTask([Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized setTimeoutTask(Ljava/lang/Runnable;Z)V
    .locals 2

    const-class v0, Lorg/xbill/DNS/NioClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/NioClient;->TIMEOUT_TASKS:[Ljava/lang/Runnable;

    .line 146
    invoke-static {v1, p0, p1}, Lorg/xbill/DNS/NioClient;->addTask([Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static verboseLog(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V
    .locals 2

    sget-object v0, Lorg/xbill/DNS/NioClient;->log:Lorg/slf4j/Logger;

    .line 187
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-static {p0, p3}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lorg/xbill/DNS/NioClient;->packetLogger:Lorg/xbill/DNS/PacketLogger;

    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v0, p0, p1, p2, p3}, Lorg/xbill/DNS/PacketLogger;->log(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    :cond_1
    return-void
.end method
