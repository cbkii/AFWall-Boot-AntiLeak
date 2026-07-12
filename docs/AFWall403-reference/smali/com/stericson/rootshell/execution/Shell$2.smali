.class Lcom/stericson/rootshell/execution/Shell$2;
.super Ljava/lang/Thread;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/rootshell/execution/Shell;->notifyThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/rootshell/execution/Shell;


# direct methods
.method constructor <init>(Lcom/stericson/rootshell/execution/Shell;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/rootshell/execution/Shell$2;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 630
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell$2;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 632
    invoke-static {v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetcommands(Lcom/stericson/rootshell/execution/Shell;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$2;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 633
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetcommands(Lcom/stericson/rootshell/execution/Shell;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 634
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
