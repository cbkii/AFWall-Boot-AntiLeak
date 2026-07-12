.class Lcom/stericson/rootshell/RootShell$2;
.super Lcom/stericson/rootshell/execution/Command;
.source "RootShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/rootshell/RootShell;->exists(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Ljava/util/List;


# direct methods
.method varargs constructor <init>(IZ[Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p4, p0, Lcom/stericson/rootshell/RootShell$2;->val$result:Ljava/util/List;

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 1

    .line 159
    invoke-static {p2}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stericson/rootshell/RootShell$2;->val$result:Ljava/util/List;

    .line 160
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method
