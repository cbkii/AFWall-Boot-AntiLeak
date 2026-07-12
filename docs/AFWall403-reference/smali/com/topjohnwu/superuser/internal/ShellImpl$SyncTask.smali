.class final Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;
.super Ljava/lang/Object;
.source "ShellImpl.java"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/ShellImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncTask"
.end annotation


# instance fields
.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private set:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/Condition;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->set:Z

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method await()V
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->set:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->condition:Ljava/util/concurrent/locks/Condition;

    .line 76
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method public run(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 0

    return-void
.end method

.method public synthetic shellDied()V
    .locals 0

    invoke-static {p0}, Lcom/topjohnwu/superuser/Shell$Task$-CC;->$default$shellDied(Lcom/topjohnwu/superuser/Shell$Task;)V

    return-void
.end method

.method signal()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->set:Z

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->condition:Ljava/util/concurrent/locks/Condition;

    .line 70
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    return-void
.end method
