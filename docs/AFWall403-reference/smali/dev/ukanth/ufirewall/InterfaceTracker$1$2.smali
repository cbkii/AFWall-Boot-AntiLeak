.class Ldev/ukanth/ufirewall/InterfaceTracker$1$2;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "InterfaceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/InterfaceTracker$1;->cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/InterfaceTracker$1;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/InterfaceTracker$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/InterfaceTracker$1$2;->this$0:Ldev/ukanth/ufirewall/InterfaceTracker$1;

    .line 407
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 3

    .line 410
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    const-string v0, "AFWall"

    if-nez p1, :cond_0

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldev/ukanth/ufirewall/InterfaceTracker$1$2;->this$0:Ldev/ukanth/ufirewall/InterfaceTracker$1;

    iget-object v1, v1, Ldev/ukanth/ufirewall/InterfaceTracker$1;->val$reason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": applied rules at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldev/ukanth/ufirewall/InterfaceTracker$1$2;->this$0:Ldev/ukanth/ufirewall/InterfaceTracker$1;

    iget-object v1, v1, Ldev/ukanth/ufirewall/InterfaceTracker$1;->val$reason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": applySavedIptablesRules() returned an error"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ldev/ukanth/ufirewall/InterfaceTracker$1$2;->this$0:Ldev/ukanth/ufirewall/InterfaceTracker$1;

    .line 414
    iget-object p1, p1, Ldev/ukanth/ufirewall/InterfaceTracker$1;->val$safeCtx:Landroid/content/Context;

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->errorNotification(Landroid/content/Context;)V

    :goto_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/InterfaceTracker$1$2;->this$0:Ldev/ukanth/ufirewall/InterfaceTracker$1;

    .line 416
    iget-object p1, p1, Ldev/ukanth/ufirewall/InterfaceTracker$1;->val$safeCtx:Landroid/content/Context;

    new-instance v0, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v1, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 417
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/InterfaceTracker$1$2$1;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/InterfaceTracker$1$2$1;-><init>(Ldev/ukanth/ufirewall/InterfaceTracker$1$2;)V

    .line 418
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    .line 416
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api;->applyDefaultChains(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method
