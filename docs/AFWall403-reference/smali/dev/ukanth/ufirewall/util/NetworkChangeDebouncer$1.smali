.class Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer$1;
.super Ljava/lang/Object;
.source "NetworkChangeDebouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->scheduleNetworkChange(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "AFWall"

    const-string v1, "Rules currently being applied, retrying in 500ms (attempt "

    const-string v2, "Error applying rules after debounce: "

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 102
    :try_start_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetlatestContext()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 103
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetlatestReason()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 107
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->isRulesBeingApplied()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 108
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetretryCount()I

    move-result v8

    if-ge v8, v4, :cond_2

    .line 109
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetretryCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfputretryCount(I)V

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetretryCount()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgethandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetretryCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetretryCount()I

    move-result v0

    if-lt v0, v4, :cond_1

    .line 141
    :cond_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetisScheduled()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetpendingRunnable()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string v1, "Max retry attempts reached, forcing rule application"

    .line 115
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetlastChangeTimestamp()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 120
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetcoalescedCount()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, "Applying rules after debounce ("

    if-lez v1, :cond_4

    .line 121
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms, "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetcoalescedCount()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " changes coalesced): "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms): "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    invoke-static {v6, v7}, Ldev/ukanth/ufirewall/InterfaceTracker;->applyRulesOnChange(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    invoke-static {v5}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfputcoalescedCount(I)V

    .line 132
    invoke-static {v5}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfputretryCount(I)V

    goto :goto_1

    :cond_5
    const-string v1, "Cannot apply rules: context or reason is null"

    .line 134
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :goto_1
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetretryCount()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetretryCount()I

    move-result v0

    if-lt v0, v4, :cond_7

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 137
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetretryCount()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetretryCount()I

    move-result v0

    if-lt v0, v4, :cond_7

    .line 141
    :cond_6
    :goto_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetisScheduled()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetpendingRunnable()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_7
    return-void

    .line 140
    :goto_3
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetretryCount()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetretryCount()I

    move-result v1

    if-lt v1, v4, :cond_9

    .line 141
    :cond_8
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetisScheduled()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    invoke-static {}, Ldev/ukanth/ufirewall/util/NetworkChangeDebouncer;->-$$Nest$sfgetpendingRunnable()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 144
    :cond_9
    throw v0
.end method
