.class final Leu/chainfire/libsuperuser/Shell$Pool$2;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Pool;->get(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fThreaded:Leu/chainfire/libsuperuser/Shell$Threaded;

.field final synthetic val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Pool$2;->val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Pool$2;->val$fThreaded:Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 3278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Pool$2;->val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3282
    invoke-interface {v0, v1, v2}, Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;->onOpenResult(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Pool$2;->val$fThreaded:Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 3284
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->endCallback()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Pool$2;->val$fThreaded:Leu/chainfire/libsuperuser/Shell$Threaded;

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Threaded;->endCallback()V

    .line 3285
    throw v0
.end method
