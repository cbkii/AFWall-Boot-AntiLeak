.class Ldev/ukanth/ufirewall/service/RootShellService2$1;
.super Ljava/util/TimerTask;
.source "RootShellService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/service/RootShellService2;->runScriptAsRoot(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/service/RootShellService2;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/service/RootShellService2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/RootShellService2$1;->this$0:Ldev/ukanth/ufirewall/service/RootShellService2;

    .line 341
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State of rootShell(6): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ldev/ukanth/ufirewall/service/RootShellService2;->-$$Nest$sfgetrootState()Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFWall6"

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {}, Ldev/ukanth/ufirewall/service/RootShellService2;->-$$Nest$sfgetrootState()Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    move-result-object v0

    sget-object v2, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->BUSY:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    if-ne v0, v2, :cond_0

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Forcefully changing the state "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ldev/ukanth/ufirewall/service/RootShellService2;->-$$Nest$sfgetrootState()Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->READY:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    invoke-static {v0}, Ldev/ukanth/ufirewall/service/RootShellService2;->-$$Nest$sfputrootState(Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;)V

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/service/RootShellService2$1;->this$0:Ldev/ukanth/ufirewall/service/RootShellService2;

    .line 350
    invoke-static {v0}, Ldev/ukanth/ufirewall/service/RootShellService2;->-$$Nest$mrunNextSubmission(Ldev/ukanth/ufirewall/service/RootShellService2;)V

    return-void
.end method
