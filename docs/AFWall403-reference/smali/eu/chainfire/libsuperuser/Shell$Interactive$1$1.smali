.class Leu/chainfire/libsuperuser/Shell$Interactive$1$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive$1;->onCommandResult(IILjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Leu/chainfire/libsuperuser/Shell$Interactive$1;

.field final synthetic val$fExitCode:I


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive$1;I)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->this$1:Leu/chainfire/libsuperuser/Shell$Interactive$1;

    iput p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->val$fExitCode:I

    .line 1554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->this$1:Leu/chainfire/libsuperuser/Shell$Interactive$1;

    .line 1558
    iget-object v0, v0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    iget v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->val$fExitCode:I

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2, v1}, Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;->onOpenResult(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->this$1:Leu/chainfire/libsuperuser/Shell$Interactive$1;

    .line 1560
    iget-object v0, v0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->endCallback()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->this$1:Leu/chainfire/libsuperuser/Shell$Interactive$1;

    iget-object v1, v1, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->endCallback()V

    .line 1561
    throw v0
.end method
