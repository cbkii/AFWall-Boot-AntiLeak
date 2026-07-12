.class Leu/chainfire/libsuperuser/Shell$Interactive$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

.field final synthetic val$builder:Leu/chainfire/libsuperuser/Shell$Builder;

.field final synthetic val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$builder:Leu/chainfire/libsuperuser/Shell$Builder;

    iput-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    .line 1528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandResult(IILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-nez p2, :cond_0

    iget-object p4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1536
    invoke-static {p4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1200(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Leu/chainfire/libsuperuser/Shell$SU;->isSU(Ljava/lang/String;)Z

    move-result p4

    invoke-static {p3, p4}, Leu/chainfire/libsuperuser/Shell;->parseAvailableResult(Ljava/util/List;Z)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1542
    invoke-static {p2, p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1302(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z

    iget-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1543
    invoke-virtual {p2}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately()V

    const/4 p2, -0x4

    :cond_0
    iget-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object p4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$builder:Leu/chainfire/libsuperuser/Shell$Builder;

    .line 1547
    invoke-static {p4}, Leu/chainfire/libsuperuser/Shell$Builder;->access$900(Leu/chainfire/libsuperuser/Shell$Builder;)I

    move-result p4

    invoke-static {p3, p4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1402(Leu/chainfire/libsuperuser/Shell$Interactive;I)I

    iget-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    if-eqz p3, :cond_3

    iget-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1551
    iget-object p3, p3, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz p3, :cond_1

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1553
    invoke-virtual {p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->startCallback()V

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1554
    iget-object p1, p1, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    new-instance p3, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;

    invoke-direct {p3, p0, p2}, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive$1;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1565
    :goto_0
    invoke-interface {p3, p1, p2}, Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;->onOpenResult(ZI)V

    :cond_3
    :goto_1
    return-void
.end method
