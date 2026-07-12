.class public Ldev/ukanth/ufirewall/service/RulesApplyService;
.super Landroid/app/IntentService;
.source "RulesApplyService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Ldev/ukanth/ufirewall/service/RulesApplyService;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .line 26
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->activeRules()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AFWall"

    const-string v0, "Applying rules on connectivity change"

    .line 28
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "CONNECTIVITY_CHANGE"

    .line 29
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/InterfaceTracker;->applyRulesOnChange(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ldev/ukanth/ufirewall/service/LogService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_2
    :goto_0
    return-void
.end method
