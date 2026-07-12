.class public Leu/chainfire/libsuperuser/Shell$Interactive;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$SyncCommands;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interactive"
.end annotation


# instance fields
.field private STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

.field private STDERRclosed:Z

.field private STDIN:Ljava/io/DataOutputStream;

.field private STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

.field private STDOUTclosed:Z

.field private final STDclosedSync:Ljava/lang/Object;

.field private final autoHandler:Z

.field private volatile bufferSTDERR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile bufferSTDOUT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final callbackSync:Ljava/lang/Object;

.field protected volatile callbacks:I

.field protected volatile closed:Z

.field private volatile command:Leu/chainfire/libsuperuser/Shell$Command;

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/chainfire/libsuperuser/Shell$Command;",
            ">;"
        }
    .end annotation
.end field

.field private volatile doCloseWhenIdle:Z

.field private final emptyStringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final handler:Landroid/os/Handler;

.field private volatile idle:Z

.field private final idleSync:Ljava/lang/Object;

.field private volatile lastExitCode:I

.field private volatile lastMarkerSTDERR:Ljava/lang/String;

.field private volatile lastMarkerSTDOUT:Ljava/lang/String;

.field private volatile lastOpening:Z

.field private final onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private final onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private volatile opening:Z

.field private final openingSync:Ljava/lang/Object;

.field private process:Ljava/lang/Process;

.field private volatile running:Z

.field private final shell:Ljava/lang/String;

.field private shellDiesOnSTDOUTERRClose:Z

.field private final wantSTDERR:Z

.field private watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private volatile watchdogCount:I

.field private watchdogTimeout:I


# direct methods
.method protected constructor <init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V
    .locals 5

    .line 1501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 1469
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDclosedSync:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUTclosed:Z

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERRclosed:Z

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    iput v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->doCloseWhenIdle:Z

    .line 1483
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    .line 1484
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    .line 1485
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    .line 1486
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->emptyStringList:Ljava/util/List;

    iput v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDOUT:Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDERR:Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    .line 1502
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$100(Leu/chainfire/libsuperuser/Shell$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->autoHandler:Z

    .line 1503
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$200(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    .line 1504
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$300(Leu/chainfire/libsuperuser/Shell$Builder;)Z

    move-result v3

    iput-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shellDiesOnSTDOUTERRClose:Z

    .line 1505
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$400(Leu/chainfire/libsuperuser/Shell$Builder;)Z

    move-result v3

    iput-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->wantSTDERR:Z

    .line 1506
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$500(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    .line 1507
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$600(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->environment:Ljava/util/Map;

    .line 1508
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$700(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v4

    iput-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 1509
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$800(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v4

    iput-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 1510
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$900(Leu/chainfire/libsuperuser/Shell$Builder;)I

    move-result v4

    iput v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogTimeout:I

    .line 1515
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$1000(Leu/chainfire/libsuperuser/Shell$Builder;)Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 1516
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    goto :goto_0

    .line 1518
    :cond_0
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$1000(Leu/chainfire/libsuperuser/Shell$Builder;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    :goto_0
    if-nez p2, :cond_1

    .line 1521
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$1100(Leu/chainfire/libsuperuser/Shell$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    const/16 v0, 0x3c

    iput v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogTimeout:I

    .line 1528
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Command;

    sget-object v2, Leu/chainfire/libsuperuser/Shell;->availableTestCommands:[Ljava/lang/String;

    new-instance v4, Leu/chainfire/libsuperuser/Shell$Interactive$1;

    invoke-direct {v4, p0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Interactive$1;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V

    invoke-direct {v0, v2, v1, v4}, Leu/chainfire/libsuperuser/Shell$Command;-><init>(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    invoke-interface {v3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1572
    :cond_2
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->open()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 1574
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->startCallback()V

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    .line 1575
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Interactive$2;

    invoke-direct {v0, p0, p2}, Leu/chainfire/libsuperuser/Shell$Interactive$2;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    const/4 p1, -0x3

    .line 1586
    invoke-interface {p2, v1, p1}, Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;->onOpenResult(ZI)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic access$1200(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/lang/String;
    .locals 0

    .line 1453
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z
    .locals 0

    .line 1453
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    return p1
.end method

.method static synthetic access$1402(Leu/chainfire/libsuperuser/Shell$Interactive;I)I
    .locals 0

    .line 1453
    iput p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogTimeout:I

    return p1
.end method

.method static synthetic access$1500(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0

    .line 1453
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->handleWatchdog()V

    return-void
.end method

.method static synthetic access$2400(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/util/List;
    .locals 0

    .line 1453
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->emptyStringList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2500(Leu/chainfire/libsuperuser/Shell$Interactive;)Z
    .locals 0

    .line 1453
    iget-boolean p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shellDiesOnSTDOUTERRClose:Z

    return p0
.end method

.method static synthetic access$2600(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;
    .locals 0

    .line 1453
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    return-object p0
.end method

.method static synthetic access$2700(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;
    .locals 0

    .line 1453
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    return-object p0
.end method

.method static synthetic access$2800(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/lang/Object;
    .locals 0

    .line 1453
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDclosedSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2900(Leu/chainfire/libsuperuser/Shell$Interactive;)Z
    .locals 0

    .line 1453
    iget-boolean p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUTclosed:Z

    return p0
.end method

.method static synthetic access$2902(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z
    .locals 0

    .line 1453
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUTclosed:Z

    return p1
.end method

.method static synthetic access$3000(Leu/chainfire/libsuperuser/Shell$Interactive;)Z
    .locals 0

    .line 1453
    iget-boolean p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERRclosed:Z

    return p0
.end method

.method static synthetic access$3002(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z
    .locals 0

    .line 1453
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERRclosed:Z

    return p1
.end method

.method static synthetic access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;
    .locals 0

    .line 1453
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    return-object p0
.end method

.method static synthetic access$3102(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$Command;
    .locals 0

    .line 1453
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    return-object p1
.end method

.method static synthetic access$3200(Leu/chainfire/libsuperuser/Shell$Interactive;)Z
    .locals 0

    .line 1453
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForCallbacks()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/util/List;
    .locals 0

    .line 1453
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3400(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/util/List;
    .locals 0

    .line 1453
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3500(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z
    .locals 0

    .line 1453
    invoke-direct/range {p0 .. p5}, Leu/chainfire/libsuperuser/Shell$Interactive;->postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3602(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z
    .locals 0

    .line 1453
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    return p1
.end method

.method static synthetic access$3700(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0

    .line 1453
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand()V

    return-void
.end method

.method static synthetic access$3800(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Z)V
    .locals 0

    .line 1453
    invoke-direct {p0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Interactive;->addBuffer(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3900(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 0

    .line 1453
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object p0
.end method

.method static synthetic access$4000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    .line 1453
    invoke-direct {p0, p1, p2, p3}, Leu/chainfire/libsuperuser/Shell$Interactive;->processLine(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$4102(Leu/chainfire/libsuperuser/Shell$Interactive;I)I
    .locals 0

    .line 1453
    iput p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    return p1
.end method

.method static synthetic access$4202(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1453
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDOUT:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0

    .line 1453
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->processMarker()V

    return-void
.end method

.method static synthetic access$4400(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 0

    .line 1453
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object p0
.end method

.method static synthetic access$4502(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1453
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDERR:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized addBuffer(Ljava/lang/String;Z)V
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    .line 1860
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->wantSTDERR:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    if-eqz p2, :cond_2

    iget-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    .line 1862
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    if-eqz p2, :cond_2

    iget-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    .line 1865
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleWatchdog()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1641
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogTimeout:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1643
    monitor-exit p0

    return-void

    .line 1645
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1647
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "[%s%%] SHELL_DIED"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    const/4 v0, -0x2

    const/4 v5, -0x2

    goto :goto_0

    :cond_2
    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogCount:I

    iget v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogTimeout:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge v0, v3, :cond_3

    .line 1649
    monitor-exit p0

    return-void

    .line 1652
    :cond_3
    :try_start_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "[%s%%] WATCHDOG_EXIT"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v5, -0x1

    :goto_0
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    iget-object v7, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    const/4 v8, 0x0

    move-object v3, p0

    .line 1655
    invoke-direct/range {v3 .. v8}, Leu/chainfire/libsuperuser/Shell$Interactive;->postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1664
    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1666
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->kill()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1667
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized open()Z
    .locals 8

    monitor-enter p0

    .line 1957
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "[%s%%] START"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->environment:Ljava/util/Map;

    .line 1962
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1963
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    goto :goto_1

    .line 1965
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1966
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->environment:Ljava/util/Map;

    .line 1967
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1969
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1970
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1971
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1974
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    .line 1977
    :goto_1
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Interactive$6;

    invoke-direct {v0, p0}, Leu/chainfire/libsuperuser/Shell$Interactive$6;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    .line 2013
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 2014
    new-instance v1, Leu/chainfire/libsuperuser/StreamGobbler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    .line 2015
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v6, Leu/chainfire/libsuperuser/Shell$Interactive$7;

    invoke-direct {v6, p0}, Leu/chainfire/libsuperuser/Shell$Interactive$7;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    invoke-direct {v1, v3, v4, v6, v0}, Leu/chainfire/libsuperuser/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;)V

    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 2064
    new-instance v1, Leu/chainfire/libsuperuser/StreamGobbler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    .line 2065
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v6, Leu/chainfire/libsuperuser/Shell$Interactive$8;

    invoke-direct {v6, p0}, Leu/chainfire/libsuperuser/Shell$Interactive$8;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    invoke-direct {v1, v3, v4, v6, v0}, Leu/chainfire/libsuperuser/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;)V

    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 2098
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/StreamGobbler;->start()V

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 2099
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/StreamGobbler;->start()V

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    iput-boolean v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    .line 2104
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2106
    monitor-exit p0

    return v2

    .line 2109
    :catch_0
    monitor-exit p0

    return v5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/chainfire/libsuperuser/Shell$Command;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")Z"
        }
    .end annotation

    .line 1887
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1700(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1888
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1800(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1889
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1890
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1897
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1600(Leu/chainfire/libsuperuser/Shell$Command;)[Ljava/lang/String;

    move-result-object v0

    sget-object v2, Leu/chainfire/libsuperuser/Shell;->availableTestCommands:[Ljava/lang/String;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 1912
    :cond_1
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->startCallback()V

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    .line 1913
    new-instance v8, Leu/chainfire/libsuperuser/Shell$Interactive$5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Leu/chainfire/libsuperuser/Shell$Interactive$5;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/io/InputStream;Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    if-nez p5, :cond_9

    .line 1899
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1700(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object p5

    if-eqz p5, :cond_4

    .line 1900
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1700(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object p5

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result v0

    if-eqz p3, :cond_3

    move-object v2, p3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->emptyStringList:Ljava/util/List;

    :goto_1
    invoke-interface {p5, v0, p2, v2}, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;->onCommandResult(IILjava/util/List;)V

    .line 1901
    :cond_4
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1800(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    move-result-object p5

    if-eqz p5, :cond_7

    .line 1902
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1800(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    move-result-object p5

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result v0

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    iget-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->emptyStringList:Ljava/util/List;

    :goto_2
    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    iget-object p4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->emptyStringList:Ljava/util/List;

    :goto_3
    invoke-interface {p5, v0, p2, p3, p4}, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;->onCommandResult(IILjava/util/List;Ljava/util/List;)V

    .line 1903
    :cond_7
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 1904
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-result-object p3

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result p4

    invoke-interface {p3, p4, p2}, Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;->onCommandResult(II)V

    .line 1905
    :cond_8
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 1906
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object p3

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;->onCommandResult(II)V

    goto :goto_4

    .line 1907
    :cond_9
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1908
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object p1

    invoke-interface {p1, p5}, Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;->onInputStream(Ljava/io/InputStream;)V

    :cond_a
    :goto_4
    return v1
.end method

.method private declared-synchronized processLine(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1823
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->startCallback()V

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    .line 1824
    new-instance v1, Leu/chainfire/libsuperuser/Shell$Interactive$4;

    invoke-direct {v1, p0, p2, p1, p3}, Leu/chainfire/libsuperuser/Shell$Interactive$4;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1841
    :cond_0
    instance-of v0, p2, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    if-eqz v0, :cond_1

    .line 1842
    check-cast p2, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    invoke-interface {p2, p1}, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V

    goto :goto_0

    .line 1843
    :cond_1
    instance-of v0, p2, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDOUT;

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    .line 1844
    check-cast p2, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDOUT;

    invoke-interface {p2, p1}, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDOUT;->onSTDOUT(Ljava/lang/String;)V

    goto :goto_0

    .line 1845
    :cond_2
    instance-of v0, p2, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDERR;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 1846
    check-cast p2, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDERR;

    invoke-interface {p2, p1}, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDERR;->onSTDERR(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1850
    :cond_3
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized processMarker()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 1801
    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDOUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 1802
    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDERR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    iget v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    const/4 v6, 0x0

    move-object v1, p0

    .line 1803
    invoke-direct/range {v1 .. v6}, Leu/chainfire/libsuperuser/Shell$Interactive;->postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z

    .line 1804
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->stopWatchdog()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    .line 1810
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1812
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private runNextCommand()V
    .locals 1

    const/4 v0, 0x1

    .line 1630
    invoke-direct {p0, v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand(Z)V

    return-void
.end method

.method private runNextCommand(Z)V
    .locals 13

    .line 1704
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    if-eqz v3, :cond_1

    :cond_0
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    :cond_1
    if-eqz v0, :cond_9

    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    .line 1710
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    .line 1711
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Leu/chainfire/libsuperuser/Shell$Command;

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    .line 1712
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    iput v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDOUT:Ljava/lang/String;

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDERR:Ljava/lang/String;

    .line 1720
    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Command;->access$1600(Leu/chainfire/libsuperuser/Shell$Command;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_8

    .line 1722
    :try_start_0
    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Command;->access$1700(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1723
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    goto :goto_0

    .line 1724
    :cond_2
    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Command;->access$1800(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1725
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    .line 1726
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    :cond_3
    :goto_0
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    iput-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 1731
    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 1732
    invoke-virtual {v3}, Leu/chainfire/libsuperuser/StreamGobbler;->isSuspended()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1733
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v6}, Leu/chainfire/libsuperuser/StreamGobbler;->getId()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-nez v8, :cond_4

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 1736
    invoke-virtual {v3}, Leu/chainfire/libsuperuser/StreamGobbler;->suspendGobbling()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    const-string v4, "echo inputstream\n"

    const-string v6, "UTF-8"

    .line 1741
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 1742
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 1743
    invoke-virtual {v3}, Leu/chainfire/libsuperuser/StreamGobbler;->waitForSuspend()V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 1747
    invoke-virtual {v3}, Leu/chainfire/libsuperuser/StreamGobbler;->resumeGobbling()V

    .line 1748
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->startWatchdog()V

    .line 1750
    :cond_6
    :goto_1
    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Command;->access$1600(Leu/chainfire/libsuperuser/Shell$Command;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_7

    aget-object v7, v3, v6

    .line 1751
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "[%s+] %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1752
    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    aput-object v7, v10, v1

    .line 1751
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Leu/chainfire/libsuperuser/Debug;->logCommand(Ljava/lang/String;)V

    iget-object v8, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 1753
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "UTF-8"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 1755
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " $?\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 1756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " >&2\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 1757
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 1758
    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1759
    new-instance v3, Leu/chainfire/libsuperuser/MarkerInputStream;

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Leu/chainfire/libsuperuser/MarkerInputStream;-><init>(Leu/chainfire/libsuperuser/StreamGobbler;Ljava/lang/String;)V

    invoke-static {v5, v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$2102(Leu/chainfire/libsuperuser/Shell$Command;Leu/chainfire/libsuperuser/MarkerInputStream;)Leu/chainfire/libsuperuser/MarkerInputStream;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1760
    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Command;->access$2100(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/MarkerInputStream;

    move-result-object v9

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Leu/chainfire/libsuperuser/Shell$Interactive;->postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    goto :goto_4

    .line 1766
    :cond_8
    invoke-direct {p0, v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand(Z)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    if-eqz v3, :cond_c

    .line 1770
    :cond_a
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "[%s%%] SHELL_DIED"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    :goto_3
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    .line 1771
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    .line 1772
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Leu/chainfire/libsuperuser/Shell$Command;

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Leu/chainfire/libsuperuser/Shell$Interactive;->postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z

    goto :goto_3

    .line 1774
    :cond_b
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->onClosed()V

    :cond_c
    :goto_4
    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    if-eqz v3, :cond_e

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->doCloseWhenIdle:Z

    if-eqz v0, :cond_d

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->doCloseWhenIdle:Z

    .line 1780
    invoke-virtual {p0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately(Z)V

    :cond_d
    if-eqz p1, :cond_e

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    .line 1783
    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    .line 1784
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1785
    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_e
    :goto_5
    iget-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    .line 1791
    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    .line 1792
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1793
    monitor-exit p1

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_f
    :goto_6
    return-void
.end method

.method private startWatchdog()V
    .locals 8

    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogTimeout:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogCount:I

    .line 1677
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1678
    new-instance v2, Leu/chainfire/libsuperuser/Shell$Interactive$3;

    invoke-direct {v2, p0}, Leu/chainfire/libsuperuser/Shell$Interactive$3;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private stopWatchdog()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 1691
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_0
    return-void
.end method

.method private waitForCallbacks()Z
    .locals 2

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2323
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    .line 2324
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    .line 2332
    monitor-enter v0

    :goto_0
    :try_start_0
    iget v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    .line 2335
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2337
    :catch_0
    :try_start_2
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2340
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized addCommand(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1607
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    .line 1621
    new-instance v1, Leu/chainfire/libsuperuser/Shell$Command;

    invoke-direct {v1, p1, p2, p3}, Leu/chainfire/libsuperuser/Shell$Command;-><init>(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 0

    .line 2127
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately()V

    return-void
.end method

.method public closeImmediately()V
    .locals 1

    const/4 v0, 0x0

    .line 2138
    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately(Z)V

    return-void
.end method

.method protected closeImmediately(Z)V
    .locals 5

    .line 2142
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isIdle()Z

    move-result p1

    .line 2144
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    if-nez v0, :cond_0

    .line 2146
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    .line 2149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2152
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->onClosed()V

    return-void

    :cond_1
    if-nez p1, :cond_3

    .line 2159
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->onMainThread()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "Application attempted to wait for a non-idle shell to close on the main thread"

    .line 2160
    invoke-static {p1}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 2161
    new-instance p1, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;

    const-string v0, "Application attempted to wait for a non-idle shell to close on the main thread"

    invoke-direct {p1, v0}, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    .line 2165
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForIdle()Z

    :cond_4
    :try_start_1
    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    const-string v2, "exit\n"

    const-string v3, "UTF-8"

    .line 2169
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 2170
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2172
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EPIPE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Stream closed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 2176
    :cond_5
    throw p1

    :cond_6
    :goto_1
    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    .line 2182
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 2190
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2196
    :catch_1
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    if-eq p1, v2, :cond_7

    invoke-virtual {v2}, Leu/chainfire/libsuperuser/StreamGobbler;->resumeGobbling()V

    .line 2197
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    if-eq p1, v2, :cond_8

    invoke-virtual {v2}, Leu/chainfire/libsuperuser/StreamGobbler;->resumeGobbling()V

    .line 2200
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    if-eq p1, v2, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    if-eq p1, v2, :cond_9

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 2201
    invoke-virtual {p1}, Leu/chainfire/libsuperuser/StreamGobbler;->join()V

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 2202
    invoke-virtual {p1}, Leu/chainfire/libsuperuser/StreamGobbler;->join()V

    .line 2205
    :cond_9
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->stopWatchdog()V

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    .line 2206
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2213
    :catch_2
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "[%s%%] END"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 2215
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->onClosed()V

    return-void

    :catchall_0
    move-exception p1

    .line 2149
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public closeWhenIdle()V
    .locals 2

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2225
    invoke-virtual {p0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->doCloseWhenIdle:Z

    :goto_0
    return-void
.end method

.method endCallback()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    .line 1942
    monitor-enter v0

    :try_start_0
    iget v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    iget v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    if-nez v1, :cond_0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    .line 1945
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1947
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    if-nez v0, :cond_1

    .line 1593
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Application did not close() interactive shell"

    .line 1595
    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 1596
    new-instance v0, Leu/chainfire/libsuperuser/Shell$ShellNotClosedException;

    invoke-direct {v0}, Leu/chainfire/libsuperuser/Shell$ShellNotClosedException;-><init>()V

    throw v0

    .line 1598
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public hasCommands()Z
    .locals 1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    .line 2450
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHandler()Z
    .locals 1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isIdle()Z
    .locals 2

    monitor-enter p0

    .line 2305
    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    .line 2308
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    .line 2309
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2310
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    .line 2313
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    .line 2314
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2315
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception v1

    .line 2310
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2318
    monitor-exit p0

    return v0

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpening()Z
    .locals 1

    .line 2278
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 2

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2291
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized kill()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 2241
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catch_0
    :try_start_2
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    .line 2246
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_1
    :try_start_3
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    .line 2253
    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    .line 2254
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2255
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    .line 2258
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    .line 2259
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2260
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1

    .line 2263
    :cond_0
    :goto_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->onClosed()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2264
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    .line 2255
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onClosed()V
    .locals 0

    return-void
.end method

.method public run(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2456
    invoke-virtual {p0, p1, v0, v0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I

    move-result p1

    return p1
.end method

.method public run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2509
    new-instance v1, Leu/chainfire/libsuperuser/Shell$Interactive$11;

    invoke-direct {v1, p0, p2, v0}, Leu/chainfire/libsuperuser/Shell$Interactive$11;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;[I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    .line 2525
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForIdle()Z

    aget p1, v0, p2

    if-ltz p1, :cond_0

    return p1

    .line 2526
    :cond_0
    new-instance p1, Leu/chainfire/libsuperuser/Shell$ShellDiedException;

    invoke-direct {p1}, Leu/chainfire/libsuperuser/Shell$ShellDiedException;-><init>()V

    throw p1
.end method

.method public run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2484
    new-instance v1, Leu/chainfire/libsuperuser/Shell$Interactive$10;

    invoke-direct {v1, p0, p2, v0}, Leu/chainfire/libsuperuser/Shell$Interactive$10;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;[I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    .line 2500
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForIdle()Z

    aget p1, v0, p2

    if-ltz p1, :cond_0

    return p1

    .line 2501
    :cond_0
    new-instance p1, Leu/chainfire/libsuperuser/Shell$ShellDiedException;

    invoke-direct {p1}, Leu/chainfire/libsuperuser/Shell$ShellDiedException;-><init>()V

    throw p1
.end method

.method public run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    if-eqz p4, :cond_1

    if-eqz p2, :cond_0

    .line 2463
    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_0
    if-eqz p3, :cond_1

    .line 2464
    invoke-interface {p3}, Ljava/util/List;->clear()V

    :cond_1
    const/4 p4, 0x1

    new-array p4, p4, [I

    .line 2467
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Interactive$9;

    invoke-direct {v0, p0, p4, p2, p3}, Leu/chainfire/libsuperuser/Shell$Interactive$9;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;[ILjava/util/List;Ljava/util/List;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    .line 2475
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForIdle()Z

    aget p1, p4, p2

    if-ltz p1, :cond_2

    return p1

    .line 2476
    :cond_2
    new-instance p1, Leu/chainfire/libsuperuser/Shell$ShellDiedException;

    invoke-direct {p1}, Leu/chainfire/libsuperuser/Shell$ShellDiedException;-><init>()V

    throw p1
.end method

.method startCallback()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    .line 1873
    monitor-enter v0

    :try_start_0
    iget v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    .line 1875
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForIdle()Z
    .locals 2

    .line 2378
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->onMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Application attempted to wait for a shell to become idle on the main thread"

    .line 2379
    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 2380
    new-instance v0, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;

    const-string v1, "Application attempted to wait for a shell to become idle on the main thread"

    invoke-direct {v0, v1}, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2383
    :cond_1
    :goto_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    .line 2384
    monitor-enter v0

    :goto_1
    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :try_start_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    .line 2387
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2389
    :catch_0
    :try_start_2
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2392
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2394
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForCallbacks()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 2392
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public waitForOpened(Ljava/lang/Boolean;)Z
    .locals 2

    .line 2413
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->onMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Application attempted to wait for a shell to become idle on the main thread"

    .line 2414
    invoke-static {p1}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 2415
    new-instance p1, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;

    const-string v0, "Application attempted to wait for a shell to become idle on the main thread"

    invoke-direct {p1, v0}, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2418
    :cond_1
    :goto_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    .line 2419
    monitor-enter v0

    :cond_2
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    .line 2422
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    nop

    if-eqz p1, :cond_2

    .line 2425
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 2429
    :cond_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 2432
    :cond_4
    :goto_2
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result p1

    return p1
.end method
