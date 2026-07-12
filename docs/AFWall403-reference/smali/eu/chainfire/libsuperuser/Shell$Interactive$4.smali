.class Leu/chainfire/libsuperuser/Shell$Interactive$4;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;->processLine(Ljava/lang/String;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

.field final synthetic val$isSTDERR:Z

.field final synthetic val$line:Ljava/lang/String;

.field final synthetic val$listener:Ljava/lang/Object;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$4;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$4;->val$listener:Ljava/lang/Object;

    iput-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$4;->val$line:Ljava/lang/String;

    iput-boolean p4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$4;->val$isSTDERR:Z

    .line 1824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$4;->val$listener:Ljava/lang/Object;

    .line 1828
    instance-of v1, v0, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    if-eqz v1, :cond_0

    .line 1829
    check-cast v0, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$4;->val$line:Ljava/lang/String;

    invoke-interface {v0, v1}, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V

    goto :goto_0

    .line 1830
    :cond_0
    instance-of v1, v0, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDOUT;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$4;->val$isSTDERR:Z

    if-nez v1, :cond_1

    .line 1831
    check-cast v0, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDOUT;

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$4;->val$line:Ljava/lang/String;

    invoke-interface {v0, v1}, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDOUT;->onSTDOUT(Ljava/lang/String;)V

    goto :goto_0

    .line 1832
    :cond_1
    instance-of v1, v0, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDERR;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$4;->val$isSTDERR:Z

    if-eqz v1, :cond_2

    .line 1833
    check-cast v0, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDERR;

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$4;->val$line:Ljava/lang/String;

    invoke-interface {v0, v1}, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDERR;->onSTDERR(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$4;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1836
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->endCallback()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$4;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->endCallback()V

    .line 1837
    throw v0
.end method
