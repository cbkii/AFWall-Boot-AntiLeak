.class Ldev/ukanth/ufirewall/Api$3;
.super Lcom/stericson/rootshell/execution/Command;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/Api;->executeFallbackShellCommand(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completed:[Z

.field final synthetic val$output:Ljava/util/List;


# direct methods
.method varargs constructor <init>(I[Ljava/lang/String;[ZLjava/util/List;)V
    .locals 0

    iput-object p3, p0, Ldev/ukanth/ufirewall/Api$3;->val$completed:[Z

    iput-object p4, p0, Ldev/ukanth/ufirewall/Api$3;->val$output:Ljava/util/List;

    .line 4252
    invoke-direct {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 1

    .line 4255
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandCompleted(II)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/Api$3;->val$completed:[Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 4256
    aput-boolean v0, p1, p2

    return-void
.end method

.method public commandOutput(ILjava/lang/String;)V
    .locals 0

    .line 4261
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/Api$3;->val$output:Ljava/util/List;

    .line 4263
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
