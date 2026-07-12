.class Ldev/ukanth/ufirewall/InterfaceTracker$2;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "InterfaceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/InterfaceTracker;->applyBootRules(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$safeCtx:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/InterfaceTracker$2;->val$reason:Ljava/lang/String;

    iput-object p2, p0, Ldev/ukanth/ufirewall/InterfaceTracker$2;->val$safeCtx:Landroid/content/Context;

    .line 441
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2

    .line 444
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-nez p1, :cond_0

    .line 445
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/InterfaceTracker$2;->val$reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": applied rules at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AFWall"

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ldev/ukanth/ufirewall/InterfaceTracker$2;->val$safeCtx:Landroid/content/Context;

    .line 446
    new-instance v0, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    new-instance v1, Ldev/ukanth/ufirewall/InterfaceTracker$2$1;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/InterfaceTracker$2$1;-><init>(Ldev/ukanth/ufirewall/InterfaceTracker$2;)V

    .line 447
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    .line 446
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api;->applyDefaultChains(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 457
    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->setRulesUpToDate(Z)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/InterfaceTracker$2;->val$safeCtx:Landroid/content/Context;

    .line 458
    new-instance v0, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    new-instance v1, Ldev/ukanth/ufirewall/InterfaceTracker$2$2;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/InterfaceTracker$2$2;-><init>(Ldev/ukanth/ufirewall/InterfaceTracker$2;)V

    .line 459
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    const/4 v1, 0x1

    .line 458
    invoke-static {p1, v1, v0}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    :goto_0
    return-void
.end method
