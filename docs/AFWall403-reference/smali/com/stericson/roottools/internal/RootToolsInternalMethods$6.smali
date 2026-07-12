.class Lcom/stericson/roottools/internal/RootToolsInternalMethods$6;
.super Lcom/stericson/rootshell/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/roottools/containers/Permissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/roottools/internal/RootToolsInternalMethods;


# direct methods
.method varargs constructor <init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$6;->this$0:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    .line 666
    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string v1, ""

    const-string v2, " "

    .line 672
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 673
    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 674
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void

    .line 678
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Line "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 681
    :try_start_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 682
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v2, v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Symlink found."

    .line 683
    invoke-static {v3}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 684
    array-length v3, v2

    sub-int/2addr v3, v0

    aget-object v0, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :catch_0
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$6;->this$0:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    .line 690
    invoke-virtual {v0, p2}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getPermissions(Ljava/lang/String;)Lcom/stericson/roottools/containers/Permissions;

    move-result-object v0

    sput-object v0, Lcom/stericson/roottools/internal/InternalVariables;->permissions:Lcom/stericson/roottools/containers/Permissions;

    .line 691
    sget-object v0, Lcom/stericson/roottools/internal/InternalVariables;->permissions:Lcom/stericson/roottools/containers/Permissions;

    if-eqz v0, :cond_2

    .line 692
    sget-object v0, Lcom/stericson/roottools/internal/InternalVariables;->permissions:Lcom/stericson/roottools/containers/Permissions;

    invoke-virtual {v0, v1}, Lcom/stericson/roottools/containers/Permissions;->setSymlink(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 695
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 699
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method
