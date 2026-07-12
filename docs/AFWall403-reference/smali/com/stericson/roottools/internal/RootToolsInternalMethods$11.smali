.class Lcom/stericson/roottools/internal/RootToolsInternalMethods$11;
.super Lcom/stericson/rootshell/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/roottools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

.field final synthetic val$box:Ljava/lang/String;

.field final synthetic val$util:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$11;->this$0:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    iput-object p5, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$11;->val$box:Ljava/lang/String;

    iput-object p6, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$11;->val$util:Ljava/lang/String;

    .line 1037
    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$11;->val$box:Ljava/lang/String;

    const-string v1, "toolbox"

    .line 1041
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "no such tool"

    .line 1042
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1043
    sput-boolean v1, Lcom/stericson/roottools/internal/InternalVariables;->found:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$11;->val$box:Ljava/lang/String;

    const-string v2, "busybox"

    .line 1045
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$11;->val$util:Ljava/lang/String;

    .line 1047
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Found util!"

    .line 1048
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 1049
    sput-boolean v1, Lcom/stericson/roottools/internal/InternalVariables;->found:Z

    .line 1053
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method
