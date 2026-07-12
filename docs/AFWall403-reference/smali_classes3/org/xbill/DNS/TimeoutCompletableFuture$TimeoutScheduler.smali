.class final Lorg/xbill/DNS/TimeoutCompletableFuture$TimeoutScheduler;
.super Ljava/lang/Object;
.source "TimeoutCompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/TimeoutCompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeoutScheduler"
.end annotation


# static fields
.field private static final executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/xbill/DNS/TimeoutCompletableFuture$TimeoutScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/xbill/DNS/TimeoutCompletableFuture$TimeoutScheduler$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lorg/xbill/DNS/TimeoutCompletableFuture$TimeoutScheduler;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 90
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/TimeoutCompletableFuture$TimeoutScheduler;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 85
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string p0, "dnsjava AsyncSemaphoreTimeoutScheduler"

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
