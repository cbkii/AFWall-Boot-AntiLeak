.class Lcom/stericson/roottools/internal/RootToolsInternalMethods$10;
.super Lcom/stericson/rootshell/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;
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

    iput-object p1, p0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$10;->this$0:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    .line 947
    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 6

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 951
    invoke-static {p2}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    const-string v0, " "

    .line 953
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 954
    sget-object v1, Lcom/stericson/roottools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    new-instance v2, Lcom/stericson/roottools/containers/Symlink;

    new-instance v3, Ljava/io/File;

    array-length v4, v0

    add-int/lit8 v4, v4, -0x3

    aget-object v4, v0, v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v0, v5

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/stericson/roottools/containers/Symlink;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method
