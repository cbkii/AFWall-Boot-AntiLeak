.class Lcom/stericson/roottools/internal/RootToolsInternalMethods$4;
.super Lcom/stericson/rootshell/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

.field final synthetic val$version:Ljava/lang/StringBuilder;


# direct methods
.method varargs constructor <init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$4;->this$0:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    iput-object p5, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$4;->val$version:Ljava/lang/StringBuilder;

    .line 530
    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 4

    .line 533
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Version Output: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    const-string v0, " "

    .line 540
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 542
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v1, v0, v2

    const-string v3, "v1."

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$4;->val$version:Ljava/lang/StringBuilder;

    .line 544
    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found Version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$4;->val$version:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 549
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method
