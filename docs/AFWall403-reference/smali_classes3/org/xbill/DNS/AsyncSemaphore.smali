.class final Lorg/xbill/DNS/AsyncSemaphore;
.super Ljava/lang/Object;
.source "AsyncSemaphore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/AsyncSemaphore$Permit;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private volatile permits:I

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lorg/xbill/DNS/AsyncSemaphore$Permit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final singletonPermit:Lorg/xbill/DNS/AsyncSemaphore$Permit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/AsyncSemaphore;

    .line 12
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/AsyncSemaphore;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/AsyncSemaphore;->queue:Ljava/util/Queue;

    .line 15
    new-instance v0, Lorg/xbill/DNS/AsyncSemaphore$Permit;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/AsyncSemaphore$Permit;-><init>(Lorg/xbill/DNS/AsyncSemaphore;)V

    iput-object v0, p0, Lorg/xbill/DNS/AsyncSemaphore;->singletonPermit:Lorg/xbill/DNS/AsyncSemaphore$Permit;

    iput p1, p0, Lorg/xbill/DNS/AsyncSemaphore;->permits:I

    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/AsyncSemaphore;)Ljava/util/Queue;
    .locals 0

    .line 13
    iget-object p0, p0, Lorg/xbill/DNS/AsyncSemaphore;->queue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$108(Lorg/xbill/DNS/AsyncSemaphore;)I
    .locals 2

    .line 13
    iget v0, p0, Lorg/xbill/DNS/AsyncSemaphore;->permits:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/xbill/DNS/AsyncSemaphore;->permits:I

    return v0
.end method


# virtual methods
.method acquire(Ljava/time/Duration;)Ljava/util/concurrent/CompletionStage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/AsyncSemaphore$Permit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/AsyncSemaphore;->queue:Ljava/util/Queue;

    .line 36
    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/xbill/DNS/AsyncSemaphore;->permits:I

    if-lez v1, :cond_0

    iget p1, p0, Lorg/xbill/DNS/AsyncSemaphore;->permits:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/xbill/DNS/AsyncSemaphore;->permits:I

    iget-object p1, p0, Lorg/xbill/DNS/AsyncSemaphore;->singletonPermit:Lorg/xbill/DNS/AsyncSemaphore$Permit;

    .line 39
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 41
    :cond_0
    new-instance v1, Lorg/xbill/DNS/TimeoutCompletableFuture;

    invoke-direct {v1}, Lorg/xbill/DNS/TimeoutCompletableFuture;-><init>()V

    .line 42
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;)J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p1}, Lorg/xbill/DNS/TimeoutCompletableFuture;->compatTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance v2, Lorg/xbill/DNS/AsyncSemaphore$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lorg/xbill/DNS/AsyncSemaphore$$ExternalSyntheticLambda3;-><init>(Lorg/xbill/DNS/AsyncSemaphore;Lorg/xbill/DNS/TimeoutCompletableFuture;)V

    .line 43
    invoke-static {p1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    iget-object p1, p0, Lorg/xbill/DNS/AsyncSemaphore;->queue:Ljava/util/Queue;

    .line 44
    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 45
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method synthetic lambda$acquire$0$org-xbill-DNS-AsyncSemaphore(Lorg/xbill/DNS/TimeoutCompletableFuture;Lorg/xbill/DNS/AsyncSemaphore$Permit;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    iget-object p2, p0, Lorg/xbill/DNS/AsyncSemaphore;->queue:Ljava/util/Queue;

    .line 43
    invoke-interface {p2, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
