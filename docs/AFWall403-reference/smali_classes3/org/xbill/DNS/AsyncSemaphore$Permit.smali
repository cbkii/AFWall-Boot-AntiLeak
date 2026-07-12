.class final Lorg/xbill/DNS/AsyncSemaphore$Permit;
.super Ljava/lang/Object;
.source "AsyncSemaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/AsyncSemaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Permit"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xbill/DNS/AsyncSemaphore;


# direct methods
.method constructor <init>(Lorg/xbill/DNS/AsyncSemaphore;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/xbill/DNS/AsyncSemaphore$Permit;->this$0:Lorg/xbill/DNS/AsyncSemaphore;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/AsyncSemaphore$Permit;->this$0:Lorg/xbill/DNS/AsyncSemaphore;

    .line 20
    invoke-static {v0}, Lorg/xbill/DNS/AsyncSemaphore;->access$000(Lorg/xbill/DNS/AsyncSemaphore;)Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/AsyncSemaphore$Permit;->this$0:Lorg/xbill/DNS/AsyncSemaphore;

    .line 21
    invoke-static {v1}, Lorg/xbill/DNS/AsyncSemaphore;->access$000(Lorg/xbill/DNS/AsyncSemaphore;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/xbill/DNS/AsyncSemaphore$Permit;->this$0:Lorg/xbill/DNS/AsyncSemaphore;

    .line 23
    invoke-static {v1}, Lorg/xbill/DNS/AsyncSemaphore;->access$108(Lorg/xbill/DNS/AsyncSemaphore;)I

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v1, p0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)Z

    .line 27
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
