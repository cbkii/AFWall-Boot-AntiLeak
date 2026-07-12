.class public Leu/chainfire/libsuperuser/Shell$Builder;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private autoHandler:Z

.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/chainfire/libsuperuser/Shell$Command;",
            ">;"
        }
    .end annotation
.end field

.field private detectOpen:Z

.field private environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private shell:Ljava/lang/String;

.field private shellDiesOnSTDOUTERRClose:Z

.field private wantSTDERR:Z

.field private watchdogTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->autoHandler:Z

    const-string v2, "sh"

    iput-object v2, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shell:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Builder;->wantSTDERR:Z

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shellDiesOnSTDOUTERRClose:Z

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->detectOpen:Z

    .line 934
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->commands:Ljava/util/List;

    .line 935
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    iput v2, p0, Leu/chainfire/libsuperuser/Shell$Builder;->watchdogTimeout:I

    return-void
.end method

.method static synthetic access$100(Leu/chainfire/libsuperuser/Shell$Builder;)Z
    .locals 0

    .line 927
    iget-boolean p0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->autoHandler:Z

    return p0
.end method

.method static synthetic access$1000(Leu/chainfire/libsuperuser/Shell$Builder;)Landroid/os/Handler;
    .locals 0

    .line 927
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Leu/chainfire/libsuperuser/Shell$Builder;)Z
    .locals 0

    .line 927
    iget-boolean p0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->detectOpen:Z

    return p0
.end method

.method static synthetic access$200(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/lang/String;
    .locals 0

    .line 927
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shell:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Leu/chainfire/libsuperuser/Shell$Builder;)Z
    .locals 0

    .line 927
    iget-boolean p0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shellDiesOnSTDOUTERRClose:Z

    return p0
.end method

.method static synthetic access$400(Leu/chainfire/libsuperuser/Shell$Builder;)Z
    .locals 0

    .line 927
    iget-boolean p0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->wantSTDERR:Z

    return p0
.end method

.method static synthetic access$4900(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 0

    .line 927
    invoke-direct {p0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Builder;->openThreadedEx(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/List;
    .locals 0

    .line 927
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->commands:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/Map;
    .locals 0

    .line 927
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 0

    .line 927
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object p0
.end method

.method static synthetic access$800(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 0

    .line 927
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object p0
.end method

.method static synthetic access$900(Leu/chainfire/libsuperuser/Shell$Builder;)I
    .locals 0

    .line 927
    iget p0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->watchdogTimeout:I

    return p0
.end method

.method private openThreadedEx(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1

    .line 1281
    new-instance v0, Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;

    invoke-direct {v0, p0, p1, p2}, Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)V

    return-object v0
.end method


# virtual methods
.method public addCommand(Ljava/lang/Object;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1105
    invoke-virtual {p0, p1, v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->commands:Ljava/util/List;

    .line 1138
    new-instance v1, Leu/chainfire/libsuperuser/Shell$Command;

    invoke-direct {v1, p1, p2, p3}, Leu/chainfire/libsuperuser/Shell$Command;-><init>(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEnvironment(Ljava/lang/String;Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    .line 1083
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addEnvironment(Ljava/util/Map;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Leu/chainfire/libsuperuser/Shell$Builder;"
        }
    .end annotation

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    .line 1094
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public open()Leu/chainfire/libsuperuser/Shell$Interactive;
    .locals 2

    .line 1221
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Interactive;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V

    return-object v0
.end method

.method public open(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Interactive;
    .locals 1

    .line 1232
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-direct {v0, p0, p1}, Leu/chainfire/libsuperuser/Shell$Interactive;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V

    return-object v0
.end method

.method public openThreaded()Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1253
    invoke-direct {p0, v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->openThreadedEx(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method public openThreaded(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1

    const/4 v0, 0x0

    .line 1276
    invoke-direct {p0, p1, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->openThreadedEx(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object p1

    return-object p1
.end method

.method public setAutoHandler(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->autoHandler:Z

    return-object p0
.end method

.method public setDetectOpen(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->detectOpen:Z

    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public setMinimalLogging(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x6

    .line 1211
    invoke-static {v0, p1}, Leu/chainfire/libsuperuser/Debug;->setLogTypeEnabled(IZ)V

    return-object p0
.end method

.method public setOnSTDERRLineListener(Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object p0
.end method

.method public setOnSTDOUTLineListener(Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object p0
.end method

.method public setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shell:Ljava/lang/String;

    return-object p0
.end method

.method public setShellDiesOnSTDOUTERRClose(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shellDiesOnSTDOUTERRClose:Z

    return-object p0
.end method

.method public setWantSTDERR(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->wantSTDERR:Z

    return-object p0
.end method

.method public setWatchdogTimeout(I)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0

    iput p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->watchdogTimeout:I

    return-object p0
.end method

.method public useSH()Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1

    const-string v0, "sh"

    .line 992
    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method

.method public useSU()Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1

    const-string v0, "su"

    .line 1001
    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method
