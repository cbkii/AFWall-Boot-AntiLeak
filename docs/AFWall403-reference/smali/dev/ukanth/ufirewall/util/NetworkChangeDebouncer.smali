.class public Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;
.super Ljava/lang/Object;
.source "NetworkChangeDebouncer.java"


# static fields
.field private static final DEFAULT_DEBOUNCE_DELAY_MS:J = 0x7d0L

.field private static final MAX_RETRY_ATTEMPTS:I = 0xa

.field private static final RETRY_DELAY_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "AFWall"

.field private static volatile coalescedCount:I

.field private static final handler:Landroid/os/Handler;

.field private static final isScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile lastChangeTimestamp:J

.field private static final latestContext:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final latestReason:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final pendingRunnable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile retryCount:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetcoalescedCount()I
    .locals 1

    sget v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->coalescedCount:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgethandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetisScheduled()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->isScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetlastChangeTimestamp()J
    .locals 2

    sget-wide v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->lastChangeTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetlatestContext()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->latestContext:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetlatestReason()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->latestReason:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpendingRunnable()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->pendingRunnable:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetretryCount()I
    .locals 1

    sget v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->retryCount:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputcoalescedCount(I)V
    .locals 0

    sput p0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->coalescedCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputretryCount(I)V
    .locals 0

    sput p0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->retryCount:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->handler:Landroid/os/Handler;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->pendingRunnable:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->latestReason:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->latestContext:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->isScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput v1, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->retryCount:I

    const-wide/16 v2, 0x0

    sput-wide v2, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->lastChangeTimestamp:J

    sput v1, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->coalescedCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cancelPendingJob()V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->pendingRunnable:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v1, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->handler:Landroid/os/Handler;

    .line 160
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "AFWall"

    const-string v1, "Cancelled pending network change job"

    .line 161
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->isScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static clear()V
    .locals 2

    .line 211
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->cancelPendingJob()V

    sget-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->latestContext:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 212
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->latestReason:Ljava/util/concurrent/atomic/AtomicReference;

    .line 213
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->coalescedCount:I

    sput v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->retryCount:I

    const-string v0, "AFWall"

    const-string v1, "Cleared all pending network change jobs"

    .line 216
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static flushPending()V
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->pendingRunnable:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 198
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v1, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->handler:Landroid/os/Handler;

    .line 200
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "AFWall"

    const-string v2, "Flushing pending network change job immediately"

    .line 201
    invoke-static {v1, v2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static getDebounceDelay()J
    .locals 4

    .line 184
    :try_start_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getNetworkDebounceDelay()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error reading debounce delay preference: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFWall"

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static isPending()Z
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->isScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static scheduleNetworkChange(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 77
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->cancelPendingJob()V

    sget-object v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->latestContext:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object p0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->latestReason:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->lastChangeTimestamp:J

    .line 85
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->getDebounceDelay()J

    move-result-wide v0

    sget-object p0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->isScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "AFWall"

    if-eqz v2, :cond_0

    sget v2, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->coalescedCount:I

    add-int/2addr v2, v3

    sput v2, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->coalescedCount:I

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Network change coalesced (total: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->coalescedCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    sput v2, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->coalescedCount:I

    sput v2, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->retryCount:I

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Network change scheduled with "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms delay: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    new-instance p1, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer$1;

    invoke-direct {p1}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer$1;-><init>()V

    sget-object v2, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->pendingRunnable:Ljava/util/concurrent/atomic/AtomicReference;

    .line 149
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->handler:Landroid/os/Handler;

    .line 151
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
