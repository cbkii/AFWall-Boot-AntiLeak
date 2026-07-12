.class public Ldev/ukanth/ufirewall/service/RootCommand;
.super Ljava/lang/Object;
.source "RootCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/service/RootCommand$Callback;
    }
.end annotation


# instance fields
.field public cb:Ldev/ukanth/ufirewall/service/RootCommand$Callback;

.field public commandIndex:I

.field private commmands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public done:Z

.field public exitCode:I

.field public failureToast:I

.field public hash:I

.field public ignoreExitCode:Z

.field public isv6:Z

.field public lastCommand:Ljava/lang/String;

.field public lastCommandResult:Ljava/lang/StringBuilder;

.field public reopenShell:Z

.field public res:Ljava/lang/StringBuilder;

.field public retryCount:I

.field public retryExitCode:I

.field private rootShellService:Ldev/ukanth/ufirewall/service/RootShellService;

.field private rootShellService2:Ldev/ukanth/ufirewall/service/RootShellService2;

.field public startTime:Ljava/util/Date;

.field public successToast:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->cb:Ldev/ukanth/ufirewall/service/RootCommand$Callback;

    const/4 v0, -0x1

    iput v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->successToast:I

    iput v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->failureToast:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Ldev/ukanth/ufirewall/service/RootCommand;->reopenShell:Z

    iput v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->retryExitCode:I

    iput-boolean v1, p0, Ldev/ukanth/ufirewall/service/RootCommand;->done:Z

    iput v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->hash:I

    iput-boolean v1, p0, Ldev/ukanth/ufirewall/service/RootCommand;->isv6:Z

    .line 39
    new-instance v0, Ldev/ukanth/ufirewall/service/RootShellService;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootShellService;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->rootShellService:Ldev/ukanth/ufirewall/service/RootShellService;

    .line 40
    new-instance v0, Ldev/ukanth/ufirewall/service/RootShellService2;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootShellService2;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->rootShellService2:Ldev/ukanth/ufirewall/service/RootShellService2;

    return-void
.end method


# virtual methods
.method public getCommmands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->commmands:Ljava/util/List;

    return-object v0
.end method

.method public final run(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->rootShellService:Ldev/ukanth/ufirewall/service/RootShellService;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ldev/ukanth/ufirewall/service/RootShellService;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootShellService;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->rootShellService:Ldev/ukanth/ufirewall/service/RootShellService;

    .line 173
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Ldev/ukanth/ufirewall/service/RootCommand;->rootShellService:Ldev/ukanth/ufirewall/service/RootShellService;

    .line 175
    invoke-virtual {p2, p1, v0, p0}, Ldev/ukanth/ufirewall/service/RootShellService;->runScriptAsRoot(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method public final run(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->rootShellService:Ldev/ukanth/ufirewall/service/RootShellService;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ldev/ukanth/ufirewall/service/RootShellService;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootShellService;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->rootShellService:Ldev/ukanth/ufirewall/service/RootShellService;

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/service/RootCommand;->rootShellService:Ldev/ukanth/ufirewall/service/RootShellService;

    .line 146
    invoke-virtual {v0, p1, p2, p0}, Ldev/ukanth/ufirewall/service/RootShellService;->runScriptAsRoot(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method public final run(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object p3, p0, Ldev/ukanth/ufirewall/service/RootCommand;->rootShellService2:Ldev/ukanth/ufirewall/service/RootShellService2;

    if-nez p3, :cond_0

    .line 157
    new-instance p3, Ldev/ukanth/ufirewall/service/RootShellService2;

    invoke-direct {p3}, Ldev/ukanth/ufirewall/service/RootShellService2;-><init>()V

    iput-object p3, p0, Ldev/ukanth/ufirewall/service/RootCommand;->rootShellService2:Ldev/ukanth/ufirewall/service/RootShellService2;

    :cond_0
    iget-object p3, p0, Ldev/ukanth/ufirewall/service/RootCommand;->rootShellService2:Ldev/ukanth/ufirewall/service/RootShellService2;

    .line 160
    invoke-virtual {p3, p1, p2, p0}, Ldev/ukanth/ufirewall/service/RootShellService2;->runScriptAsRoot(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method public setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/RootCommand;->cb:Ldev/ukanth/ufirewall/service/RootCommand$Callback;

    return-object p0
.end method

.method public setCommmands(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/RootCommand;->commmands:Ljava/util/List;

    return-void
.end method

.method public setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/service/RootCommand;->failureToast:I

    return-object p0
.end method

.method public setLogging(Z)Ldev/ukanth/ufirewall/service/RootCommand;
    .locals 0

    if-eqz p1, :cond_0

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/RootCommand;->res:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/RootCommand;->res:Ljava/lang/StringBuilder;

    :goto_0
    return-object p0
.end method

.method public setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;
    .locals 0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/service/RootCommand;->reopenShell:Z

    return-object p0
.end method

.method public setRetryExitCode(I)Ldev/ukanth/ufirewall/service/RootCommand;
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/service/RootCommand;->retryExitCode:I

    return-object p0
.end method

.method public setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/service/RootCommand;->successToast:I

    return-object p0
.end method
