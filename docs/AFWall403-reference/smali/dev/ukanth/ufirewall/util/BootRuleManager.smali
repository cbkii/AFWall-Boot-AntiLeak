.class public Ldev/ukanth/ufirewall/util/BootRuleManager;
.super Ljava/lang/Object;
.source "BootRuleManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AFWall.BootRuleManager"

.field private static final bootHandler:Landroid/os/Handler;

.field private static final delayedBootRulesScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final delayedBootRunnable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final initialBootRulesApplied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final isBootInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final ruleApplicationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->isBootInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->initialBootRulesApplied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->delayedBootRulesScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->delayedBootRunnable:Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->bootHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->ruleApplicationLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyInitialBootRules(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Applying initial boot rules"

    const-string v1, "AFWall.BootRuleManager"

    .line 96
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 98
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/InterfaceTracker;->getCurrentCfg(Landroid/content/Context;Z)Ldev/ukanth/ufirewall/InterfaceDetails;

    const-string v2, "BOOT_COMPLETED_INITIAL"

    .line 100
    invoke-static {p0, v2}, Ldev/ukanth/ufirewall/InterfaceTracker;->applyBootRules(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Ldev/ukanth/ufirewall/util/BootRuleManager;->initialBootRulesApplied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "Initial boot rules applied"

    .line 103
    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static cancelDelayedBootRules()V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->delayedBootRunnable:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v1, Ldev/ukanth/ufirewall/util/BootRuleManager;->bootHandler:Landroid/os/Handler;

    .line 145
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "AFWall.BootRuleManager"

    const-string v1, "Cancelled existing delayed boot rules"

    .line 146
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->delayedBootRulesScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static checkFixLeakScript(Landroid/content/Context;)V
    .locals 3

    const-string v0, "AFWall.BootRuleManager"

    .line 81
    :try_start_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->initPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->fixLeak()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Checking fix leak script requirement"

    .line 82
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "afwallstart"

    .line 83
    invoke-static {p0, v1}, Ldev/ukanth/ufirewall/Api;->checkAndCopyFixLeak(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Fix leak script not required - skipping"

    .line 85
    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error checking fix leak script: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static forceCompleteBootRuleApplication()V
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->ruleApplicationLock:Ljava/lang/Object;

    .line 194
    monitor-enter v0

    :try_start_0
    const-string v1, "AFWall.BootRuleManager"

    const-string v2, "Forcing completion of boot rule application"

    .line 195
    invoke-static {v1, v2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Ldev/ukanth/ufirewall/util/BootRuleManager;->cancelDelayedBootRules()V

    .line 197
    invoke-static {}, Ldev/ukanth/ufirewall/util/BootRuleManager;->markBootComplete()V

    .line 198
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getBootState()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ldev/ukanth/ufirewall/util/BootRuleManager;->isBootInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 213
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ldev/ukanth/ufirewall/util/BootRuleManager;->initialBootRulesApplied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 214
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ldev/ukanth/ufirewall/util/BootRuleManager;->delayedBootRulesScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 215
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Boot in progress: %s, Initial rules applied: %s, Delayed rules scheduled: %s"

    .line 212
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initializeBootRuleApplication(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->ruleApplicationLock:Ljava/lang/Object;

    .line 49
    monitor-enter v0

    :try_start_0
    const-string v1, "AFWall.BootRuleManager"

    const-string v2, "Initializing boot rule application"

    .line 50
    invoke-static {v1, v2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ldev/ukanth/ufirewall/util/BootRuleManager;->isBootInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Ldev/ukanth/ufirewall/util/BootRuleManager;->initialBootRulesApplied:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Ldev/ukanth/ufirewall/util/BootRuleManager;->delayedBootRulesScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    invoke-static {}, Ldev/ukanth/ufirewall/util/BootRuleManager;->cancelDelayedBootRules()V

    .line 61
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/BootRuleManager;->checkFixLeakScript(Landroid/content/Context;)V

    .line 64
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/BootRuleManager;->applyInitialBootRules(Landroid/content/Context;)V

    .line 67
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->startupDelay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/BootRuleManager;->scheduleDelayedBootRules(Landroid/content/Context;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/BootRuleManager;->markBootComplete()V

    .line 73
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isBootInProgress()Z
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->isBootInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 205
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$scheduleDelayedBootRules$0(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Error applying delayed boot rules: "

    sget-object v1, Ldev/ukanth/ufirewall/util/BootRuleManager;->ruleApplicationLock:Ljava/lang/Object;

    .line 115
    monitor-enter v1

    :try_start_0
    sget-object v2, Ldev/ukanth/ufirewall/util/BootRuleManager;->isBootInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AFWall.BootRuleManager"

    const-string v3, "Applying delayed boot rules"

    .line 117
    invoke-static {v2, v3}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    .line 120
    :try_start_1
    invoke-static {p0, v2}, Ldev/ukanth/ufirewall/InterfaceTracker;->getCurrentCfg(Landroid/content/Context;Z)Ldev/ukanth/ufirewall/InterfaceDetails;

    const-string v2, "BOOT_COMPLETED_DELAYED"

    .line 121
    invoke-static {p0, v2}, Ldev/ukanth/ufirewall/InterfaceTracker;->applyBootRules(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "AFWall.BootRuleManager"

    const-string v2, "Delayed boot rules applied successfully"

    .line 122
    invoke-static {p0, v2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :goto_0
    :try_start_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/BootRuleManager;->markBootComplete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    const-string v2, "AFWall.BootRuleManager"

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 126
    :goto_1
    :try_start_4
    invoke-static {}, Ldev/ukanth/ufirewall/util/BootRuleManager;->markBootComplete()V

    .line 127
    throw p0

    :cond_0
    const-string p0, "AFWall.BootRuleManager"

    const-string v0, "Boot process already completed, skipping delayed rules"

    .line 129
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_2
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private static markBootComplete()V
    .locals 2

    const-string v0, "AFWall.BootRuleManager"

    const-string v1, "Boot rule application process completed"

    .line 155
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->isBootInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->delayedBootRulesScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->delayedBootRunnable:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static scheduleDelayedBootRules(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Ldev/ukanth/ufirewall/util/BootRuleManager;->delayedBootRulesScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getCustomDelay()I

    move-result v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheduling delayed boot rules in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AFWall.BootRuleManager"

    invoke-static {v2, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v1, Ldev/ukanth/ufirewall/util/BootRuleManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/util/BootRuleManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    sget-object p0, Ldev/ukanth/ufirewall/util/BootRuleManager;->delayedBootRunnable:Ljava/util/concurrent/atomic/AtomicReference;

    .line 134
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object p0, Ldev/ukanth/ufirewall/util/BootRuleManager;->bootHandler:Landroid/os/Handler;

    int-to-long v2, v0

    .line 135
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static shouldProcessNetworkChange(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    sget-object p0, Ldev/ukanth/ufirewall/util/BootRuleManager;->isBootInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 166
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Ldev/ukanth/ufirewall/util/BootRuleManager;->initialBootRulesApplied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    const-string v1, "AFWall.BootRuleManager"

    if-nez p0, :cond_1

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring network change ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") - initial boot rules not yet applied"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object p0, Ldev/ukanth/ufirewall/util/BootRuleManager;->delayedBootRulesScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 179
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Network change during boot delay period ("

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") - allowing limited processing"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method
