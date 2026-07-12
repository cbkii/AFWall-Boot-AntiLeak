.class public final synthetic Lcom/topjohnwu/superuser/ipc/RootService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/Shell$Task;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/Shell$Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/ipc/RootService$$ExternalSyntheticLambda0;->f$0:Lcom/topjohnwu/superuser/Shell$Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/ipc/RootService$$ExternalSyntheticLambda0;->f$0:Lcom/topjohnwu/superuser/Shell$Task;

    invoke-static {v0}, Lcom/topjohnwu/superuser/ipc/RootService;->lambda$asRunnable$0(Lcom/topjohnwu/superuser/Shell$Task;)V

    return-void
.end method
