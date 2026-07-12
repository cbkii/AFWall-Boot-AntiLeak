.class Lcom/stericson/roottools/internal/RootToolsInternalMethods$12;
.super Lcom/stericson/rootshell/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/roottools/internal/RootToolsInternalMethods;->isProcessRunning(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

.field final synthetic val$processName:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$12;->this$0:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    iput-object p5, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$12;->val$processName:Ljava/lang/String;

    .line 1157
    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$12;->val$processName:Ljava/lang/String;

    .line 1160
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1161
    sput-boolean v0, Lcom/stericson/roottools/internal/InternalVariables;->processRunning:Z

    .line 1164
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method
