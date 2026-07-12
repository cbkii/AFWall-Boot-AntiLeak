.class Ldev/ukanth/ufirewall/service/RootShellService$1;
.super Ljava/util/TimerTask;
.source "RootShellService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/service/RootShellService;->runScriptAsRoot(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/service/RootShellService;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/service/RootShellService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/RootShellService$1;->this$0:Ldev/ukanth/ufirewall/service/RootShellService;

    .line 368
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State of rootShell(4): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ldev/ukanth/ufirewall/service/RootShellService;->-$$Nest$sfgetrootState()Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFWall"

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {}, Ldev/ukanth/ufirewall/service/RootShellService;->-$$Nest$sfgetrootState()Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    move-result-object v0

    sget-object v2, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->BUSY:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    if-ne v0, v2, :cond_0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Forcefully changing the state after 5s timeout: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ldev/ukanth/ufirewall/service/RootShellService;->-$$Nest$sfgetrootState()Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->READY:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    invoke-static {v0}, Ldev/ukanth/ufirewall/service/RootShellService;->-$$Nest$sfputrootState(Ldev/ukanth/ufirewall/service/RootShellService$ShellState;)V

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/service/RootShellService$1;->this$0:Ldev/ukanth/ufirewall/service/RootShellService;

    .line 377
    invoke-static {v0}, Ldev/ukanth/ufirewall/service/RootShellService;->-$$Nest$mrunNextSubmission(Ldev/ukanth/ufirewall/service/RootShellService;)V

    return-void
.end method
